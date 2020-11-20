FROM bioconductor/bioconductor_docker:RELEASE_3_12

LABEL name="jorainer/spectra_tutorials" \
      url="https://github.com/jorainer/SpectraTutorials" \
      maintainer="johannes.rainer@eurac.edu" \
      description="Docker container to run the Spectra tutorial." \
      license="Artistic-2.0"

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

## Install the SpectraTutorials package
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install('jorainer/SpectraTutorials', update = FALSE, ask = FALSE, dependencies = TRUE)"

RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN apt-get update; \
    apt-get install -y mariadb-server; \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; \
    chmod 777 /var/run/mysqld; \
    chmod 777 -R /var/lib/mysql;

## ADD inst/sql/minimassbank.sql /home/rstudio

RUN service mysql start; \
    mysql < scripts/mysql-prepare.sql;

## Download and install MassBank
RUN scripts/install-massbank.sh

## Setup init scripts for mariadb
RUN scripts/mysql-init.sh
