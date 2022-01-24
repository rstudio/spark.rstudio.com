## Spark Operations

Function(s) | Description
------------- |----------------
[get_spark_sql_catalog_implementation()](/packages/sparklyr/latest/reference/get_spark_sql_catalog_implementation.html) | Retrieve the Spark connection's SQL catalog implementation property
[spark_config()](/packages/sparklyr/latest/reference/spark_config.html) | Read Spark Configuration
[spark_connect()](/packages/sparklyr/latest/reference/spark-connections.html) [spark_connection_is_open()](/packages/sparklyr/latest/reference/spark-connections.html) [spark_disconnect()](/packages/sparklyr/latest/reference/spark-connections.html) [spark_disconnect_all()](/packages/sparklyr/latest/reference/spark-connections.html) [spark_submit()](/packages/sparklyr/latest/reference/spark-connections.html) | Manage Spark Connections
[spark_install()](/packages/sparklyr/latest/reference/spark_install.html) [spark_uninstall()](/packages/sparklyr/latest/reference/spark_install.html) [spark_install_dir()](/packages/sparklyr/latest/reference/spark_install.html) [spark_install_tar()](/packages/sparklyr/latest/reference/spark_install.html) [spark_installed_versions()](/packages/sparklyr/latest/reference/spark_install.html) [spark_available_versions()](/packages/sparklyr/latest/reference/spark_install.html) | Download and install various versions of Spark
[spark_log()](/packages/sparklyr/latest/reference/spark_log.html) | View Entries in the Spark Log
[spark_web()](/packages/sparklyr/latest/reference/spark_web.html) | Open the Spark web interface
[connection_is_open()](/packages/sparklyr/latest/reference/connection_is_open.html) | Check whether the connection is open
[connection_spark_shinyapp()](/packages/sparklyr/latest/reference/connection_spark_shinyapp.html) | A Shiny app that can be used to construct a <code>spark_connect</code> statement
[spark_session_config()](/packages/sparklyr/latest/reference/spark_configuration.html) | Runtime configuration interface for the Spark Session
[spark_set_checkpoint_dir()](/packages/sparklyr/latest/reference/checkpoint_directory.html) [spark_get_checkpoint_dir()](/packages/sparklyr/latest/reference/checkpoint_directory.html) | Set/Get Spark checkpoint directory
[spark_table_name()](/packages/sparklyr/latest/reference/spark_table_name.html) | Generate a Table Name from Expression
[spark_version_from_home()](/packages/sparklyr/latest/reference/spark_version_from_home.html) | Get the Spark Version Associated with a Spark Installation
[spark_versions()](/packages/sparklyr/latest/reference/spark_versions.html) | Retrieves a dataframe available Spark versions that van be installed.
[spark_config_kubernetes()](/packages/sparklyr/latest/reference/spark_config_kubernetes.html) | Kubernetes Configuration
[spark_config_settings()](/packages/sparklyr/latest/reference/spark_config_settings.html) | Retrieve Available Settings
[spark_connection_find()](/packages/sparklyr/latest/reference/spark_connection_find.html) | Find Spark Connection
[spark_dependency_fallback()](/packages/sparklyr/latest/reference/spark_dependency_fallback.html) | Fallback to Spark Dependency
[spark_extension()](/packages/sparklyr/latest/reference/spark_extension.html) | Create Spark Extension
[spark_load_table()](/packages/sparklyr/latest/reference/spark_load_table.html) | Reads from a Spark Table into a Spark DataFrame.
[list_sparklyr_jars()](/packages/sparklyr/latest/reference/list_sparklyr_jars.html) | list all sparklyr-*.jar files that have been built
[spark_config_packages()](/packages/sparklyr/latest/reference/spark_config_packages.html) | Creates Spark Configuration
[spark_connection()](/packages/sparklyr/latest/reference/spark_connection.html) | Retrieve the Spark Connection Associated with an R Object
[spark_adaptive_query_execution()](/packages/sparklyr/latest/reference/spark_adaptive_query_execution.html) | Retrieves or sets status of Spark AQE
[spark_advisory_shuffle_partition_size()](/packages/sparklyr/latest/reference/spark_advisory_shuffle_partition_size.html) | Retrieves or sets advisory size of the shuffle partition
[spark_auto_broadcast_join_threshold()](/packages/sparklyr/latest/reference/spark_auto_broadcast_join_threshold.html) | Retrieves or sets the auto broadcast join threshold
[spark_coalesce_initial_num_partitions()](/packages/sparklyr/latest/reference/spark_coalesce_initial_num_partitions.html) | Retrieves or sets initial number of shuffle partitions before coalescing
[spark_coalesce_min_num_partitions()](/packages/sparklyr/latest/reference/spark_coalesce_min_num_partitions.html) | Retrieves or sets the minimum number of shuffle partitions after coalescing
[spark_coalesce_shuffle_partitions()](/packages/sparklyr/latest/reference/spark_coalesce_shuffle_partitions.html) | Retrieves or sets whether coalescing contiguous shuffle partitions is enabled

## Spark Data

Function(s) | Description
------------- |----------------
[spark_read()](/packages/sparklyr/latest/reference/spark_read.html) | Read file(s) into a Spark DataFrame using a custom reader
[spark_read_avro()](/packages/sparklyr/latest/reference/spark_read_avro.html) | Read Apache Avro data into a Spark DataFrame.
[spark_read_binary()](/packages/sparklyr/latest/reference/spark_read_binary.html) | Read binary data into a Spark DataFrame.
[spark_read_csv()](/packages/sparklyr/latest/reference/spark_read_csv.html) | Read a CSV file into a Spark DataFrame
[spark_read_delta()](/packages/sparklyr/latest/reference/spark_read_delta.html) | Read from Delta Lake into a Spark DataFrame.
[spark_read_image()](/packages/sparklyr/latest/reference/spark_read_image.html) | Read image data into a Spark DataFrame.
[spark_read_jdbc()](/packages/sparklyr/latest/reference/spark_read_jdbc.html) | Read from JDBC connection into a Spark DataFrame.
[spark_read_json()](/packages/sparklyr/latest/reference/spark_read_json.html) | Read a JSON file into a Spark DataFrame
[spark_read_libsvm()](/packages/sparklyr/latest/reference/spark_read_libsvm.html) | Read libsvm file into a Spark DataFrame.
[spark_read_parquet()](/packages/sparklyr/latest/reference/spark_read_parquet.html) | Read a Parquet file into a Spark DataFrame
[spark_read_source()](/packages/sparklyr/latest/reference/spark_read_source.html) | Read from a generic source into a Spark DataFrame.
[spark_read_table()](/packages/sparklyr/latest/reference/spark_read_table.html) | Reads from a Spark Table into a Spark DataFrame.
[spark_read_orc()](/packages/sparklyr/latest/reference/spark_read_orc.html) | Read a ORC file into a Spark DataFrame
[spark_read_text()](/packages/sparklyr/latest/reference/spark_read_text.html) | Read a Text file into a Spark DataFrame
[spark_save_table()](/packages/sparklyr/latest/reference/spark_save_table.html) | Saves a Spark DataFrame as a Spark table
[spark_write()](/packages/sparklyr/latest/reference/spark_write.html) | Write Spark DataFrame to file using a custom writer
[spark_write_avro()](/packages/sparklyr/latest/reference/spark_write_avro.html) | Serialize a Spark DataFrame into Apache Avro format
[spark_write_orc()](/packages/sparklyr/latest/reference/spark_write_orc.html) | Write a Spark DataFrame to a ORC file
[spark_write_text()](/packages/sparklyr/latest/reference/spark_write_text.html) | Write a Spark DataFrame to a Text file
[spark_write_csv()](/packages/sparklyr/latest/reference/spark_write_csv.html) | Write a Spark DataFrame to a CSV
[spark_write_delta()](/packages/sparklyr/latest/reference/spark_write_delta.html) | Writes a Spark DataFrame into Delta Lake
[spark_write_jdbc()](/packages/sparklyr/latest/reference/spark_write_jdbc.html) | Writes a Spark DataFrame into a JDBC table
[spark_write_json()](/packages/sparklyr/latest/reference/spark_write_json.html) | Write a Spark DataFrame to a JSON file
[spark_write_parquet()](/packages/sparklyr/latest/reference/spark_write_parquet.html) | Write a Spark DataFrame to a Parquet file
[spark_write_source()](/packages/sparklyr/latest/reference/spark_write_source.html) | Writes a Spark DataFrame into a generic source
[spark_write_table()](/packages/sparklyr/latest/reference/spark_write_table.html) | Writes a Spark DataFrame into a Spark table
[spark_write_rds()](/packages/sparklyr/latest/reference/spark_write_rds.html) | Write Spark DataFrame to RDS files
[collect_from_rds()](/packages/sparklyr/latest/reference/collect_from_rds.html) | Collect Spark data serialized in RDS format into R

## Spark Tables

Function(s) | Description
------------- |----------------
[src_databases()](/packages/sparklyr/latest/reference/src_databases.html) | Show database list
[tbl_cache()](/packages/sparklyr/latest/reference/tbl_cache.html) | Cache a Spark Table
[tbl_change_db()](/packages/sparklyr/latest/reference/tbl_change_db.html) | Use specific database
[tbl_uncache()](/packages/sparklyr/latest/reference/tbl_uncache.html) | Uncache a Spark Table

## Spark DataFrames

Function(s) | Description
------------- |----------------
[`[`(<i>&lt;tbl_spark&gt;</i>)](/packages/sparklyr/latest/reference/sub-.tbl_spark.html) | Subsetting operator for Spark dataframe
[copy_to(<i>&lt;spark_connection&gt;</i>)](/packages/sparklyr/latest/reference/copy_to.spark_connection.html) | Copy an R Data Frame to Spark
[sdf_along()](/packages/sparklyr/latest/reference/sdf_along.html) | Create DataFrame for along Object
[sdf_bind_rows()](/packages/sparklyr/latest/reference/sdf_bind.html) [sdf_bind_cols()](/packages/sparklyr/latest/reference/sdf_bind.html) | Bind multiple Spark DataFrames by row and column
[sdf_broadcast()](/packages/sparklyr/latest/reference/sdf_broadcast.html) | Broadcast hint
[sdf_checkpoint()](/packages/sparklyr/latest/reference/sdf_checkpoint.html) | Checkpoint a Spark DataFrame
[sdf_coalesce()](/packages/sparklyr/latest/reference/sdf_coalesce.html) | Coalesces a Spark DataFrame
[sdf_copy_to()](/packages/sparklyr/latest/reference/sdf_copy_to.html) [sdf_import()](/packages/sparklyr/latest/reference/sdf_copy_to.html) | Copy an Object into Spark
[sdf_distinct()](/packages/sparklyr/latest/reference/sdf_distinct.html) | Invoke distinct on a Spark DataFrame
[sdf_drop_duplicates()](/packages/sparklyr/latest/reference/sdf_drop_duplicates.html) | Remove duplicates from a Spark DataFrame
[sdf_expand_grid()](/packages/sparklyr/latest/reference/sdf_expand_grid.html) | Create a Spark dataframe containing all combinations of inputs
[sdf_from_avro()](/packages/sparklyr/latest/reference/sdf_from_avro.html) | Convert column(s) from avro format
[sdf_len()](/packages/sparklyr/latest/reference/sdf_len.html) | Create DataFrame for Length
[sdf_num_partitions()](/packages/sparklyr/latest/reference/sdf_num_partitions.html) | Gets number of partitions of a Spark DataFrame
[sdf_random_split()](/packages/sparklyr/latest/reference/sdf_random_split.html) [sdf_partition()](/packages/sparklyr/latest/reference/sdf_random_split.html) | Partition a Spark Dataframe
[sdf_partition_sizes()](/packages/sparklyr/latest/reference/sdf_partition_sizes.html) | Compute the number of records within each partition of a Spark DataFrame
[sdf_pivot()](/packages/sparklyr/latest/reference/sdf_pivot.html) | Pivot a Spark DataFrame
[sdf_predict()](/packages/sparklyr/latest/reference/sdf-transform-methods.html) [sdf_transform()](/packages/sparklyr/latest/reference/sdf-transform-methods.html) [sdf_fit()](/packages/sparklyr/latest/reference/sdf-transform-methods.html) [sdf_fit_and_transform()](/packages/sparklyr/latest/reference/sdf-transform-methods.html) | Spark ML -- Transform, fit, and predict methods (sdf_ interface)
[sdf_rbeta()](/packages/sparklyr/latest/reference/sdf_rbeta.html) | Generate random samples from a Beta distribution
[sdf_rbinom()](/packages/sparklyr/latest/reference/sdf_rbinom.html) | Generate random samples from a binomial distribution
[sdf_rcauchy()](/packages/sparklyr/latest/reference/sdf_rcauchy.html) | Generate random samples from a Cauchy distribution
[sdf_rchisq()](/packages/sparklyr/latest/reference/sdf_rchisq.html) | Generate random samples from a chi-squared distribution
[sdf_rexp()](/packages/sparklyr/latest/reference/sdf_rexp.html) | Generate random samples from an exponential distribution
[sdf_rgamma()](/packages/sparklyr/latest/reference/sdf_rgamma.html) | Generate random samples from a Gamma distribution
[sdf_rgeom()](/packages/sparklyr/latest/reference/sdf_rgeom.html) | Generate random samples from a geometric distribution
[sdf_rhyper()](/packages/sparklyr/latest/reference/sdf_rhyper.html) | Generate random samples from a hypergeometric distribution
[sdf_rlnorm()](/packages/sparklyr/latest/reference/sdf_rlnorm.html) | Generate random samples from a log normal distribution
[sdf_rnorm()](/packages/sparklyr/latest/reference/sdf_rnorm.html) | Generate random samples from the standard normal distribution
[sdf_rpois()](/packages/sparklyr/latest/reference/sdf_rpois.html) | Generate random samples from a Poisson distribution
[sdf_rt()](/packages/sparklyr/latest/reference/sdf_rt.html) | Generate random samples from a t-distribution
[sdf_runif()](/packages/sparklyr/latest/reference/sdf_runif.html) | Generate random samples from the uniform distribution U(0, 1).
[sdf_rweibull()](/packages/sparklyr/latest/reference/sdf_rweibull.html) | Generate random samples from a Weibull distribution.
[sdf_read_column()](/packages/sparklyr/latest/reference/sdf_read_column.html) | Read a Column from a Spark DataFrame
[sdf_register()](/packages/sparklyr/latest/reference/sdf_register.html) | Register a Spark DataFrame
[sdf_repartition()](/packages/sparklyr/latest/reference/sdf_repartition.html) | Repartition a Spark DataFrame
[sdf_residuals()](/packages/sparklyr/latest/reference/sdf_residuals.html) | Model Residuals
[sdf_sample()](/packages/sparklyr/latest/reference/sdf_sample.html) | Randomly Sample Rows from a Spark DataFrame
[sdf_separate_column()](/packages/sparklyr/latest/reference/sdf_separate_column.html) | Separate a Vector Column into Scalar Columns
[sdf_seq()](/packages/sparklyr/latest/reference/sdf_seq.html) | Create DataFrame for Range
[sdf_sort()](/packages/sparklyr/latest/reference/sdf_sort.html) | Sort a Spark DataFrame
[sdf_to_avro()](/packages/sparklyr/latest/reference/sdf_to_avro.html) | Convert column(s) to avro format
[sdf_with_unique_id()](/packages/sparklyr/latest/reference/sdf_with_unique_id.html) | Add a Unique ID Column to a Spark DataFrame
[sdf_collect()](/packages/sparklyr/latest/reference/sdf_collect.html) | Collect a Spark DataFrame into R.
[sdf_crosstab()](/packages/sparklyr/latest/reference/sdf_crosstab.html) | Cross Tabulation
[sdf_debug_string()](/packages/sparklyr/latest/reference/sdf_debug_string.html) | Debug Info for Spark DataFrame
[sdf_describe()](/packages/sparklyr/latest/reference/sdf_describe.html) | Compute summary statistics for columns of a data frame
[sdf_dim()](/packages/sparklyr/latest/reference/sdf_dim.html) [sdf_nrow()](/packages/sparklyr/latest/reference/sdf_dim.html) [sdf_ncol()](/packages/sparklyr/latest/reference/sdf_dim.html) | Support for Dimension Operations
[sdf_is_streaming()](/packages/sparklyr/latest/reference/sdf_is_streaming.html) | Spark DataFrame is Streaming
[sdf_last_index()](/packages/sparklyr/latest/reference/sdf_last_index.html) | Returns the last index of a Spark DataFrame
[sdf_save_table()](/packages/sparklyr/latest/reference/sdf-saveload.html) [sdf_load_table()](/packages/sparklyr/latest/reference/sdf-saveload.html) [sdf_save_parquet()](/packages/sparklyr/latest/reference/sdf-saveload.html) [sdf_load_parquet()](/packages/sparklyr/latest/reference/sdf-saveload.html) | Save / Load a Spark DataFrame
[sdf_persist()](/packages/sparklyr/latest/reference/sdf_persist.html) | Persist a Spark DataFrame
[sdf_project()](/packages/sparklyr/latest/reference/sdf_project.html) | Project features onto principal components
[sdf_quantile()](/packages/sparklyr/latest/reference/sdf_quantile.html) | Compute (Approximate) Quantiles with a Spark DataFrame
[sdf_schema()](/packages/sparklyr/latest/reference/sdf_schema.html) | Read the Schema of a Spark DataFrame
[sdf_sql()](/packages/sparklyr/latest/reference/sdf_sql.html) | Spark DataFrame from SQL
[sdf_unnest_longer()](/packages/sparklyr/latest/reference/sdf_unnest_longer.html) | Unnest longer
[sdf_unnest_wider()](/packages/sparklyr/latest/reference/sdf_unnest_wider.html) | Unnest wider
[sdf_with_sequential_id()](/packages/sparklyr/latest/reference/sdf_with_sequential_id.html) | Add a Sequential ID Column to a Spark DataFrame
[inner_join(<i>&lt;tbl_spark&gt;</i>)](/packages/sparklyr/latest/reference/join.tbl_spark.html) [left_join(<i>&lt;tbl_spark&gt;</i>)](/packages/sparklyr/latest/reference/join.tbl_spark.html) [right_join(<i>&lt;tbl_spark&gt;</i>)](/packages/sparklyr/latest/reference/join.tbl_spark.html) [full_join(<i>&lt;tbl_spark&gt;</i>)](/packages/sparklyr/latest/reference/join.tbl_spark.html) | Join Spark tbls.
[hof_aggregate()](/packages/sparklyr/latest/reference/hof_aggregate.html) | Apply Aggregate Function to Array Column
[hof_array_sort()](/packages/sparklyr/latest/reference/hof_array_sort.html) | Sorts array using a custom comparator
[hof_exists()](/packages/sparklyr/latest/reference/hof_exists.html) | Determine Whether Some Element Exists in an Array Column
[hof_filter()](/packages/sparklyr/latest/reference/hof_filter.html) | Filter Array Column
[hof_forall()](/packages/sparklyr/latest/reference/hof_forall.html) | Checks whether all elements in an array satisfy a predicate
[hof_map_filter()](/packages/sparklyr/latest/reference/hof_map_filter.html) | Filters a map
[hof_map_zip_with()](/packages/sparklyr/latest/reference/hof_map_zip_with.html) | Merges two maps into one
[hof_transform()](/packages/sparklyr/latest/reference/hof_transform.html) | Transform Array Column
[hof_transform_keys()](/packages/sparklyr/latest/reference/hof_transform_keys.html) | Transforms keys of a map
[hof_transform_values()](/packages/sparklyr/latest/reference/hof_transform_values.html) | Transforms values of a map
[hof_zip_with()](/packages/sparklyr/latest/reference/hof_zip_with.html) | Combines 2 Array Columns
[sdf_weighted_sample()](/packages/sparklyr/latest/reference/sdf_weighted_sample.html) | Perform Weighted Random Sampling on a Spark DataFrame
[transform_sdf()](/packages/sparklyr/latest/reference/transform_sdf.html) | transform a subset of column(s) in a Spark Dataframe

## Spark Machine Learning

Function(s) | Description
------------- |----------------
[ml_decision_tree_classifier()](/packages/sparklyr/latest/reference/ml_decision_tree.html) [ml_decision_tree()](/packages/sparklyr/latest/reference/ml_decision_tree.html) [ml_decision_tree_regressor()](/packages/sparklyr/latest/reference/ml_decision_tree.html) | Spark ML -- Decision Trees
[ml_generalized_linear_regression()](/packages/sparklyr/latest/reference/ml_generalized_linear_regression.html) | Spark ML -- Generalized Linear Regression
[ml_gbt_classifier()](/packages/sparklyr/latest/reference/ml_gradient_boosted_trees.html) [ml_gradient_boosted_trees()](/packages/sparklyr/latest/reference/ml_gradient_boosted_trees.html) [ml_gbt_regressor()](/packages/sparklyr/latest/reference/ml_gradient_boosted_trees.html) | Spark ML -- Gradient Boosted Trees
[ml_kmeans()](/packages/sparklyr/latest/reference/ml_kmeans.html) [ml_compute_cost()](/packages/sparklyr/latest/reference/ml_kmeans.html) [ml_compute_silhouette_measure()](/packages/sparklyr/latest/reference/ml_kmeans.html) | Spark ML -- K-Means Clustering
[ml_lda()](/packages/sparklyr/latest/reference/ml_lda.html) [ml_describe_topics()](/packages/sparklyr/latest/reference/ml_lda.html) [ml_log_likelihood()](/packages/sparklyr/latest/reference/ml_lda.html) [ml_log_perplexity()](/packages/sparklyr/latest/reference/ml_lda.html) [ml_topics_matrix()](/packages/sparklyr/latest/reference/ml_lda.html) | Spark ML -- Latent Dirichlet Allocation
[ml_linear_regression()](/packages/sparklyr/latest/reference/ml_linear_regression.html) | Spark ML -- Linear Regression
[ml_logistic_regression()](/packages/sparklyr/latest/reference/ml_logistic_regression.html) | Spark ML -- Logistic Regression
[ml_model_data()](/packages/sparklyr/latest/reference/ml_model_data.html) | Extracts data associated with a Spark ML model
[ml_multilayer_perceptron_classifier()](/packages/sparklyr/latest/reference/ml_multilayer_perceptron_classifier.html) [ml_multilayer_perceptron()](/packages/sparklyr/latest/reference/ml_multilayer_perceptron_classifier.html) | Spark ML -- Multilayer Perceptron
[ml_naive_bayes()](/packages/sparklyr/latest/reference/ml_naive_bayes.html) | Spark ML -- Naive-Bayes
[ml_one_vs_rest()](/packages/sparklyr/latest/reference/ml_one_vs_rest.html) | Spark ML -- OneVsRest
[ft_pca()](/packages/sparklyr/latest/reference/ft_pca.html) [ml_pca()](/packages/sparklyr/latest/reference/ft_pca.html) | Feature Transformation -- PCA (Estimator)
[ml_prefixspan()](/packages/sparklyr/latest/reference/ml_prefixspan.html) [ml_freq_seq_patterns()](/packages/sparklyr/latest/reference/ml_prefixspan.html) | Frequent Pattern Mining -- PrefixSpan
[ml_random_forest_classifier()](/packages/sparklyr/latest/reference/ml_random_forest.html) [ml_random_forest()](/packages/sparklyr/latest/reference/ml_random_forest.html) [ml_random_forest_regressor()](/packages/sparklyr/latest/reference/ml_random_forest.html) | Spark ML -- Random Forest
[ml_aft_survival_regression()](/packages/sparklyr/latest/reference/ml_aft_survival_regression.html) [ml_survival_regression()](/packages/sparklyr/latest/reference/ml_aft_survival_regression.html) | Spark ML -- Survival Regression
[ml_add_stage()](/packages/sparklyr/latest/reference/ml_add_stage.html) | Add a Stage to a Pipeline
[ml_als()](/packages/sparklyr/latest/reference/ml_als.html) [ml_recommend()](/packages/sparklyr/latest/reference/ml_als.html) | Spark ML -- ALS
[ml_approx_nearest_neighbors()](/packages/sparklyr/latest/reference/ft_lsh_utils.html) [ml_approx_similarity_join()](/packages/sparklyr/latest/reference/ft_lsh_utils.html) | Utility functions for LSH models
[ml_fpgrowth()](/packages/sparklyr/latest/reference/ml_fpgrowth.html) [ml_association_rules()](/packages/sparklyr/latest/reference/ml_fpgrowth.html) [ml_freq_itemsets()](/packages/sparklyr/latest/reference/ml_fpgrowth.html) | Frequent Pattern Mining -- FPGrowth
[ml_binary_classification_evaluator()](/packages/sparklyr/latest/reference/ml_evaluator.html) [ml_binary_classification_eval()](/packages/sparklyr/latest/reference/ml_evaluator.html) [ml_multiclass_classification_evaluator()](/packages/sparklyr/latest/reference/ml_evaluator.html) [ml_classification_eval()](/packages/sparklyr/latest/reference/ml_evaluator.html) [ml_regression_evaluator()](/packages/sparklyr/latest/reference/ml_evaluator.html) | Spark ML - Evaluators
[ml_bisecting_kmeans()](/packages/sparklyr/latest/reference/ml_bisecting_kmeans.html) | Spark ML -- Bisecting K-Means Clustering
[ml_call_constructor()](/packages/sparklyr/latest/reference/ml_call_constructor.html) | Wrap a Spark ML JVM object
[ml_chisquare_test()](/packages/sparklyr/latest/reference/ml_chisquare_test.html) | Chi-square hypothesis testing for categorical data.
[ml_clustering_evaluator()](/packages/sparklyr/latest/reference/ml_clustering_evaluator.html) | Spark ML - Clustering Evaluator
[ml_supervised_pipeline()](/packages/sparklyr/latest/reference/ml-model-constructors.html) [ml_clustering_pipeline()](/packages/sparklyr/latest/reference/ml-model-constructors.html) [ml_construct_model_supervised()](/packages/sparklyr/latest/reference/ml-model-constructors.html) [ml_construct_model_clustering()](/packages/sparklyr/latest/reference/ml-model-constructors.html) [new_ml_model_prediction()](/packages/sparklyr/latest/reference/ml-model-constructors.html) [new_ml_model()](/packages/sparklyr/latest/reference/ml-model-constructors.html) [new_ml_model_classification()](/packages/sparklyr/latest/reference/ml-model-constructors.html) [new_ml_model_regression()](/packages/sparklyr/latest/reference/ml-model-constructors.html) [new_ml_model_clustering()](/packages/sparklyr/latest/reference/ml-model-constructors.html) | Constructors for `ml_model` Objects
[ml_corr()](/packages/sparklyr/latest/reference/ml_corr.html) | Compute correlation matrix
[ml_sub_models()](/packages/sparklyr/latest/reference/ml-tuning.html) [ml_validation_metrics()](/packages/sparklyr/latest/reference/ml-tuning.html) [ml_cross_validator()](/packages/sparklyr/latest/reference/ml-tuning.html) [ml_train_validation_split()](/packages/sparklyr/latest/reference/ml-tuning.html) | Spark ML -- Tuning
[ml_default_stop_words()](/packages/sparklyr/latest/reference/ml_default_stop_words.html) | Default stop words
[ml_evaluate()](/packages/sparklyr/latest/reference/ml_evaluate.html) | Evaluate the Model on a Validation Set
[ml_feature_importances()](/packages/sparklyr/latest/reference/ml_feature_importances.html) [ml_tree_feature_importance()](/packages/sparklyr/latest/reference/ml_feature_importances.html) | Spark ML - Feature Importance for Tree Models
[ft_word2vec()](/packages/sparklyr/latest/reference/ft_word2vec.html) [ml_find_synonyms()](/packages/sparklyr/latest/reference/ft_word2vec.html) | Feature Transformation -- Word2Vec (Estimator)
[is_ml_transformer()](/packages/sparklyr/latest/reference/ml-transform-methods.html) [is_ml_estimator()](/packages/sparklyr/latest/reference/ml-transform-methods.html) [ml_fit()](/packages/sparklyr/latest/reference/ml-transform-methods.html) [ml_transform()](/packages/sparklyr/latest/reference/ml-transform-methods.html) [ml_fit_and_transform()](/packages/sparklyr/latest/reference/ml-transform-methods.html) [ml_predict()](/packages/sparklyr/latest/reference/ml-transform-methods.html) | Spark ML -- Transform, fit, and predict methods (ml_ interface)
[ml_gaussian_mixture()](/packages/sparklyr/latest/reference/ml_gaussian_mixture.html) | Spark ML -- Gaussian Mixture clustering.
[ml_is_set()](/packages/sparklyr/latest/reference/ml-params.html) [ml_param_map()](/packages/sparklyr/latest/reference/ml-params.html) [ml_param()](/packages/sparklyr/latest/reference/ml-params.html) [ml_params()](/packages/sparklyr/latest/reference/ml-params.html) | Spark ML -- ML Params
[ml_isotonic_regression()](/packages/sparklyr/latest/reference/ml_isotonic_regression.html) | Spark ML -- Isotonic Regression
[ft_string_indexer()](/packages/sparklyr/latest/reference/ft_string_indexer.html) [ml_labels()](/packages/sparklyr/latest/reference/ft_string_indexer.html) [ft_string_indexer_model()](/packages/sparklyr/latest/reference/ft_string_indexer.html) | Feature Transformation -- StringIndexer (Estimator)
[ml_linear_svc()](/packages/sparklyr/latest/reference/ml_linear_svc.html) | Spark ML -- LinearSVC
[ml_save()](/packages/sparklyr/latest/reference/ml-persistence.html) [ml_load()](/packages/sparklyr/latest/reference/ml-persistence.html) | Spark ML -- Model Persistence
[ml_pipeline()](/packages/sparklyr/latest/reference/ml_pipeline.html) | Spark ML -- Pipelines
[ml_power_iteration()](/packages/sparklyr/latest/reference/ml_power_iteration.html) | Spark ML -- Power Iteration Clustering
[ml_stage()](/packages/sparklyr/latest/reference/ml_stage.html) [ml_stages()](/packages/sparklyr/latest/reference/ml_stage.html) | Spark ML -- Pipeline stage extraction
[ml_standardize_formula()](/packages/sparklyr/latest/reference/ml_standardize_formula.html) | Standardize Formula Input for `ml_model`
[ml_summary()](/packages/sparklyr/latest/reference/ml_summary.html) | Spark ML -- Extraction of summary metrics
[ml_uid()](/packages/sparklyr/latest/reference/ml_uid.html) | Spark ML -- UID
[ft_count_vectorizer()](/packages/sparklyr/latest/reference/ft_count_vectorizer.html) [ml_vocabulary()](/packages/sparklyr/latest/reference/ft_count_vectorizer.html) | Feature Transformation -- CountVectorizer (Estimator)

## Spark Feature Transformers

Function(s) | Description
------------- |----------------
[ft_binarizer()](/packages/sparklyr/latest/reference/ft_binarizer.html) | Feature Transformation -- Binarizer (Transformer)
[ft_bucketizer()](/packages/sparklyr/latest/reference/ft_bucketizer.html) | Feature Transformation -- Bucketizer (Transformer)
[ft_count_vectorizer()](/packages/sparklyr/latest/reference/ft_count_vectorizer.html) [ml_vocabulary()](/packages/sparklyr/latest/reference/ft_count_vectorizer.html) | Feature Transformation -- CountVectorizer (Estimator)
[ft_dct()](/packages/sparklyr/latest/reference/ft_dct.html) [ft_discrete_cosine_transform()](/packages/sparklyr/latest/reference/ft_dct.html) | Feature Transformation -- Discrete Cosine Transform (DCT) (Transformer)
[ft_elementwise_product()](/packages/sparklyr/latest/reference/ft_elementwise_product.html) | Feature Transformation -- ElementwiseProduct (Transformer)
[ft_index_to_string()](/packages/sparklyr/latest/reference/ft_index_to_string.html) | Feature Transformation -- IndexToString (Transformer)
[ft_one_hot_encoder()](/packages/sparklyr/latest/reference/ft_one_hot_encoder.html) | Feature Transformation -- OneHotEncoder (Transformer)
[ft_quantile_discretizer()](/packages/sparklyr/latest/reference/ft_quantile_discretizer.html) | Feature Transformation -- QuantileDiscretizer (Estimator)
[ft_sql_transformer()](/packages/sparklyr/latest/reference/sql-transformer.html) [ft_dplyr_transformer()](/packages/sparklyr/latest/reference/sql-transformer.html) | Feature Transformation -- SQLTransformer
[ft_string_indexer()](/packages/sparklyr/latest/reference/ft_string_indexer.html) [ml_labels()](/packages/sparklyr/latest/reference/ft_string_indexer.html) [ft_string_indexer_model()](/packages/sparklyr/latest/reference/ft_string_indexer.html) | Feature Transformation -- StringIndexer (Estimator)
[ft_vector_assembler()](/packages/sparklyr/latest/reference/ft_vector_assembler.html) | Feature Transformation -- VectorAssembler (Transformer)
[ft_tokenizer()](/packages/sparklyr/latest/reference/ft_tokenizer.html) | Feature Transformation -- Tokenizer (Transformer)
[ft_regex_tokenizer()](/packages/sparklyr/latest/reference/ft_regex_tokenizer.html) | Feature Transformation -- RegexTokenizer (Transformer)
[ft_bucketed_random_projection_lsh()](/packages/sparklyr/latest/reference/ft_lsh.html) [ft_minhash_lsh()](/packages/sparklyr/latest/reference/ft_lsh.html) | Feature Transformation -- LSH (Estimator)
[ft_chisq_selector()](/packages/sparklyr/latest/reference/ft_chisq_selector.html) | Feature Transformation -- ChiSqSelector (Estimator)
[ft_feature_hasher()](/packages/sparklyr/latest/reference/ft_feature_hasher.html) | Feature Transformation -- FeatureHasher (Transformer)
[ft_hashing_tf()](/packages/sparklyr/latest/reference/ft_hashing_tf.html) | Feature Transformation -- HashingTF (Transformer)
[ft_idf()](/packages/sparklyr/latest/reference/ft_idf.html) | Feature Transformation -- IDF (Estimator)
[ft_imputer()](/packages/sparklyr/latest/reference/ft_imputer.html) | Feature Transformation -- Imputer (Estimator)
[ft_interaction()](/packages/sparklyr/latest/reference/ft_interaction.html) | Feature Transformation -- Interaction (Transformer)
[ft_max_abs_scaler()](/packages/sparklyr/latest/reference/ft_max_abs_scaler.html) | Feature Transformation -- MaxAbsScaler (Estimator)
[ft_min_max_scaler()](/packages/sparklyr/latest/reference/ft_min_max_scaler.html) | Feature Transformation -- MinMaxScaler (Estimator)
[ft_ngram()](/packages/sparklyr/latest/reference/ft_ngram.html) | Feature Transformation -- NGram (Transformer)
[ft_normalizer()](/packages/sparklyr/latest/reference/ft_normalizer.html) | Feature Transformation -- Normalizer (Transformer)
[ft_one_hot_encoder_estimator()](/packages/sparklyr/latest/reference/ft_one_hot_encoder_estimator.html) | Feature Transformation -- OneHotEncoderEstimator (Estimator)
[ft_pca()](/packages/sparklyr/latest/reference/ft_pca.html) [ml_pca()](/packages/sparklyr/latest/reference/ft_pca.html) | Feature Transformation -- PCA (Estimator)
[ft_polynomial_expansion()](/packages/sparklyr/latest/reference/ft_polynomial_expansion.html) | Feature Transformation -- PolynomialExpansion (Transformer)
[ft_r_formula()](/packages/sparklyr/latest/reference/ft_r_formula.html) | Feature Transformation -- RFormula (Estimator)
[ft_standard_scaler()](/packages/sparklyr/latest/reference/ft_standard_scaler.html) | Feature Transformation -- StandardScaler (Estimator)
[ft_stop_words_remover()](/packages/sparklyr/latest/reference/ft_stop_words_remover.html) | Feature Transformation -- StopWordsRemover (Transformer)
[ft_vector_indexer()](/packages/sparklyr/latest/reference/ft_vector_indexer.html) | Feature Transformation -- VectorIndexer (Estimator)
[ft_vector_slicer()](/packages/sparklyr/latest/reference/ft_vector_slicer.html) | Feature Transformation -- VectorSlicer (Transformer)
[ft_word2vec()](/packages/sparklyr/latest/reference/ft_word2vec.html) [ml_find_synonyms()](/packages/sparklyr/latest/reference/ft_word2vec.html) | Feature Transformation -- Word2Vec (Estimator)
[ft_robust_scaler()](/packages/sparklyr/latest/reference/ft_robust_scaler.html) | Feature Transformation -- RobustScaler (Estimator)

## Spark Machine Learning Utilities

Function(s) | Description
------------- |----------------
[ml_binary_classification_evaluator()](/packages/sparklyr/latest/reference/ml_evaluator.html) [ml_binary_classification_eval()](/packages/sparklyr/latest/reference/ml_evaluator.html) [ml_multiclass_classification_evaluator()](/packages/sparklyr/latest/reference/ml_evaluator.html) [ml_classification_eval()](/packages/sparklyr/latest/reference/ml_evaluator.html) [ml_regression_evaluator()](/packages/sparklyr/latest/reference/ml_evaluator.html) | Spark ML - Evaluators
[ml_feature_importances()](/packages/sparklyr/latest/reference/ml_feature_importances.html) [ml_tree_feature_importance()](/packages/sparklyr/latest/reference/ml_feature_importances.html) | Spark ML - Feature Importance for Tree Models
[tidy(<i>&lt;ml_model_als&gt;</i>)](/packages/sparklyr/latest/reference/ml_als_tidiers.html) [augment(<i>&lt;ml_model_als&gt;</i>)](/packages/sparklyr/latest/reference/ml_als_tidiers.html) [glance(<i>&lt;ml_model_als&gt;</i>)](/packages/sparklyr/latest/reference/ml_als_tidiers.html) | Tidying methods for Spark ML ALS
[tidy(<i>&lt;ml_model_generalized_linear_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_glm_tidiers.html) [tidy(<i>&lt;ml_model_linear_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_glm_tidiers.html) [augment(<i>&lt;ml_model_generalized_linear_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_glm_tidiers.html) [augment(<i>&lt;ml_model_linear_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_glm_tidiers.html) [glance(<i>&lt;ml_model_generalized_linear_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_glm_tidiers.html) [glance(<i>&lt;ml_model_linear_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_glm_tidiers.html) | Tidying methods for Spark ML linear models
[tidy(<i>&lt;ml_model_isotonic_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_isotonic_regression_tidiers.html) [augment(<i>&lt;ml_model_isotonic_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_isotonic_regression_tidiers.html) [glance(<i>&lt;ml_model_isotonic_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_isotonic_regression_tidiers.html) | Tidying methods for Spark ML Isotonic Regression
[tidy(<i>&lt;ml_model_lda&gt;</i>)](/packages/sparklyr/latest/reference/ml_lda_tidiers.html) [augment(<i>&lt;ml_model_lda&gt;</i>)](/packages/sparklyr/latest/reference/ml_lda_tidiers.html) [glance(<i>&lt;ml_model_lda&gt;</i>)](/packages/sparklyr/latest/reference/ml_lda_tidiers.html) | Tidying methods for Spark ML LDA models
[tidy(<i>&lt;ml_model_linear_svc&gt;</i>)](/packages/sparklyr/latest/reference/ml_linear_svc_tidiers.html) [augment(<i>&lt;ml_model_linear_svc&gt;</i>)](/packages/sparklyr/latest/reference/ml_linear_svc_tidiers.html) [glance(<i>&lt;ml_model_linear_svc&gt;</i>)](/packages/sparklyr/latest/reference/ml_linear_svc_tidiers.html) | Tidying methods for Spark ML linear svc
[tidy(<i>&lt;ml_model_logistic_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_logistic_regression_tidiers.html) [augment(<i>&lt;ml_model_logistic_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_logistic_regression_tidiers.html) [glance(<i>&lt;ml_model_logistic_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_logistic_regression_tidiers.html) | Tidying methods for Spark ML Logistic Regression
[tidy(<i>&lt;ml_model_multilayer_perceptron_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_multilayer_perceptron_tidiers.html) [augment(<i>&lt;ml_model_multilayer_perceptron_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_multilayer_perceptron_tidiers.html) [glance(<i>&lt;ml_model_multilayer_perceptron_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_multilayer_perceptron_tidiers.html) | Tidying methods for Spark ML MLP
[tidy(<i>&lt;ml_model_naive_bayes&gt;</i>)](/packages/sparklyr/latest/reference/ml_naive_bayes_tidiers.html) [augment(<i>&lt;ml_model_naive_bayes&gt;</i>)](/packages/sparklyr/latest/reference/ml_naive_bayes_tidiers.html) [glance(<i>&lt;ml_model_naive_bayes&gt;</i>)](/packages/sparklyr/latest/reference/ml_naive_bayes_tidiers.html) | Tidying methods for Spark ML Naive Bayes
[tidy(<i>&lt;ml_model_pca&gt;</i>)](/packages/sparklyr/latest/reference/ml_pca_tidiers.html) [augment(<i>&lt;ml_model_pca&gt;</i>)](/packages/sparklyr/latest/reference/ml_pca_tidiers.html) [glance(<i>&lt;ml_model_pca&gt;</i>)](/packages/sparklyr/latest/reference/ml_pca_tidiers.html) | Tidying methods for Spark ML Principal Component Analysis
[tidy(<i>&lt;ml_model_aft_survival_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_survival_regression_tidiers.html) [augment(<i>&lt;ml_model_aft_survival_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_survival_regression_tidiers.html) [glance(<i>&lt;ml_model_aft_survival_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_survival_regression_tidiers.html) | Tidying methods for Spark ML Survival Regression
[tidy(<i>&lt;ml_model_decision_tree_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [tidy(<i>&lt;ml_model_decision_tree_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [augment(<i>&lt;ml_model_decision_tree_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [augment(<i>&lt;ml_model_decision_tree_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [glance(<i>&lt;ml_model_decision_tree_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [glance(<i>&lt;ml_model_decision_tree_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [tidy(<i>&lt;ml_model_random_forest_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [tidy(<i>&lt;ml_model_random_forest_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [augment(<i>&lt;ml_model_random_forest_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [augment(<i>&lt;ml_model_random_forest_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [glance(<i>&lt;ml_model_random_forest_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [glance(<i>&lt;ml_model_random_forest_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [tidy(<i>&lt;ml_model_gbt_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [tidy(<i>&lt;ml_model_gbt_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [augment(<i>&lt;ml_model_gbt_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [augment(<i>&lt;ml_model_gbt_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [glance(<i>&lt;ml_model_gbt_classification&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) [glance(<i>&lt;ml_model_gbt_regression&gt;</i>)](/packages/sparklyr/latest/reference/ml_tree_tidiers.html) | Tidying methods for Spark ML tree models
[tidy(<i>&lt;ml_model_kmeans&gt;</i>)](/packages/sparklyr/latest/reference/ml_unsupervised_tidiers.html) [augment(<i>&lt;ml_model_kmeans&gt;</i>)](/packages/sparklyr/latest/reference/ml_unsupervised_tidiers.html) [glance(<i>&lt;ml_model_kmeans&gt;</i>)](/packages/sparklyr/latest/reference/ml_unsupervised_tidiers.html) [tidy(<i>&lt;ml_model_bisecting_kmeans&gt;</i>)](/packages/sparklyr/latest/reference/ml_unsupervised_tidiers.html) [augment(<i>&lt;ml_model_bisecting_kmeans&gt;</i>)](/packages/sparklyr/latest/reference/ml_unsupervised_tidiers.html) [glance(<i>&lt;ml_model_bisecting_kmeans&gt;</i>)](/packages/sparklyr/latest/reference/ml_unsupervised_tidiers.html) [tidy(<i>&lt;ml_model_gaussian_mixture&gt;</i>)](/packages/sparklyr/latest/reference/ml_unsupervised_tidiers.html) [augment(<i>&lt;ml_model_gaussian_mixture&gt;</i>)](/packages/sparklyr/latest/reference/ml_unsupervised_tidiers.html) [glance(<i>&lt;ml_model_gaussian_mixture&gt;</i>)](/packages/sparklyr/latest/reference/ml_unsupervised_tidiers.html) | Tidying methods for Spark ML unsupervised models

## Extensions

Function(s) | Description
------------- |----------------
[compile_package_jars()](/packages/sparklyr/latest/reference/compile_package_jars.html) | Compile Scala sources into a Java Archive (jar)
[connection_config()](/packages/sparklyr/latest/reference/connection_config.html) | Read configuration values for a connection
[download_scalac()](/packages/sparklyr/latest/reference/download_scalac.html) | Downloads default Scala Compilers
[find_scalac()](/packages/sparklyr/latest/reference/find_scalac.html) | Discover the Scala Compiler
[spark_context()](/packages/sparklyr/latest/reference/spark-api.html) [java_context()](/packages/sparklyr/latest/reference/spark-api.html) [hive_context()](/packages/sparklyr/latest/reference/spark-api.html) [spark_session()](/packages/sparklyr/latest/reference/spark-api.html) | Access the Spark API
[hive_context_config()](/packages/sparklyr/latest/reference/hive_context_config.html) | Runtime configuration interface for Hive
[invoke()](/packages/sparklyr/latest/reference/invoke.html) [invoke_static()](/packages/sparklyr/latest/reference/invoke.html) [invoke_new()](/packages/sparklyr/latest/reference/invoke.html) | Invoke a Method on a JVM Object
[j_invoke()](/packages/sparklyr/latest/reference/j_invoke.html) [j_invoke_static()](/packages/sparklyr/latest/reference/j_invoke.html) [j_invoke_new()](/packages/sparklyr/latest/reference/j_invoke.html) | Invoke a Java function.
[jarray()](/packages/sparklyr/latest/reference/jarray.html) | Instantiate a Java array with a specific element type.
[jfloat()](/packages/sparklyr/latest/reference/jfloat.html) | Instantiate a Java float type.
[jfloat_array()](/packages/sparklyr/latest/reference/jfloat_array.html) | Instantiate an Array[Float].
[register_extension()](/packages/sparklyr/latest/reference/register_extension.html) [registered_extensions()](/packages/sparklyr/latest/reference/register_extension.html) | Register a Package that Implements a Spark Extension
[spark_compilation_spec()](/packages/sparklyr/latest/reference/spark_compilation_spec.html) | Define a Spark Compilation Specification
[spark_default_compilation_spec()](/packages/sparklyr/latest/reference/spark_default_compilation_spec.html) | Default Compilation Specification for Spark Extensions
[spark_context_config()](/packages/sparklyr/latest/reference/spark_context_config.html) | Runtime configuration interface for the Spark Context.
[spark_dataframe()](/packages/sparklyr/latest/reference/spark_dataframe.html) | Retrieve a Spark DataFrame
[spark_dependency()](/packages/sparklyr/latest/reference/spark_dependency.html) | Define a Spark dependency
[spark_home_set()](/packages/sparklyr/latest/reference/spark_home_set.html) | Set the SPARK_HOME environment variable
[spark_jobj()](/packages/sparklyr/latest/reference/spark_jobj.html) | Retrieve a Spark JVM Object Reference
[spark_version()](/packages/sparklyr/latest/reference/spark_version.html) | Get the Spark Version Associated with a Spark Connection

## Distributed Computing

Function(s) | Description
------------- |----------------
[spark_apply()](/packages/sparklyr/latest/reference/spark_apply.html) | Apply an R Function in Spark
[spark_apply_bundle()](/packages/sparklyr/latest/reference/spark_apply_bundle.html) | Create Bundle for Spark Apply
[spark_apply_log()](/packages/sparklyr/latest/reference/spark_apply_log.html) | Log Writer for Spark Apply
[registerDoSpark()](/packages/sparklyr/latest/reference/registerDoSpark.html) | Register a Parallel Backend

## Livy

Function(s) | Description
------------- |----------------
[livy_install()](/packages/sparklyr/latest/reference/livy_install.html) [livy_available_versions()](/packages/sparklyr/latest/reference/livy_install.html) [livy_install_dir()](/packages/sparklyr/latest/reference/livy_install.html) [livy_installed_versions()](/packages/sparklyr/latest/reference/livy_install.html) [livy_home_dir()](/packages/sparklyr/latest/reference/livy_install.html) | Install Livy
[livy_config()](/packages/sparklyr/latest/reference/livy_config.html) | Create a Spark Configuration for Livy
[livy_service_start()](/packages/sparklyr/latest/reference/livy_service.html) [livy_service_stop()](/packages/sparklyr/latest/reference/livy_service.html) | Start Livy

## Streaming

Function(s) | Description
------------- |----------------
[stream_find()](/packages/sparklyr/latest/reference/stream_find.html) | Find Stream
[stream_generate_test()](/packages/sparklyr/latest/reference/stream_generate_test.html) | Generate Test Stream
[stream_id()](/packages/sparklyr/latest/reference/stream_id.html) | Spark Stream's Identifier
[stream_lag()](/packages/sparklyr/latest/reference/stream_lag.html) | Apply lag function to columns of a Spark Streaming DataFrame
[stream_name()](/packages/sparklyr/latest/reference/stream_name.html) | Spark Stream's Name
[stream_read_csv()](/packages/sparklyr/latest/reference/stream_read_csv.html) | Read CSV Stream
[stream_read_json()](/packages/sparklyr/latest/reference/stream_read_json.html) | Read JSON Stream
[stream_read_delta()](/packages/sparklyr/latest/reference/stream_read_delta.html) | Read Delta Stream
[stream_read_kafka()](/packages/sparklyr/latest/reference/stream_read_kafka.html) | Read Kafka Stream
[stream_read_orc()](/packages/sparklyr/latest/reference/stream_read_orc.html) | Read ORC Stream
[stream_read_parquet()](/packages/sparklyr/latest/reference/stream_read_parquet.html) | Read Parquet Stream
[stream_read_socket()](/packages/sparklyr/latest/reference/stream_read_socket.html) | Read Socket Stream
[stream_read_text()](/packages/sparklyr/latest/reference/stream_read_text.html) | Read Text Stream
[stream_render()](/packages/sparklyr/latest/reference/stream_render.html) | Render Stream
[stream_stats()](/packages/sparklyr/latest/reference/stream_stats.html) | Stream Statistics
[stream_stop()](/packages/sparklyr/latest/reference/stream_stop.html) | Stops a Spark Stream
[stream_trigger_continuous()](/packages/sparklyr/latest/reference/stream_trigger_continuous.html) | Spark Stream Continuous Trigger
[stream_trigger_interval()](/packages/sparklyr/latest/reference/stream_trigger_interval.html) | Spark Stream Interval Trigger
[stream_view()](/packages/sparklyr/latest/reference/stream_view.html) | View Stream
[stream_watermark()](/packages/sparklyr/latest/reference/stream_watermark.html) | Watermark Stream
[stream_write_console()](/packages/sparklyr/latest/reference/stream_write_console.html) | Write Console Stream
[stream_write_csv()](/packages/sparklyr/latest/reference/stream_write_csv.html) | Write CSV Stream
[stream_write_delta()](/packages/sparklyr/latest/reference/stream_write_delta.html) | Write Delta Stream
[stream_write_json()](/packages/sparklyr/latest/reference/stream_write_json.html) | Write JSON Stream
[stream_write_kafka()](/packages/sparklyr/latest/reference/stream_write_kafka.html) | Write Kafka Stream
[stream_write_memory()](/packages/sparklyr/latest/reference/stream_write_memory.html) | Write Memory Stream
[stream_write_orc()](/packages/sparklyr/latest/reference/stream_write_orc.html) | Write a ORC Stream
[stream_write_parquet()](/packages/sparklyr/latest/reference/stream_write_parquet.html) | Write Parquet Stream
[stream_write_text()](/packages/sparklyr/latest/reference/stream_write_text.html) | Write Text Stream
[reactiveSpark()](/packages/sparklyr/latest/reference/reactiveSpark.html) | Reactive spark reader

