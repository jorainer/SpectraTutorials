# Mass Spectrometry Data Analysis with `Spectra`

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)
![docker pulls](https://img.shields.io/docker/pulls/jorainer/spectra_tutorials)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/jorainer/spectra_tutorials?label=docker%20image)](https://hub.docker.com/repository/docker/jorainer/spectra_tutorials)

![Spectra](man/figures/Spectra.png)
![MsCoreUtils](man/figures/MsCoreUtils.png)
![MsBackendMassbank](man/figures/MsBackendMassbank.png)
![MsBackendMgf](man/figures/MsBackendMgf.png)
![CompoundDb](man/figures/CompoundDb.png)
![MetaboAnnotation](man/figures/MetaboAnnotation.png)

Tutorials and workshops for the use of the `Spectra` Bioconductor package to
analyze mass spectrometry (MS) data.


# Workshops/Tutorials

## Seamless Integration of Mass Spectrometry Data from Different Sources


### Short description

In this workshop we will use `Spectra` to:

- import MS data from *mzML* files,
- select MS2 spectra for a certain compound,
- compare and match the MS2 spectra against *reference* MS2 spectra from a
  public database,
- annotate the spectra and export them to a file in *MGF* format.


### Description

This (instructor-led live demo)
[workshop](https://jorainer.github.io/SpectraTutorials/articles/analyzing-MS-data-from-different-sources-with-Spectra.html)
explains the `Spectra` package and shows how this new infrastructure can be used
to represent and analyze Mass Spectrometry (MS) data. The use of different data
type and format specific *backends* guarantees an easy expandability of the
infrastructure. This is illustrated in this tutorial on a simple use case, in
which MS/MS (a.k.a. MS2) spectra, measured by an MS instrument, are compared and
*matched* against a public spectral database containing public domain reference
MS2 spectra.

The video recording of this workshop at the
[BioC2021](https://bioc2021.bioconductor.org/) conference is available
[here](https://youtu.be/CNvqlK3Wgx4).

The video recording of this workshop at the
[EuroBioc2020](https://eurobioc2020.bioconductor.org/) conference is available
[here](https://www.youtube.com/watch?v=W6JISCrAtk0).


### Workshop goals and objectives

#### Learning goals

- Understand how to import MS data into R.
- Understand the basic concept how different *backends* can be used in `Spectra`
  to work with MS data from various sources.

#### Learning objectives

- Import and export MS data with `Spectra`.
- Integrate MS data from different resources into an MS data analysis workflow.
- Apply different data manipulations on MS data represented as a `Spectra`
  object.
- Use `Spectra` to perform spectra comparisons in R.


### Pre-requisites

- Basic familiarity with R and Bioconductor.
- Basic understanding of Mass Spectrometry (MS) data.


### Installation and participation

#### Docker-based setup

This workshop is available as a self-contained docker image simplifying
installation and usage.

- Get the [docker image](https://hub.docker.com/r/jorainer/spectra_tutorials) of
  this tutorial with `docker pull jorainer/spectra_tutorials:latest`.
- Start docker using
  ```
  docker run \
      -e PASSWORD=bioc \
      -p 8787:8787 \
      jorainer/spectra_tutorials:latest
  ```
- Enter `http://localhost:8787` in a web browser and log in with username
  `rstudio` and password `bioc`.
- Open this R-markdown file
  (*vignettes/analyzing-MS-data-from-different-sources-with-Spectra.Rmd*) in the
  RStudio server version in the web browser and evaluate the R code blocks.
- To get the source code: clone [this github
repository](https://github.com/jorainer/SpectraTutorials), e.g. with `git clone
https://github.com/jorainer/SpectraTutorials`.


#### Manual installation

As an alternative, it is possible to install all required R packages locally on
R and to download an SQLite database with MassBank annotations that will be
required during the workshop.

- To get the source code: clone [this github
  repository](https://github.com/jorainer/SpectraTutorials), e.g. with `git
  clone https://github.com/jorainer/SpectraTutorials`.
- Install the required R packages:

```r
Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS="true")
install.packages(c("devtools", "rmarkdown", "BiocManager"))
BiocManager::install(c("BiocStyle",
                       "MsCoreUtils",
                       "Spectra",
                       "pheatmap",
					   "CompoundDb",
					   "MsBackendMgf",
					   "MsBackendMassbank"))
BiocManager::install("jorainer/SpectraTutorials")
```

- Download the SQLite database with the content from MassBank from
  [here](https://github.com/jorainer/SpectraTutorials/releases/tag/2021.03).



#### Manual installation with available MySQL database

For more advanced users it is also possible to *manually* install all the
resources required for this tutorial. In addition to R version >= 4,
specifically for the examples involving the
[MassBank](https://massbank.eu/MassBank/) database, a running MySQL/MariaDB
server is also required.

First install all R packages as detailed in the previous section.
A MySQL database dump of the `MassBank` database can be downloaded from [the
official github page](https://github.com/MassBank/MassBank-data/releases). A
database named `MassBank` should then be created in the local MySQL/MariaDB
server. The downloaded *.sql.gz* needs to be unzipped and can then be installed
with `mysql MassBank < *.sql`.

The source code for all tutorials in this package can be downloaded with:

```
git clone https://github.com/jorainer/SpectraTutorials
```

Then open the R-markdown (*Rmd*) files of one of the tutorials (which are
located within the *vignettes* folder with the editor of choice (e.g. RStudio,
emacs, vim, ...) and evaluate the R-code in the tutorial interactively.

### R/Bioconductor packages used

- [`Spectra`](https://bioconductor.org/packages/Spectra)
- [`MsCoreUtils`](https://bioconductor.org/packages/MsCoreUtils)
- [`MsBackendMgf`](https://bioconductor.org/packages/MsBackendMgf)
- [`MsBackendMassbank`](https://bioconductor.org/packages/MsBackendMassbank)
- [`CompoundDb`](https://bioconductor.org/packages/CompoundDb)

### Time outline

| Activity                                   | Time  |
|--------------------------------------------|-------|
| Introduction (LC-MS/MS, `Spectra` package) | 10min |
| MS data import and handling                | 5min  |
| Data processing and manipulation           | 5min  |
| Spectrum data comparison                   | 5min  |
| Comparing spectra against MassBank         | 10min |
| Data export                                | 5min  |
| (Comparing spectra against HMDB)           | (5min)|



## MS/MS Spectra Matching with the `MetaboAnnotation` Package

The `Spectra` package provides all the functionality required for annotation and
identification workflows for untargeted LC-MS/MS data, but, while being very
flexible and customizable, it might be too cumbersome for beginners or analysts
not accustomed with R. To fill this gap we developed the
[`MetaboAnnotation`](https://rformassspectrometry.github.io/MetaboAnnotation)
package that builds upon `Spectra` and provides functions for annotation of
LC-MS and LC-MS/MS data sets tailored towards the less experienced R user.

This tutorial shows how `MetaboAnnotatio` can be used in R-based LC-MS/MS
annotation workflows.

Note that there is also an additional tutorial for the `MetaboAnnotation`,
`CompoundDb` and `MetaboCoreUtils` packages available:
[MetaboAnnotationTutorials](https://jorainer.github.io/MetaboAnnotationTutorials).
