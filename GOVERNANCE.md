# Governance

## Purpose

This document explains how the ReproLevel repository is maintained, how decisions are made, and how framework changes are versioned.

## Maintainers

The current maintainer is:

- Daniel J. Stekhoven

Additional maintainers may be added over time. This document should be updated when maintainership changes.

## Responsibilities of maintainers

Maintainers are responsible for:

- stewarding the overall direction of the framework;
- reviewing and merging contributions;
- maintaining the coherence of the level definitions;
- deciding when proposed changes warrant version bumps;
- keeping release metadata, citation metadata, and project documentation in sync;
- upholding the Code of Conduct.

## Decision-making

This repository aims for open discussion and practical consensus.

The expected process is:

1. A substantial proposal is opened as a GitHub issue.
2. Maintainers and contributors discuss the proposal.
3. If there is broad agreement, the proposal is implemented through a pull request.
4. A maintainer decides whether to merge, request revisions, defer, or reject the change.

Maintainers should favour decisions that improve:

- conceptual clarity;
- fairness across disciplines and team sizes;
- usefulness for self-assessment;
- alignment with the project’s constructive tone;
- internal consistency across the framework.

## Major framework changes

The following normally count as major framework changes:

- redefining one or more levels in a way that changes interpretation;
- adding or removing a level;
- introducing a new core assessment dimension;
- changing the governance or release model in a substantial way;
- making changes that materially affect the relationship between the repository and the published paper.

Major framework changes require:

- prior discussion in an issue;
- a pull request linked to that issue;
- explicit maintainer approval before merge.

## Versioning policy

This project uses semantic versioning for the framework.

- **Major** version changes are for substantial conceptual or structural changes.
- **Minor** version changes are for meaningful content additions or revisions that extend the framework while preserving its overall structure.
- **Patch** version changes are for minor corrections, editorial fixes, metadata updates, or other non-substantive adjustments.

Examples:

- `1.0.0`: first publication-aligned public release
- `1.1.0`: meaningful revisions to level definitions or contributor-facing process
- `1.1.1`: typo fixes, citation updates, or documentation corrections

## Publication and release sync

When a release corresponds to a formal publication, the repository should record:

- the matching repository version;
- the formal publication citation;
- the relevant DOI or archived release identifier;
- any known divergence between the publication snapshot and later living versions.

The published paper should also direct readers to the repository as the living home of the framework.

## Changelog and release notes

Significant framework changes should be recorded in:

- [`CHANGELOG.md`](CHANGELOG.md), or
- GitHub release notes if that is used as the primary release record.

For publication-aligned releases, both are recommended.
