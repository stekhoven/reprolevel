# Zenodo manuscript deposit

This document records the separate Zenodo publication of manuscript version
`1.0` and provides a reusable checklist for later manuscript versions. The
manuscript must not be added as a new version of the software record.

## Publication status

- **Status:** Published
- **Record:** <https://zenodo.org/records/21899772>
- **Version-specific DOI:** `10.5281/zenodo.21899772`
- **Concept DOI:** `10.5281/zenodo.21899771`
- **Publication date:** `2026-08-12`

## Record metadata

- **DOI:** `10.5281/zenodo.21899772`
- **Resource type:** Publication
- **Publication type:** Preprint
- **Title:** Reproducibility Levels in Practice: a pragmatic framework for computational research
- **Version:** `1.0`
- **Publication date:** `2026-08-12`
- **Language:** English
- **Access:** Open
- **Licence:** Creative Commons Attribution 4.0 International

## Creators

Enter the creators in manuscript order:

1. Gerber, Stefan
   - affiliation: ETH Zurich
   - ORCID: `0000-0002-2187-2727`
2. Stekhoven, Daniel J.
   - affiliation: ETH Zurich
   - ORCID: `0000-0003-3163-3161`

## Description

Computational reproducibility is often presented as an all-or-nothing
requirement: either an analysis is reproducible, or it is not. In everyday
research, however, reproducibility is usually a matter of degree. Projects move
from ad-hoc exploration, through partial documentation and scripted workflows,
towards portable, automated, and archived computational processes. Researchers
need language that helps them recognise this progression without turning
reproducibility into a punitive checklist or a contest of tools.

We propose Reproducibility Levels in Practice, a five-level framework for
describing computational reproducibility in research workflows. The levels
are: Level 1, Ephemeral Work; Level 2, Carpe Diem; Level 3, Sweet Spot; Level 4,
Assembly Line; and Level 5, Nirvana. Each level describes a recognisable
pattern of practice, including typical artefacts, benefits, risks, and
practical next steps. The framework is intended for self-assessment, teaching,
project planning, and discussion among researchers, research software
engineers, data stewards, and collaborators.

The central argument is that "reproducible enough" depends on context: the
scale of the analysis, the expected lifespan of the project, the number and
distance of collaborators, and the consequences of error. Rather than treating
lower levels as failures, the framework treats them as starting points for
improvement. A levels-based view can make reproducibility more approachable,
more actionable, and more honest about the trade-offs involved in real research
practice.

The framework is maintained as a living GitHub project, with selected releases
archived in Zenodo to provide stable, citable snapshots. This arrangement
allows the framework to evolve without obscuring which version a reader used.
This manuscript describes framework version `v1.0.1`.

## Keywords

- computational reproducibility
- reproducible research
- open science
- research practice
- workflow management
- version control
- containers
- research software engineering

## Related records

The published manuscript record contains:

- **Identifier:** `10.5281/zenodo.21900166`
- **Relation:** Documents
- **Resource type:** Software

The framework software record at <https://zenodo.org/records/21900166>
contains the reciprocal relation:

- **Identifier:** `10.5281/zenodo.21899772`
- **Relation:** Is described by
- **Resource type:** Preprint

## Reproducing the deposit files

Generate the deposit package with:

```sh
./scripts/build_manuscript.sh
```

The build requires Pandoc and XeLaTeX.

The published record contains all three generated files:

| File | Size (bytes) | MD5 checksum |
| --- | ---: | --- |
| `reprolevel-manuscript-v1.0.md` | 30,815 | `6ec47b6b4fe7a58ce6e1263e821b6f59` |
| `reprolevel-manuscript-v1.0.html` | 35,250 | `ebde10569bc8e73360444cc3511d5b0d` |
| `reprolevel-manuscript-v1.0.pdf` | 68,980 | `bb3ccbbaf5d28d97fe2858e2e0b9ec7a` |

The three files must be generated from the same committed Markdown source.
The checksums above were verified against the public Zenodo record.

## Checklist for a later manuscript version

- create a new version of the manuscript record, not the software record;
- update the manuscript version, version-specific DOI, and publication date in
  the source and repository guidance;
- state the exact framework release described by the new manuscript version;
- generate all three files from the same committed Markdown source;
- confirm both creators, their order, affiliations, and ORCIDs;
- confirm the related software DOI and `Documents` relation;
- confirm all three generated files open correctly;
- after publication, add or update the reciprocal `Is described by` relation
  on the corresponding software record;
- record the published file sizes and checksums here.
