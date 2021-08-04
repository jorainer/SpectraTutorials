# Mass Spectrometry Data Analysis with `Spectra`

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)
![docker pulls](https://img.shields.io/docker/pulls/jorainer/spectra_tutorials)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/jorainer/spectra_tutorials?label=docker%20image)](https://hub.docker.com/repository/docker/jorainer/spectra_tutorials)

<div style="float: left;">
<a href="https://rformassspectrometry.github.io/Spectra">
<img
src="https://raw.githubusercontent.com/rformassspectrometry/stickers/master/Spectra/Spectra.png"
height="150">
</a>
<a href="https://rformassspectrometry.github.io/MsBackendMassbank">
<img
src="https://raw.githubusercontent.com/rformassspectrometry/stickers/master/MsBackendMassbank/MsBackendMassbank.png"
height="150">
</a>
<a href="https://rformassspectrometry.github.io/MsBackendMgf">
<img
src="https://raw.githubusercontent.com/rformassspectrometry/stickers/master/MsBackendMgf/MsBackendMgf.png"
height="150">
</a>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<div></div>


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

A video recorded during the
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
- Optionally, to run also the code to import the MS2 spectra from HMDB the *All
  Spectra Files (XML)* archive from the [hmdb downloads
  page](https://hmdb.ca/downloads) has to be downloaded. The contents of the
  *hmdb_all_spectra.zip* archive should then be unzipped into the folder
  *data/hmdb_all_spectra*.


#### Manual setup

For more advanced users it is also possible to *manually* install all the
resources required for this tutorial. In addition to R version >= 4,
specifically for the examples involving the
[MassBank](https://massbank.eu/MassBank/) database, a running MySQL/MariaDB
server is also required.

The required R packages can be installed with the code below:

```r
Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS="true")
install.packages(c("devtools", "rmarkdown", "BiocManager"))
BiocManager::install(c("BiocStyle",
                       "MsCoreUtils",
                       "Spectra",
                       "pheatmap"))
devtools::install_github("RforMassSpectrometry/MsBackendHmdb")
devtools::install_github("RforMassSpectrometry/MsBackendMgf")
devtools::install_github("michaelwitting/MsBackendMassbank")
devtools::install_github("jorainer/SpectraTutorials")
```

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

Other R packages not (yet) in Bioconductor:

- [`MsBackendHmdb`](https://rformassspectrometry.github.io/MsBackendHmdb)

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
