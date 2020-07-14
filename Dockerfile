FROM rocker/tidyverse:latest

MAINTAINER dlchudnov@mitre.org

WORKDIR /usr/src/app

RUN R -e "install.packages(c( \
    'argparse', \
    'bit64', \
    'data.table', \
    'doParallel', \
    'dplyr', \
    'foreach', \
    'Hmisc', \
    'plyr' \
    ))"

RUN R -e "library(devtools); \
    devtools::install_github('carriedaymont/growthcleanr')"

CMD R
