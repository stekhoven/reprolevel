# AGENTS.md

Guidance for Codex and similar coding agents working in this repository.

## Project purpose

This repository develops **Reproducibility Levels in Practice**, a living framework for describing and improving levels of computational reproducibility in research.

The repository has two linked roles:

- a **living GitHub artefact** for community refinement;
- a **publication-aligned snapshot** for versioned citation and external reference.

Changes should preserve both roles.

## Primary goals when editing

Prefer changes that improve one or more of the following:

- conceptual clarity of the framework;
- consistency across the five level descriptions;
- usability for self-assessment, teaching, and discussion;
- alignment between repository metadata, releases, and citation files;
- contributor friendliness and long-term maintainability.

Avoid changes that add unnecessary process, jargon, or tool evangelism.

## Core files

High-priority files and directories:

- `README.md`: repository overview, citation guidance, release/publication alignment
- `levels/level1.md` to `levels/level5.md`: the core narrative level descriptions
- `reprolevel_manuscript.md`: manuscript draft
- `CONTRIBUTING.md`: contribution rules and writing guidance
- `GOVERNANCE.md`: maintainership, decision-making, and versioning policy
- `CHANGELOG.md`: release history
- `CITATION.cff`: machine-readable citation metadata
- `.github/`: issue templates, PR template, and CI workflows
- `.github/workflows/`: CI workflows for docs quality and citation validation

If GitHub Pages or Jekyll is introduced later, treat site configuration and published content as high-priority as well, especially files such as:

- `docs/`
- `_config.yml`
- Jekyll layouts, includes, and page templates
- navigation or landing-page content derived from the framework files

If changing versioning, citation, or release-related information, update all relevant files together.

## Writing and editing guidance

Use:

- British English spelling
- a constructive, non-shaming tone
- plain, direct language
- realistic examples grounded in research practice

Preserve the established Markdown structure and heading hierarchy of each file where possible. In particular, level files should continue to read like a matched set rather than five unrelated essays.

Prefer describing **capabilities and outcomes** over prescribing specific tools.

Do not casually rename the five levels or substantially redefine them without making corresponding updates across:

- `README.md`
- `levels/`
- `GOVERNANCE.md`
- `CHANGELOG.md`
- release notes or citation metadata where relevant

## Expected workflow for agents

When making changes:

1. Read the relevant local files first.
2. Keep edits focused and consistent with the repository’s current structure.
3. When changing framework meaning, check for cross-file consistency.
4. Prefer small, reviewable patches over broad rewrites.
5. For substantial conceptual changes, prefer issue-first discussion before implementation.
6. Summarise what changed and note any follow-up actions that still require a human.

## Validation

When editing documentation or metadata, prefer to verify relevant checks when practical:

- Markdown quality via `.github/workflows/docs-quality.yml`
- citation metadata validity via `.github/workflows/citation.yml`
- spelling and link integrity for changed markdown files

If a GitHub Pages or Jekyll site is added, also verify that site-specific configuration, navigation, and generated pages remain consistent with the source framework content.

Treat CI as a gatekeeper. Prefer fixing documentation or metadata issues rather than weakening checks unless a rule is clearly a poor fit for the repository.

If version or DOI information changes, verify consistency across:

- `README.md`
- `CITATION.cff`
- `CHANGELOG.md`

## Release and citation hygiene

The repository uses semantic versioning.

For any release-preparation change, keep the following in sync:

- current version in `README.md`
- `version` and preferred citation fields in `CITATION.cff`
- release notes or `CHANGELOG.md`
- DOI references if a Zenodo record already exists

Current publication/release expectations:

- `v1.0.0` is the first public, citable framework release
- later versions may evolve beyond the publication snapshot
- the README and citation metadata should make it clear when the repository has moved beyond a publication-aligned snapshot

## Things to avoid

- introducing inconsistent terminology across levels
- changing licensing or governance text casually
- adding placeholder metadata unless clearly marked and necessary
- making the framework more punitive, rigid, or tool-dependent than intended
- breaking citation, DOI, or release alignment

## Human decisions likely needed

Pause and ask before making decisions with non-obvious policy implications, including:

- changing the governance model
- changing the licensing approach
- changing the names or ordering of the levels
- changing publication-alignment statements
- changing DOI or citation targets
- merging substantial conceptual changes without explicit maintainer approval

## Done criteria

An agent task is not fully done unless the following are true where relevant:

- the edited files remain internally consistent
- related metadata and documentation have been updated together
- CI-relevant issues introduced by the change have been addressed
- any follow-up human action needed for releases, DOI updates, or publication sync has been clearly noted

## External source preference

If you need to look up guidance about Codex or OpenAI-specific tooling, prefer official OpenAI documentation first.
