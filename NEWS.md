# SpectraTutorials 1.0

## Changes in 1.0.1

- Add Zenodo doi to citation file and README.

## Changes in 1.0.0

- Version published on https://doi.org/10.5281/zenodo.11210190
- Use R 4.4 and Bioconductor 3.19.

# SpectraTutorials 0.9

## Changes in 0.9.0

- Use R 4.3 and Bioconductor 3.18.

# SpectraTutorials 0.8

## Changes in 0.8.2

- Add second example why caching changes is better than saving to database.

## Changes in 0.8.1

- Include feedback and suggestions from Philippine Louail.

## Changes in 0.8.0

- Add new tutorial *`Spectra`: an expandable infrastructure to handle mass
  spectrometry data*.
- Download MassBank data as an alternative from *AnnotationHub*.

# SpectraTutorials 0.7

## Changes in 0.7.3

- Fix mislabeling columns as experimental spectra and rows as MassBank spectra
  in the spectra similarity matrix (thanks to CSAMA2023 attendee for pointing
  this out!).

## Changes in 0.7.2

- Use `MsBackendSql` instead of `MsqlBackend`.

## Changes in 0.7.1

- Simplify/clarify description of spectra data processing.

## Changes in 0.7.0

- Add section on the use of the `MsqlBackend` and compare performance to
  `MsBackendMzR` and `MsBackendDataFrame`.

# SpectraTutorials 0.6

## Changes in 0.6.3

- Better describe usage of the alternative SQLite MassBank database file in the
  two workshops.

## Changes in 0.6.2

- Add citation.

## Changes in 0.6.1

- Adapt to changes in `Spectra` >= 1.5.8: export `spectraVariableMapping`
  method.
- Adapt to changes in `CompoundDb` >= 0.9.6: `"target_name"` is available as
  spectra variable in `Spectra` objects returned from a `CompDb` database.
- Adapt to changes in `MetaboAnnotation` >= 0.99.4: also the ppm error is
  reported by `matchMz`.

## Changes in 0.6.0

- Remove the `Spectra` object with data from HMDB.
- Use a `CompDb` database for HMDB annotations.

# SpectraTutorials 0.5

## Changes in 0.5.0

- Add additional vignette describing spectra matching with the
  `MetaboAnnotation` package and integration into an `xcms` analysis workflow.

# SpectraTutorials 0.4

## Changes in 0.4.0

- Version used at the BioC2021 conference.
- Use MassBank release 2021.03.
- Restructure the document and simplify the analysis (reduce to mzML files with
  20eV collision energy).

# SpectraTutorials 0.3

## Changes in 0.3.2

- Use MassBank release 2021.02 and add expand descriptive text.
