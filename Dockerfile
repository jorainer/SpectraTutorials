
FROM bioconductor/bioconductor_docker:RELEASE_3_12

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install('jorainer/SpectraTutorials', update = TRUE, ask = FALSE, dependencies = TRUE)"
