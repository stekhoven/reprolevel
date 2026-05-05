# Reproducibility Levels in Practice: a pragmatic framework for computational research

**Article type:** Opinion Article

**Author:** Daniel J. Stekhoven

**Affiliation:** ETH Zurich

**Correspondence:** stekhoven@nexus.ethz.ch

## Abstract

Computational reproducibility is often presented as an all-or-nothing
requirement: either an analysis is reproducible, or it is not. In everyday
research, however, reproducibility is usually a matter of degree. Projects
move from ad-hoc exploration, through partial documentation and scripted
workflows, towards portable, automated, and archived computational processes.
Researchers need language that helps them recognise this progression without
turning reproducibility into a punitive checklist or a contest of tools.

This Opinion Article presents Reproducibility Levels in Practice, a five-level
framework for describing computational reproducibility in research workflows.
The levels are: Level 1, Ephemeral Work; Level 2, Carpe Diem; Level 3, Sweet
Spot; Level 4, Assembly Line; and Level 5, Nirvana. Each level describes a
recognisable pattern of practice, including typical artefacts, benefits,
risks, and practical next steps. The framework is intended for self-assessment,
teaching, project planning, and discussion among researchers, research software
engineers, data stewards, and collaborators.

The central argument is that "reproducible enough" depends on context: the
scale of the analysis, the expected lifespan of the project, the number and
distance of collaborators, and the consequences of error. Rather than treating
lower levels as failures, the framework treats them as starting points for
improvement. A levels-based view can make reproducibility more approachable,
more actionable, and more honest about the trade-offs involved in real research
practice.

**Keywords:** computational reproducibility; reproducible research; open
science; research practice; workflow management; version control; containers;
research software engineering

## Introduction

Reproducibility is a central expectation of credible research, but it is also a
term with several overlapping meanings. The National Academies of Sciences,
Engineering, and Medicine define reproducibility as obtaining consistent
computational results using the same input data, computational steps, methods,
code, and conditions of analysis, while reserving replicability for consistent
results across new studies that collect their own data [1]. Goodman and
colleagues distinguish methods reproducibility, results reproducibility, and
inferential reproducibility, thereby separating whether a procedure can be
repeated, whether numerical results are consistent, and whether conclusions are
qualitatively similar [2]. Stodden has also emphasised that reproducibility can
be discussed through different reporting dimensions, including computational,
empirical, and statistical reproducibility [3].

These distinctions matter because failures of research credibility do not have
a single cause. Publication bias, low statistical power, p-hacking, and HARKing
can all damage the reliability of a literature even when the computational work
is well preserved [4]. Conversely, a statistically careful study can still be
hard to check, update, or reuse if the computational path from data to result is
unclear. Some fields also face domain-specific reproducibility problems. In
genomics, for example, stochastic tools, data ordering, and sequencing
variation can complicate the expectation that the same biological sample will
produce identical computational outputs [5].

This article focuses on a narrower but important part of that landscape:
computational reproducibility in everyday research practice. The practical
question is not only "Can this result be reproduced?" but also "By whom, when,
with how much effort, and under what conditions?" An analysis that can be
rerun tomorrow by the original analyst on the same laptop is not equivalent to
an analysis that can be launched by an external reader five years after
publication. Both may represent progress relative to undocumented manual work,
but they serve different purposes and carry different risks.

The Reproducibility Levels in Practice framework was developed to make these
differences easier to discuss [6]. It frames computational reproducibility as a
progression of capabilities rather than a binary label. The aim is not to
shame researchers who are early in the process, nor to imply that every project
must aim for maximal automation. Instead, the framework gives researchers a
shared vocabulary for locating current practice, identifying the next useful
improvement, and deciding what level of reproducibility is proportionate for a
given project.

## Why a levels framework is useful

Many discussions of reproducible research move quickly from principles to
tools: use version control, use a workflow manager, use containers, archive the
data, add continuous integration, publish a computational environment. These
are useful practices, but presented as an undifferentiated list they can feel
like an intimidating shopping basket. For a researcher working under deadline,
the gap between an improvised spreadsheet and a containerised workflow with
continuous integration can appear impossibly large.

A levels framework reduces that gap by making intermediate states visible. It
acknowledges that real projects often improve in stages: first by saving the
commands that generated a figure, then by writing a README, then by using
version control, then by scripting manual steps, then by capturing the
computational environment, and only later by building a fully portable,
automated pipeline. These stages are not merely technical; they also reflect
changes in collaboration, documentation habits, expectations of reuse, and
long-term stewardship.

The framework is intentionally practical and descriptive. It does not attempt
to define a universal certification scheme. A project may sit at different
levels across different dimensions. For example, the code may be well
version-controlled, the data may be carefully documented, but the environment
may still be implicit. A team may have a robust internal workflow that works
well for close collaborators, while remaining difficult for an external reader
to run. The value of the levels is that they make these mixed states discussable
without flattening them into a pass/fail judgement.

## The main dimensions of computational reproducibility

The framework draws attention to several recurring dimensions of computational
research practice. Three are especially central.

First, version control provides a record of change. It makes it possible to
recover earlier states, understand when decisions were made, collaborate
without overwriting each other's work, and connect results to a specific
version of code or documentation.

Second, workflow management makes the order of analysis explicit. This can be
as simple as a clearly named sequence of scripts or as formal as a workflow
engine. The important point is that the path from raw data to outputs is
encoded rather than remembered.

Third, environment capture reduces the "it worked on my machine" problem.
Dependency lists, lock files, virtual environments, and containers all make the
software context more visible and more portable, although they differ in
strength and maintenance cost.

Other dimensions are also essential. Data management determines whether inputs
are stable, documented, and traceable. Documentation explains not only how to
run the analysis, but why key choices were made. Continuous integration and
other automated checks help detect breakage early. Archiving, persistent
identifiers, licences, and governance determine whether a project can be cited,
maintained, and trusted beyond its original team.

The levels should therefore be read as archetypes that combine these
dimensions, not as prescriptions for specific tools. Git, Snakemake, Nextflow,
Docker, Singularity, Binder, Zenodo, and similar tools appear because they are
common routes to certain capabilities. They are examples, not requirements.

## The five levels

Table 1 summarises the five levels. The sections that follow describe each
level in more detail.

**Table 1. Summary of the Reproducibility Levels in Practice framework.**

| Level | Core state | Typical artefacts | Main strength | Main risk | Useful next step |
| --- | --- | --- | --- | --- | --- |
| Level 1: Ephemeral Work | Manual or interactive analysis with little durable record | Spreadsheets, interactive sessions, ad-hoc files, informal notes | Fast exploration with very low setup cost | Steps may be impossible to reconstruct | Save commands, organise files, and write a minimal README |
| Level 2: Carpe Diem | Scripts and notes exist, but reproducibility has a short shelf life | Scripts, notebooks, basic README, manual versions, shared folders | Short-term repeatability for the original analyst | Environment drift and missing steps quickly erode reproducibility | Formalise version control, document dependencies, and remove obvious manual steps |
| Level 3: Sweet Spot | Structured, version-controlled workflow that close collaborators can rerun | Git repository, dependency files, ordered scripts, lightweight pipeline, project documentation | Strong practical reproducibility for many teams | Some setup and validation still rely on human care | Test on a clean setup, add checks, and capture the environment more rigorously |
| Level 4: Assembly Line | Automated, portable workflow from inputs to outputs | Workflow definition, container, configuration files, CI, data versioning, provenance logs | Robust reruns across machines and collaborators | Higher maintenance burden and tool complexity | Improve user experience, archiving, validation, and long-term handover |
| Level 5: Nirvana | Frictionless, archived, reusable, publication-linked reproducibility | One-click environment, reproducible publication package, DOIs, rich metadata, CI/CD, governance | Reproduction and reuse are possible for external readers with minimal help | Significant investment and dependence on sustained stewardship | Maintain, simplify where possible, and support community reuse |

### Level 1: Ephemeral Work

Level 1 describes analyses that are not designed to be rerun or checked later.
Work is often carried out manually or interactively: editing a spreadsheet,
running commands line by line, exporting a file, copying a table into a
document, and moving on once the immediate result is obtained. The process may
exist mainly in the analyst's memory or in scattered notes.

This is a common starting point, especially during exploration. It is fast,
flexible, and familiar. It can be perfectly natural when the aim is to learn
about a dataset, test a quick idea, or produce an internal sketch. The problem
is that the same qualities make the work fragile. Manual transformations are
easy to forget. File versions proliferate. Dependencies remain implicit.
Copy-and-paste errors or hidden spreadsheet edits can be hard to find. A figure
may survive, while the path that created it disappears.

Moving beyond Level 1 does not require a grand technical overhaul. The most
valuable first steps are small: save the code or commands that produced an
output, write down what was done, keep raw data separate from processed data,
give files meaningful names, and record key software dependencies. Even a rough
script and a short README can turn an ephemeral result into something that can
be inspected and improved.

### Level 2: Carpe Diem

Level 2 is the stage of short-term reproducibility. The analyst has started to
capture the work while it is still fresh. There may be scripts, notebooks,
comments, a README, an electronic lab notebook, or a more coherent folder
structure. The work can often be rerun next week or next month, especially on
the same machine by the same person.

This is a major improvement over Level 1. Results are no longer detached from
process. Scripts can be corrected and rerun. Notes can explain decisions. A
colleague may be able to follow the work with guidance. However, the shelf life
is limited. Dependencies may have been installed as needed without version
records. Documentation may lag behind code. Manual steps may remain between
scripts. Version control, if used, may function more as backup than as a
reliable project history.

The priority at Level 2 is to reduce ambiguity. Formal version control,
descriptive commit messages, clearer run instructions, dependency records, and
the automation of obvious manual steps all help. A useful test is to try the
analysis on a clean machine or ask a colleague to follow the documentation.
Every question they ask identifies a place where reproducibility is still
living in the original analyst's head.

### Level 3: Sweet Spot

Level 3 is the practical centre of the framework. At this level, the project
has become structured enough that the original analyst and close collaborators
can rerun major parts of the analysis with confidence. The work is typically in
a version-controlled repository, with meaningful commits, a clear directory
structure, ordered scripts or a lightweight pipeline, and explicit dependency
information. Documentation explains setup and execution. Data cleaning and
analysis steps are mostly scripted, and raw data are not overwritten.

This level is called the Sweet Spot because it often provides a strong balance
between rigour and effort. Many research projects do not need a fully
containerised, continuously deployed infrastructure to be useful, trustworthy,
and maintainable. They need a clear history, scripted steps, enough dependency
capture, and documentation that allows a colleague to get the work running with
limited help.

Level 3 is not perfect. Platform differences can still cause problems. Setup
may require care. Validation may depend on manual inspection rather than
automated tests. External users may find assumptions that are obvious to the
team but not written down. Still, for many projects, Level 3 is a realistic and
valuable target. It is also an excellent base from which to decide whether more
automation is justified.

### Level 4: Assembly Line

Level 4 describes an analysis that behaves like a well-defined production
process. The workflow from inputs to outputs is automated, portable, and
validated. A workflow manager or master script coordinates the steps. A
container or similarly strong environment specification captures the software
context. Configuration files separate parameters from code. Continuous
integration may run tests, build the environment, or execute a smaller version
of the pipeline. Logs and metadata record what happened.

The benefit is that reproducibility becomes routine. A collaborator on a
different operating system, a cluster, or a cloud instance can run the analysis
with minimal setup. Updated data or reviewer requests can be handled by
changing inputs or parameters and rerunning the pipeline. Errors are more
likely to be caught early, and the project becomes much easier to hand over.

The cost is real. Containers, workflow engines, continuous integration, data
versioning, and provenance tracking all require learning and maintenance. For a
small exploratory project, Level 4 may be unnecessary. For a long-lived
pipeline, a high-stakes analysis, or a project with many collaborators, the
investment may be proportionate. The framework is therefore not an argument
that every project should become Level 4. It is an argument that teams should
be able to recognise when Level 4 is worth the effort.

### Level 5: Nirvana

Level 5 is the aspirational end of the scale: reproduction is not only possible
but convenient for people outside the original team. The analysis may be
launchable through a browser or a single command. The computational environment
is archived or otherwise recoverable. The publication itself may be generated
from the same pipeline as the figures and tables. Code, data, environment
snapshots, and releases have persistent identifiers. Documentation covers
setup, use, extension, and governance. The project can be cited, maintained,
and reused beyond the immediate study.

This level is most appropriate when the project is intended to become a public
resource, a teaching example, a reusable research pipeline, or a long-term
reference analysis. It supports trust, transparency, and reuse. Readers can
inspect the work, rerun it, adapt it, and build on it. Future maintainers have
a clearer path for preserving the project.

Level 5 also demands the most sustained commitment. One-click services can
change or disappear. Containers and dependencies need stewardship. Community
contributions require governance. The more infrastructure a project uses, the
more important it becomes to document and maintain that infrastructure. Level 5
is therefore less a universal destination than a high standard for projects
whose value justifies that level of care.

## Using the framework in practice

The simplest use of the framework is self-assessment. A researcher can read the
level descriptions and ask which one best describes a particular project today.
The answer should be allowed to be mixed. A project might be Level 3 for code,
Level 2 for data documentation, and Level 1 for environment capture. That is
not a contradiction; it is useful diagnostic information.

The second use is project planning. Before adding tooling, a team can ask what
kind of future use they expect. Will the work be rerun only by the original
analyst? Will it support a manuscript revision? Will another laboratory need
to reproduce the outputs? Will the code become a community resource? The
desired level should follow from these expectations. A small internal
exploration may be well served by Level 2 or 3. A published, reusable pipeline
may need Level 4 or 5.

The third use is teaching. Reproducibility training often introduces tools in
isolation. The levels provide a narrative for why those tools matter. Version
control is not an abstract virtue; it moves work away from fragile file
versions and towards traceable history. Workflow management is not mere
engineering ornament; it turns remembered sequences into executable structure.
Containers are not a badge of sophistication; they reduce environment
ambiguity when portability matters.

The fourth use is collaboration. Teams can use the levels to make expectations
explicit. A principal investigator may expect a project to be rerunnable by a
new student. A data steward may require archived inputs. A collaborator may
need a container because their institution uses a different operating system.
Instead of debating reproducibility in general terms, the team can discuss
which level is needed for which audience and why.

## Choosing the next improvement

The most useful next step is usually the one that removes the largest source of
future ambiguity with the smallest sustainable effort. For a Level 1 project,
that may mean saving scripts and writing a dated note about what was done. For
a Level 2 project, it may mean adopting version control properly and recording
dependencies. For a Level 3 project, it may mean testing the workflow on a
clean setup, adding simple automated checks, or containerising the environment.
For Level 4, it may mean improving documentation for external users, archiving
release artefacts, or strengthening governance and handover plans.

Several questions are useful across levels:

- If the original analyst is unavailable, who can rerun the work?
- If the project is reopened in one year, what information will be missing?
- Which steps are still manual, assumed, or undocumented?
- Which software, data, and parameter versions produced the current outputs?
- How much effort should an external reader reasonably need to invest?
- What would count as success: rerunning the code, regenerating figures,
  obtaining identical numbers, or reaching the same scientific conclusion?

These questions make clear that reproducibility is not only a technical state.
It is also a relationship between a project, its users, its future, and the
claims being made from it.

## Limitations

The framework has several limitations. First, it is intentionally qualitative.
It offers language for reflection and discussion, not a validated measurement
instrument. More work is needed to test whether different users classify the
same projects similarly, which dimensions are most informative in different
fields, and how the framework performs in teaching or project review.

Second, the levels focus on computational reproducibility. They do not solve
problems of study design, sampling, statistical power, selective reporting,
experimental protocol quality, or inferential robustness. A project can be
computationally reproducible and still be scientifically weak. Conversely, a
well-designed study can lose value if its computational path is poorly
documented. The levels are therefore one part of a broader reproducibility
conversation.

Third, the framework may understate differences between disciplines. A small
qualitative coding project, a genomic workflow, a clinical prediction model,
and a climate simulation have different data constraints, infrastructure
needs, privacy requirements, and norms for sharing. The levels should be
adapted with local judgement rather than applied as a rigid universal ladder.

Finally, any levels framework risks becoming performative. Researchers may feel
pressure to present their work as higher-level than it is, or to adopt tools
that look impressive but do not reduce actual risk. The constructive use of the
framework is the opposite: be honest about the current state, choose the next
improvement that matters, and avoid needless complexity.

## Conclusion

Computational reproducibility is best understood as a set of improvable
capabilities rather than a binary status. The Reproducibility Levels in
Practice framework offers five practical archetypes, from Ephemeral Work to
Nirvana, for describing those capabilities in ordinary research settings. Its
purpose is to help researchers talk clearly about where a project stands, what
risks remain, and what improvement would be most useful next.

The framework is deliberately non-shaming. Level 1 is a common beginning, not a
personal failure. Level 3 may be the right target for many projects. Level 5 is
valuable when broad reuse, long-term preservation, or publication-linked
reproduction justify the investment. By making these distinctions visible, a
levels-based approach can help researchers pursue reproducibility with more
precision, less anxiety, and better alignment with the real demands of their
work.

## Data and software availability

No new research data are associated with this article.

The source framework and versioned repository materials used to prepare this
article are openly available:

- Source repository: <https://github.com/stekhoven/reprolevel>
- Archived framework release: <https://doi.org/10.5281/zenodo.19616402>
- Repository version described by this draft: `v1.0.0`

The repository is licensed under CC BY 4.0 for documentation and MIT for code,
as described in the repository licence file.

## Author contributions

Daniel J. Stekhoven: conceptualisation, methodology, project administration,
writing - original draft, writing - review and editing.

## Competing interests

Daniel J. Stekhoven is the creator and maintainer of the Reproducibility Levels
in Practice framework and repository. No financial competing interests are
declared.

## Grant information

To be completed before submission. If no specific grant supported this work,
the statement may be: "The author declared that no grants were involved in
supporting this work."

## Acknowledgements

To be completed before submission.

## References

1. National Academies of Sciences, Engineering, and Medicine. Reproducibility
   and Replicability in Science. Washington, DC: The National Academies Press;
   2019. doi: <https://doi.org/10.17226/25303>

2. Goodman SN, Fanelli D, Ioannidis JPA. What does research reproducibility
   mean? Science Translational Medicine. 2016;8(341):341ps12.
   doi: <https://doi.org/10.1126/scitranslmed.aaf5027>

3. Stodden V. What scientific idea is ready for retirement? Edge; 2014.
   Reference source:
   <https://www.edge.org/response-detail/25340>

4. Bishop D. Rein in the four horsemen of irreproducibility. Nature.
   2019;568:435. doi: <https://doi.org/10.1038/d41586-019-01307-2>

5. Baykal PI, Labaj PP, Markowetz F, et al. Genomic reproducibility in the
   bioinformatics era. Genome Biology. 2024;25:213.
   doi: <https://doi.org/10.1186/s13059-024-03343-2>

6. Stekhoven DJ. Reproducibility Levels in Practice. Zenodo; 2026.
   doi: <https://doi.org/10.5281/zenodo.19616402>
