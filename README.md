# Mass Spectrometry Data Analysis with `Spectra`

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)
![docker pulls](https://img.shields.io/docker/pulls/jorainer/spectra_tutorials)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/jorainer/spectra_tutorials?label=docker%20image)](https://hub.docker.com/repository/docker/jorainer/spectra_tutorials)

<img
src="https://raw.githubusercontent.com/rformassspectrometry/stickers/master/Spectra/Spectra.png"
height="150">

Tutorials and workshops for the use of the `Spectra` Bioconductor package to
analyze mass spectrometry (MS) data.

# Workshops/Tutorials

## Seamless Integration of Mass Spectrometry Data from Different Sources

This
[tutorial](https://jorainer.github.io/SpectraTutorials/articles/analyzing-MS-data-from-different-sources-with-Spectra.html)
(source: [here](https://github.com/jorainer/SpectraTutorials/blob/main/vignettes/analyzing-MS-data-from-different-sources-with-Spectra.Rmd))
shows the use of different backends (extending the `MsBackend` class) to import
and export mass spectrometry data from and to different file formats (and
resources). As a simple use case, experimental MS/MS spectra are processed and
cleaned, compared against *reference* spectra from a public database and finally
exported.

See *Installation* section below for the description how to run this workshop
interactively.

### Workshop goals and objectives

- Learn to handle and analyze mass spectrometry data with `Spectra`.
- Understand the principles of different `Spectra` data *backends*.

### Pre-requisites

- Basic knowledge of mass spectrometry data.
- Basic knowledge of R.

### Installation

#### Using the docker image of this tutorial

A pre-build [docker](https://www.docker.com/) image with all data and necessary
packages is available
[here](https://hub.docker.com/r/jorainer/spectra_tutorials). This docker image
can be installed (given docker is installed on the system) with
`docker pull jorainer/spectra_tutorials:latest`.

The source code of this repository, which contains the R-markdown files of the
tutorial(s) can then be downloaded with

```
git clone https://github.com/jorainer/SpectraTutorials
```

The docker image can be run by typing the following command into a terminal
(ideally by first changing the directory to the *SpectraTutorials* folder):

```
docker run \
 	-e PASSWORD=bioc \
 	-p 8787:8787 \
 	jorainer/spectra_tutorials:latest
```

Interaction with R within the running docker container is then possible by
entering the address `http://localhost:8787/` in a web browser and logging into
the server version of RStudio with user `rstudio` and password `bioc`. By
opening the Rmd file
*vignettes/analyzing-MS-data-from-different-sources-with-Spectra.Rmd* (in the
RStudio within the browser) it is then possible to run the tutorial
interactively.


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
official github
page](https://github.com/MassBank/MassBank-data/releases). A database named
`MassBank` should then be created in the local MySQL/MariaDB server. The downloaded
*.sql.gz* needs to be unzipped and can then be installed with `mysql MassBank <
*.sql`.


The source code for all tutorials in this package can be downloaded with:

```
git clone https://github.com/jorainer/SpectraTutorials
```

Then open the R-markdown (*Rmd*) files of one of the tutorials (which are
located within the *vignettes* folder with the editor of choice (e.g. RStudio,
emacs, vim, ...) and evaluate the R-code in the tutorial interactively.
