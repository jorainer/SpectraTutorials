# Abstract

Mass spectrometry (MS) data is a key technology in modern proteomics and
metabolomics experiments. Due to continuous improvements in MS instrumentation,
the generated data can easily become very large. Also, different additional
resources of MS data exist, such as spectra libraries and databases, all with
their own specific file formats that sometimes do not support manipulations of
the original data.

Learning from experiences with the `r Biocpkg("MSnbase")` Bioconductor package
we developed a novel infrastructure to handle MS spectral data in R, the `r
Biocpkg("Spectra")` package. This package implements a clear separation of user
functionality from code to provide, store and import mass spectrometry
data. Different *backends* can hence be used to enable access to data from
various data resources. Depending on the backend, data representations can be
*in memory*, *on disk*, local or remote. Data manipulations are by default not
directly applied to the data but cached in a *lazy processing queue* which
allows analyses also of *read-only* data representations.

This workshop shows how this new infrastructure can be used to integrate data
from a variety of different input sources on a simple example in which fragment
(MS2) spectra from an experiment are matched against reference MS2 spectra from
a public spectral library. Results are finally exported in a format commonly
used for exchange of MS2 data.
