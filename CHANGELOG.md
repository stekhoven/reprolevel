# Changelog

All notable changes to this project should be documented in this file.

The format is inspired by Keep a Changelog, and the project intends to follow semantic versioning for framework releases.

## [Unreleased]

### Added

- reproducible Pandoc build for standalone HTML and PDF manuscript outputs
- published manuscript version `1.0` as a separate Zenodo preprint with DOI
  `10.5281/zenodo.21899772`
- publication metadata and a reusable checklist for the separate Zenodo
  manuscript record

### Changed

- added the version-specific `v1.0.1` framework DOI to citation metadata,
  repository guidance, and the manuscript
- assigned version `1.0` to the independently versioned manuscript
- documented when to cite the framework release, the manuscript, or both
- linked the manuscript and framework software records through reciprocal
  Zenodo related-work metadata

## [1.0.1] - 2026-08-12

### Added

- plain Markdown manuscript presenting the framework's scientific rationale
- manuscript section describing the repository as a collaborative, living
  framework
- planned GitHub Pages self-assessment concept for multidimensional
  reproducibility profiles
- framework and manuscript metadata for Stefan Gerber, author ORCIDs, and the
  initial manuscript DOI

### Changed

- updated development-version metadata from `1.0.0` to `1.0.1`
- switched the README DOI badge image to shields.io while retaining the same
  DOI target
- expanded spell-check dictionary entries for manuscript references and ORCID
  metadata
- removed legacy RStudio and R Markdown manuscript artefacts now that the manuscript draft is maintained in plain Markdown
- removed the obsolete F1000Research Word submission artefact; the Markdown
  manuscript is now the canonical source for generating the Zenodo HTML
- revised the manuscript from an F1000Research-specific Opinion Article format
  into a venue-neutral scientific manuscript for versioned Zenodo publication
- clarified that DOI `10.5281/zenodo.19616402` identifies the archived `v1.0.0`
  framework release and is not the DOI for repository version `v1.0.1`

### Fixed

- excluded otherwise valid AAAS DOI links from automated checking because the
  targets block automated requests
- excluded the valid Edge reference from automated link checking because the
  site returns HTTP 500 to the checker

## [1.0.0] - 2026-04-16

### Added

- first public release of the ReproLevel framework
- five narrative level descriptions in [`levels/`](levels/)
- repository guidance for contribution, governance, citation, and versioning
- issue and pull request templates
- documentation-quality GitHub Actions workflows
- machine-readable citation metadata in [`CITATION.cff`](CITATION.cff)

### Notes

- intended as the first stable, citable release of the framework
- intended to align with the first formal publication of the framework
- Zenodo DOI for this release: `10.5281/zenodo.19616402`
- publication details should be added after formal publication
