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
