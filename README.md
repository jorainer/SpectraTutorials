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

### Workshop goals and objectives

- Understand the principles of different data *backends*.
- Learn to handle and analyze mass spectrometry data with `Spectra`.

### Pre-requisites

- Basic knowledge of mass spectrometry data.
- Basic knowledge of R.

### Installation

To run the code of the tutorial locally a recent version of
[R](https://r-project.org) is required (version >= 4.0) and a set of
R/Bioconductor packages that can be installed with the code below:

```r
install.packages(c("devtools", "rmarkdown", "BiocManager"))
BiocManager::install(c("BiocStyle",
                       "MsCoreUtils",
                       "Spectra",
                       "pheatmap"))
BiocManager::install("RforMassSpectrometry/MsBackendHmdb")
BiocManager::install("RforMassSpectrometry/MsBackendMgf")
```

Alternatively, a [docker](https://www.docker.com/) image with all necessary
packages pre-installed is available
[here](https://hub.docker.com/r/jorainer/spectra_tutorials). This can be
installed with `docker pull jorainer/spectra_tutorials:hmdb`.

To run the docker use:

```r
docker run \
 	-e PASSWORD=bioc \
 	-p 8787:8787 \
 	jorainer/spectra_tutorials:hmdb
```

Interaction with the R within the running docker container is then possible
by entering the address `http://localhost:8787/` in a web browser and logging in
with user `rstudio` password `bioc`. This gives access to a RStudio instance
running within the container.
