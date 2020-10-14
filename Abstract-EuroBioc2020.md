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
data. Different *backends* can hence be used that enable access to data from
various data resources or that are designed specifically for very large MS data
sets. Data manipulations are by default not directly applied to the data but
cached in a *lazy processing queue* which allows analyses also of *read-only*
data representations.

This workshop shows the expandability of the new infrastructure to enable a
seamless integration and analysis of MS data from a variety of input formats
illustrated by a simple matching of experimental MS2 spectra against a public
spectral database and export of the data in a format commonly used for exchange
of MS2 data.
