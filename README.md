# Reproducibility Levels in Practice

_A living framework for reflecting on, discussing, and improving computational reproducibility._

![GitHub License](https://img.shields.io/github/license/stekhoven/reprolevel)
![GitHub last commit](https://img.shields.io/github/last-commit/stekhoven/reprolevel)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/stekhoven/reprolevel)

**Author:** Daniel J. Stekhoven, stekhoven@nexus.ethz.ch

**Status:** Active draft and open for community input

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

## How to use this repository

You can use this repository in several ways:

- **For self-assessment:** read through the levels and decide which description best fits your current practice.
- **For teaching and discussion:** use the levels in courses, lab meetings, onboarding, or research software training.
- **For project reflection:** discuss where a specific project sits today and what the next useful step would be.
- **For framework development:** suggest wording changes, missing dimensions, examples, counterexamples, or new use cases.

## Repository structure

- [`README.md`](README.md): project overview and contribution entry point
- [`reprolevel_manuscript.Rmd`](reprolevel_manuscript.Rmd): current manuscript draft
- [`reprolevel_manuscript.html`](reprolevel_manuscript.html): rendered manuscript output
- [`levels/`](levels/): detailed descriptions of the five levels
- [`img/`](img/): figures and visual assets
- [`slides/`](slides/): talks and presentation material

## Relationship between the repository and the paper

The repository and the future paper serve related but different purposes.

- The **paper** is intended to present the motivation, the framing, and the opinionated argument for why a levels-based view is useful.
- The **repository** is intended to remain the open, revisable, community-facing version of the framework.

That distinction matters. A journal article is versioned and citable. A GitHub repository can continue to absorb examples, criticism, refinements, and extensions. Ideally, future paper versions and repository releases should inform each other without freezing the framework prematurely.

## Contributing

Contributions are very welcome.

Useful contributions include:

- clarifying the wording of existing levels;
- pointing out conceptual inconsistencies;
- proposing missing dimensions of reproducibility;
- suggesting examples from different disciplines;
- identifying where a level overstates or understates what is realistically achievable;
- improving the manuscript framing;
- proposing ways to make self-assessment more reliable and more helpful.

If you would like to contribute, a good starting point is to open an issue or pull request with one of the following:

- a suggested edit to a level description;
- a concrete example of a project that fits a given level;
- a concern about terminology or correctness;
- an idea for making the framework easier to use in teaching, labs, or publications.

When suggesting changes, it is especially helpful to explain:

- what part you think should change;
- why the current wording is insufficient;
- whether your suggestion is about clarity, correctness, scope, tone, or usability;
- whether the change should apply across all disciplines or mainly in a specific context.

## What kinds of improvements are especially welcome

The framework will likely become more useful if it grows in the following directions:

- **Clearer self-assessment criteria:** short checklists or rubrics that complement the narrative descriptions.
- **Examples and personas:** worked examples from different kinds of research practice.
- **Multidimensional assessment:** code, data, environment, workflow, documentation, verification, and sharing could be assessed separately.
- **Upgrade paths:** practical advice for moving from one level to the next without unnecessary overhead.
- **Better publication linkage:** tighter coordination between GitHub releases and manuscript versions.

## Principles behind the framework

This project currently leans on a few working principles:

- **Constructive over punitive:** the levels should help people improve, not shame them.
- **Practice over posturing:** the framework should describe what researchers actually do, not just ideal tool stacks.
- **Capabilities over brand names:** tools matter, but outcomes matter more than whether one uses a particular platform.
- **Fit-for-purpose reproducibility:** not every project needs the same level of automation or infrastructure.
- **Community revision:** the framework should get better through critique, examples, and iteration.

## Current manuscript

The manuscript draft is in [`reprolevel_manuscript.Rmd`](reprolevel_manuscript.Rmd). It currently combines:

- background on definitions of reproducibility;
- motivation for a practical framing;
- a five-level model of computational reproducibility.

This is still a draft and should be read as such. The repository is the best place to suggest conceptual improvements before the framework is formalised in a journal article.

## Citation and reuse

For now, please cite the repository URL and author if you use or discuss this framework. Once a paper and versioned releases are in place, more formal citation guidance should be added here.

The project is released under the terms of the [`LICENSE`](LICENSE).

## Contact

Daniel J. Stekhoven  
stekhoven@nexus.ethz.ch

If this framework is useful in your group, course, or project, or if you strongly disagree with parts of it, that is exactly the kind of feedback that can make it better.
