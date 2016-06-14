#!/bin/bash

set -e

if [[ `basename $PWD` != "spark.rstudio.com" ]]; then
   echo "Please run \`_scripts/generate-staticdocs.sh\` from the spark.rstudio.com directory."
   exit 1
fi

cp ~/packages/rspark/inst/staticdocs/index.r reference/rspark/latest/index.R
R --slave -e "set.seed(1337);library(staticdocs);library(htmltools);build_site('~/packages/rspark', site_path='reference/rspark/latest', templates_path='_staticdocs', examples=FALSE);warnings()"
rm -rf reference/rspark/latest/index.R
