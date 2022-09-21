
library(sparklyr)
library(dplyr)
library(modeldata)


data("small_fine_foods")

sc <- spark_connect(master = "local", version = "3.3")

sff_training_data <- copy_to(sc, training_data)
sff_testing_data <- copy_to(sc, testing_data)

sff_pipeline <- ml_pipeline(sc) %>% 
  ft_tokenizer(
    input_col = "review",
    output_col = "word_list"
  ) %>% 
  ft_stop_words_remover(
    input_col = "word_list", 
    output_col = "wo_stop_words"
    ) %>% 
  ft_hashing_tf(
    input_col = "wo_stop_words", 
    output_col = "hashed_features", 
    binary = TRUE, 
    num_features = 1024
    ) %>%
  ft_normalizer(
    input_col = "hashed_features", 
    output_col = "normal_features"
    ) %>% 
  ft_r_formula(score ~ normal_features) %>% 
  ml_logistic_regression()

sff_pipeline

sff_grid <-  list(
    hashing_tf = list(
      num_features = 2^c(8, 10, 12)  
    ),
    logistic_regression = list(
      elastic_net_param = 10^seq(-3, 0, length = 20), 
      reg_param = seq(0, 1, length = 5)    
    )
  )

sff_grid

sff_evaluator <- ml_binary_classification_evaluator(sc)

sff_cv <- ml_cross_validator(
  x = sc,
  estimator = sff_pipeline, 
  estimator_param_maps = sff_grid,
  evaluator = sff_evaluator,
  num_folds = 3,
  parallelism = 4,
  seed = 100
)

sff_cv

sff_model <- ml_fit(
  x = sff_cv, 
  dataset = sff_training_data
  )

sff_metrics <- ml_validation_metrics(sff_model)

library(dplyr)

sff_metrics %>% 
  arrange(desc(areaUnderROC)) %>% 
  head()

library(ggplot2)

sff_metrics %>% 
  mutate(reg_param_1 = as.factor(reg_param_1)) %>% 
  ggplot(aes(
    x = elastic_net_param_1, 
    y = areaUnderROC, 
    color = reg_param_1
    )) +
  geom_line() +
  geom_point(size = 0.5) +
  scale_x_continuous(trans = "log10") +
  facet_wrap(~ num_features_2) +
  theme_light(base_size = 9)

new_sff_pipeline <- ml_pipeline(sc) %>% 
  ft_tokenizer(
    input_col = "review",
    output_col = "word_list"
  ) %>% 
  ft_stop_words_remover(
    input_col = "word_list", 
    output_col = "wo_stop_words"
    ) %>% 
  ft_hashing_tf(
    input_col = "wo_stop_words", 
    output_col = "hashed_features", 
    binary = TRUE, 
    num_features = 4096      
    ) %>%
  ft_normalizer(
    input_col = "hashed_features", 
    output_col = "normal_features"
    ) %>% 
  ft_r_formula(score ~ normal_features) %>% 
  ml_logistic_regression(
    elastic_net_param = 0.05,
    reg_param = 0.25  
    )

new_sff_fitted <- new_sff_pipeline %>% 
  ml_fit(sff_training_data)

new_sff_fitted %>% 
  ml_transform(sff_testing_data) %>% 
  ml_metrics_binary()

spark_disconnect(sc)
