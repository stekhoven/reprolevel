# Reproducibility Levels in Practice

_A living framework for reflecting on, discussing, and improving computational reproducibility._

![Licence: CC BY 4.0 + MIT](https://img.shields.io/badge/licence-CC--BY%204.0%20%2B%20MIT-blue)
[![Docs Quality](https://github.com/stekhoven/reprolevel/actions/workflows/docs-quality.yml/badge.svg)](https://github.com/stekhoven/reprolevel/actions/workflows/docs-quality.yml)
[![Citation Validation](https://github.com/stekhoven/reprolevel/actions/workflows/citation.yml/badge.svg)](https://github.com/stekhoven/reprolevel/actions/workflows/citation.yml)
![GitHub last commit](https://img.shields.io/github/last-commit/stekhoven/reprolevel)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/stekhoven/reprolevel)
[![DOI](https://img.shields.io/doi/10.5281/zenodo.8334928)](https://doi.org/10.5281/zenodo.8334928)

Zenodo DOI: <https://doi.org/10.5281/zenodo.8334928>

**Author:** Daniel J. Stekhoven, stekhoven@nexus.ethz.ch

**Status:** Active draft and open for community input

**Current framework version:** `1.0.0`

## What this repository is

This repository develops a practical framework for thinking about **levels of computational reproducibility** in everyday research.

The core idea is simple:

- reproducibility is not all-or-nothing;
- most researchers are somewhere in between "fully ad hoc" and "fully automated";
- it helps to have a language for describing where we currently are;
- it helps even more if that language is constructive, non-shaming, and actionable.

The `repro levels` in this repository are meant to be a **reflective self-assessment tool**, a **conversation starter**, and a **community artefact** that can improve over time.

This project is also being developed with a future **F1000Research opinion piece** in mind. The paper will present the framing and argument, while this GitHub repository is intended to remain the living, evolving home of the framework.

## Why this exists

Reproducibility is often discussed in one of two unhelpful ways:

- as a binary standard that you either satisfy or fail;
- as a shopping list of tools, without enough attention to real research practice.

This project takes a different approach. It asks:

- What does reproducibility look like in practice?
- What is "reproducible enough" for a given project?
- How can researchers improve without feeling punished by unrealistic ideals?
- How can we describe progress in a way that is meaningful across disciplines and team sizes?

The aim is not to police people. The aim is to help researchers locate themselves, identify the next sensible improvement, and build a shared vocabulary around computational reproducibility.

## The levels

The current framework is organised into five narrative levels:

1. **Level 1 - Ephemeral Work**
2. **Level 2 - Carpe Diem**
3. **Level 3 - Sweet Spot**
4. **Level 4 - Assembly Line**
5. **Level 5 - Nirvana**

The detailed descriptions live in the [`levels/`](levels/) directory:

- [`levels/level1.md`](levels/level1.md)
- [`levels/level2.md`](levels/level2.md)
- [`levels/level3.md`](levels/level3.md)
- [`levels/level4.md`](levels/level4.md)
- [`levels/level5.md`](levels/level5.md)

These levels are intended as practical archetypes, not rigid boxes. Real projects and real people often span multiple levels at once. Someone might be at Level 3 for code organisation, Level 2 for documentation, and Level 1 for environment capture. That is normal.

## Repository structure

- [`README.md`](README.md): project overview, navigation, citation, and governance summary
- [`levels/`](levels/): the five detailed level descriptions
- [`reprolevel_manuscript.Rmd`](reprolevel_manuscript.Rmd): current manuscript draft
- [`reprolevel_manuscript.html`](reprolevel_manuscript.html): rendered manuscript output
- [`CONTRIBUTING.md`](CONTRIBUTING.md): contribution process and style guidance
- [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md): community standards
- [`GOVERNANCE.md`](GOVERNANCE.md): maintainers, decision-making, and versioning policy
- [`CHANGELOG.md`](CHANGELOG.md): notable framework changes across versions
- [`CITATION.cff`](CITATION.cff): machine-readable citation metadata
- [`examples/`](examples/): optional community examples and case studies
- [`.github/`](.github/): issue templates, PR template, and CI workflows
- [`img/`](img/): figures and visual assets
- [`slides/`](slides/): talks and presentation material

## How to use this repository

You can use this repository in several ways:

- **For self-assessment:** read through the levels and decide which description best fits your current practice.
- **For teaching and discussion:** use the levels in courses, lab meetings, onboarding, or research software training.
- **For project reflection:** discuss where a specific project sits today and what the next useful step would be.
- **For framework development:** suggest wording changes, missing dimensions, examples, counterexamples, or new use cases.

## Contribution and governance

Contributions are very welcome.

Useful contributions include:

- clarifying the wording of existing levels;
- pointing out conceptual inconsistencies;
- proposing missing dimensions of reproducibility;
- suggesting examples from different disciplines;
- identifying where a level overstates or understates what is realistically achievable;
- improving the manuscript framing;
- proposing ways to make self-assessment more reliable and more helpful.

The contribution workflow is:

1. Open an issue to discuss substantial proposed changes, especially for changes to level definitions or framework concepts.
2. Refine the proposal with maintainers and contributors.
3. Open a pull request linked to the issue.
4. Obtain maintainer review before merging.

Major changes to level definitions, governance, or framework structure require explicit maintainer approval.

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for the detailed process and [`GOVERNANCE.md`](GOVERNANCE.md) for how decisions are made.

## Style guide

To keep the framework readable and coherent, contributors should aim for:

- British English spelling and punctuation;
- a constructive, non-shaming tone;
- plain, direct language;
- descriptions of capabilities and outcomes rather than tool brand loyalty;
- examples grounded in real research practice.

## Versioning and releases

This project adopts **semantic versioning** for the framework.

- **Major versions** reflect substantial changes to the framework structure or interpretation.
- **Minor versions** reflect meaningful extensions or revisions to level definitions, governance, or supporting materials.
- **Patch versions** reflect smaller corrections such as wording, formatting, citation metadata, or non-substantive fixes.

The current public release is `1.0.0`.

Releases should:

- be tagged in GitHub using semantic version tags such as `v1.0.0`;
- be archived in Zenodo or a similar service to mint a DOI;
- update [`CITATION.cff`](CITATION.cff), [`CHANGELOG.md`](CHANGELOG.md), and the citation section of this README;
- clearly state which framework version corresponds to any formal publication.

## Citation

Please cite the repository version you used.

Preferred citation for `v1.0.0`:

- Zenodo DOI: `10.5281/zenodo.8334928`
- DOI link: https://doi.org/10.5281/zenodo.8334928
- Repository version: `v1.0.0`

Once the F1000Research article is available, this section should also include the linked article citation.

Machine-readable citation metadata is available in [`CITATION.cff`](CITATION.cff).

## Formal publications

Formal publication information should be listed here once available.

- F1000Research article: placeholder until publication
- repository version aligned with the paper: `v1.0.0`

## Publication sync

The repository and the future paper serve related but different purposes.

- The **paper** is intended to present the motivation, framing, and opinionated argument for why a levels-based view is useful.
- The **repository** is intended to remain the open, revisable, community-facing version of the framework.

Once the F1000Research article is published, this README should document:

- the exact repository version described by the paper;
- the formal citation for the article;
- the fact that later repository versions may extend beyond the published paper;
- where readers can find the latest living version of the framework.

Planned publication linkage:

- `v1.0.0`: first public release intended to align with the first published F1000Research article
- later versions: living updates based on community input and framework evolution

## Automation and quality checks

GitHub Actions workflows are provided for:

- Markdown linting;
- spell-checking;
- link checking;
- citation metadata validation.

These workflows are intended to run on pull requests and on `main`. In GitHub repository settings, configure them as required status checks before merge.

## Branch protection and repository settings

Some repository controls must be enabled in the GitHub web interface rather than from within the repository itself.

Recommended settings for the `main` branch:

- require pull requests before merging;
- require at least one approving review;
- require status checks to pass before merging;
- restrict direct pushes to `main`;
- optionally require branches to be up to date before merging.

These settings are described here, but must be configured manually by a repository administrator.

## Community examples

Community examples and case studies can be shared through:

- the optional [`examples/`](examples/) directory;
- GitHub Discussions, if enabled for the repository.

Examples are especially valuable if they show how the framework applies in different disciplines, team structures, or computational settings.

## Licence

This repository uses a mixed licensing model:

- written content and framework prose are released under **CC BY 4.0**;
- code, templates, and automation files are released under the **MIT License**.

See [`LICENSE`](LICENSE) for details.

## Contact

Daniel J. Stekhoven  
stekhoven@nexus.ethz.ch

If this framework is useful in your group, course, or project, or if you strongly disagree with parts of it, that is exactly the kind of feedback that can make it better.
