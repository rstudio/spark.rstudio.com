#!/bin/bash
: ${SPARKLYR_PACKAGE_DIR="$HOME/R/x86_64-pc-linux-gnu-library/3.2/sparklyr"}

set -e

if [[ `basename $PWD` != "spark.rstudio.com" ]]; then
   echo "Please run \`_scripts/generate-staticdocs.sh\` from the spark.rstudio.com directory."
   exit 1
fi

rm -rf reference/sparklyr/latest/
mkdir -p reference/sparklyr/latest/
cp "${SPARKLYR_PACKAGE_DIR}/staticdocs/index.r" reference/sparklyr/latest/index.R
R --slave -e "set.seed(1337);library(pkgdown);library(htmltools);build_site('${SPARKLYR_PACKAGE_DIR}', site_path='reference/sparklyr/latest', templates_path='_staticdocs', examples=FALSE);warnings()"
rm -rf reference/sparklyr/latest/index.R

