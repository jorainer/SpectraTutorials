# Version 0.6

## Version 0.6.2

- Add citation.

## Version 0.6.1

- Adapt to changes in `Spectra` >= 1.5.8: export `spectraVariableMapping`
  method.
- Adapt to changes in `CompoundDb` >= 0.9.6: `"target_name"` is available as
  spectra variable in `Spectra` objects returned from a `CompDb` database.
- Adapt to changes in `MetaboAnnotation` >= 0.99.4: also the ppm error is
  reported by `matchMz`.

## Version 0.6.0

- Remove the `Spectra` object with data from HMDB.
- Use a `CompDb` database for HMDB annotations.

# Version 0.5

## Version 0.5.0

- Add additional vignette describing spectra matching with the
  `MetaboAnnotation` package and integration into an `xcms` analysis workflow.

# Version 0.4

## Version 0.4.0

- Version used at the BioC2021 conference.
- Use MassBank release 2021.03.
- Restructure the document and simplify the analysis (reduce to mzML files with
  20eV collision energy).

# Version 0.3

## Version 0.3.2

- Use MassBank release 2021.02 and add expand descriptive text.
