FROM bioconductor/bioconductor_docker:RELEASE_3_19

LABEL name="jorainer/spectra_tutorials" \
      url="https://github.com/jorainer/SpectraTutorials" \
      maintainer="johannes.rainer@eurac.edu" \
      description="Docker container to run the Spectra tutorials." \
      license="Artistic-2.0"

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

## Setup MySQL and fill with MassBank data
RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN apt-get update; \
    apt-get install -y libgit2-dev; \
    apt-get install -y mariadb-server; \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; \
    chmod 777 /var/run/mysqld; \
    chmod 777 -R /var/lib/mysql;

RUN service mariadb start; \
    mysql < scripts/mysql-prepare.sql;

## Download and install MassBank
RUN scripts/install-massbank.sh

## Setup init scripts for mariadb
RUN scripts/mysql-init.sh

## Install the SpectraTutorials package and additional required packages
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask = FALSE); BiocManager::install('MsBackendMassbank'); BiocManager::install('MsBackendSql')"

RUN service mariadb start && \
    Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies = TRUE, build_vignettes = TRUE, repos = BiocManager::repositories())"
