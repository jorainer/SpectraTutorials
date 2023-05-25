# `Spectra`: an expandable infrastructure to handle mass spectrometry data

Mass spectrometry (MS) data is a key technology in modern metabolomics and
proteomics experiments. Continuous improvements in MS instrumentation, larger
experiments and new technological developments lead to ever growing data sizes
and increased number of available variables making *standard* in-memory data
handling and processing difficult.

The `Spectra` package provides a modern infrastructure for MS data handling
specifically designed to enable extension to additional data resources or
alternative data representations. These can be realized by extending the virtual
`MsBackend` class and its related methods. Implementations of such `MsBackend`
classes can be tailored for specific needs, such as low memory footprint, fast
processing, remote data access, or also support for specific additional data
types or variables. Importantly, data processing of `Spectra` objects is
independent of the backend in use due to a *lazy evaluation* mechanism that
caches data manipulations internally.

This workshop discusses different available data representations for MS data
along with their properties, advantages and performances. In addition,
`Spectra`'s concept of lazy evaluation for data manipulations is presented, as
well as a simple caching mechanism for data modifications. Finally, it explains
how new `MsBackend` instances can be implemented and tested to ensure
compliance.




Describe:
- Concept of backends.
- Loading MS data.
- Backends, on-disk, in-memory.
- Using a `MsBackendSql` to store data.
- Use a `MsBackendMassbankSql` to access data: no parallel processing possible.
- Different properties of the backends.
- Lazy processing and caching.