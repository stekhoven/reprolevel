# Zenodo manuscript deposit

This checklist describes the separate Zenodo publication record for the
manuscript. It must not be added as a new version of the software record.

## Record metadata

- **Reserved DOI:** `10.5281/zenodo.21899772`
- **Resource type:** Publication
- **Publication type:** Preprint
- **Title:** Reproducibility Levels in Practice: a pragmatic framework for computational research
- **Version:** `1.0`
- **Publication date:** `2026-08-12` (confirm on the day of publication)
- **Language:** English
- **Access:** Open
- **Licence:** Creative Commons Attribution 4.0 International

## Creators

Enter the creators in manuscript order:

1. Gerber, Stefan
   - affiliation: NEXUS Personalized Health, ETH Zurich
   - ORCID: `0000-0002-2187-2727`
2. Stekhoven, Daniel J.
   - affiliation: NEXUS Personalized Health, ETH Zurich
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

## Related work

Add the following related identifier:

- **Identifier:** `10.5281/zenodo.21900166`
- **Relation:** Documents
- **Resource type:** Software

## Files

Generate the deposit package with:

```sh
./scripts/build_manuscript.sh
```

The build requires Pandoc and XeLaTeX.

Upload all three generated files:

- `dist/reprolevel-manuscript-v1.0.md`
- `dist/reprolevel-manuscript-v1.0.html`
- `dist/reprolevel-manuscript-v1.0.pdf`

The three files must be generated from the same committed Markdown source.

## Final checks before publication

- confirm the reserved DOI is `10.5281/zenodo.21899772`;
- confirm the publication date;
- confirm both creators, their order, affiliations, and ORCIDs;
- confirm manuscript version `1.0` and framework version `v1.0.1`;
- confirm the related software DOI and `Documents` relation;
- confirm all three files open correctly;
- publish only after the reciprocal relation from the software record has been
  planned or added.
