# The R-Word: From Ephemeral Work to Reproducibility Nirvana

**Author:** Daniel J. Stekhoven, stekhoven@nexus.ethz.ch
**Date:** 2025-02-21

---

**Lead**

Reproducibility is sometimes seen as an added chore—a hurdle to jump after our main analysis is done. In reality, reproducible research can save us from costly mistakes, clarify our thought processes, and foster more collaborative science. By adopting a handful of best practices, we not only help others replicate our work but also streamline our own research and reduce frustrations.

---

## 2. Introduction: Definitions of Reproducibility

Reproducibility means that someone else (or a future version of ourselves) can re-run our analyses or experiments and arrive at the same results. This concept goes beyond just computational steps. It intersects with how we:

- Collect and document raw data
- Use computational tools and workflows
- Track different versions of code and data
- Publish and share results in an open, accessible manner

In practice, reproducibility doesn’t have to mean extra overhead or busywork. By applying a few structured habits and the right tools, the outcome becomes more robust, traceable, and easier to share.

---

## 3. The Holy Trinity of (Computational) Reproducibility

1. **Version Control** (e.g., Git, GitHub, GitLab)  
   - Track and manage changes in your code, scripts, and configurations.  
   - Roll back to previous states and collaborate without overwriting each other’s work.

2. **Workflow Management** (e.g., Snakemake, Nextflow, Makefiles)  
   - Orchestrate your analysis steps so they run in a predictable, documented order.  
   - Makes rerunning or updating a portion of your pipeline straightforward.

3. **Containers** (e.g., Docker, Singularity)  
   - Package your environment—libraries, languages, tools—into a portable unit.  
   - Eliminates the “it works on my machine” problem by standardizing setups.

### The Lesser Trinity of (Computational) Reproducibility

1. **Data Management** (e.g., openBIS, DVC, Zenodo)  
   - Ensure large or raw data is consistently tracked and versioned.  
   - Provide metadata that describes how data was collected, formatted, and processed.

2. **Documentation**  
   - A thorough README, lab notebooks (electronic or otherwise), and inline code comments.  
   - The “why” behind your steps is as important as the “how.”

3. **Continuous Integration (CI)** (e.g., GitHub Actions, GitLab CI)  
   - Automatically test your code and workflows whenever changes are made.  
   - Catches mistakes early and keeps workflows in a consistently runnable state.

---

## 4. The Five Levels of Reproducibility

Below is the same framework for classifying stages of reproducibility, but **transposed** so that levels appear as columns. Each row describes a different dimension: **Name**, **Tools**, **Ability to Reproduce**, and **Risk of Mistakes**.

|                       | **Level 1**             | **Level 2**                             | **Level 3**                                                    | **Level 4**                                                                          | **Level 5**                                                      |
|-----------------------|--------------------------|-----------------------------------------|----------------------------------------------------------------|--------------------------------------------------------------------------------------|-------------------------------------------------------------------|
| **Name**             | Ephemeral Work           | Carpe Diem                              | Sweet Spot                                                     | Assembly Line                                                                        | Nirvana                                                          |
| **Tools**            | Local spreadsheets, untracked scripts, file sharing via email/USB | Basic Git usage, simple README, manual installs, partial ELN | GitHub/GitLab, conda/virtualenv, lightweight containers, workflow scripts | Full containerization (Docker/Singularity), advanced workflow managers (Snakemake, Nextflow), data versioning, CI | Single-command rebuild, integrated CI/CD, DOIs, automated docs   |
| **Ability to Reproduce** | Almost none – relies on memory and loose notes | Partially feasible (short-term)         | Moderate to good – structured enough for re-runs and sharing  | High – pipelines can be re-run with minimal setup                                    | Near-perfect – trivially reproducible and shareable              |
| **Risk of Mistakes** | Extremely high – no checks, no versioning | Fairly high – minimal oversight, errors slip in | Moderate – some safeguards (versioning, environment management) | Low – automation/CI checks catch many errors early                                  | Minimal – testing and documentation are comprehensive             |

---

## 5. Concluding Remarks

Reproducibility may start as a small change to daily habits—switching to Git, writing short scripts, or containerizing an environment. Over time, this foundation becomes a powerful framework that:

- **Reduces effort** in the long run by cutting down on guesswork.
- **Builds trust** within the research community and with collaborators.
- **Facilitates innovation** by making it easier to build on previous work.

No matter where you currently stand, taking steps toward a higher level of reproducibility often pays off—both for you and the broader scientific community.

---

## 6. References

- [OpenBIS](https://labnotebook.ch/) – An electronic lab notebook and data management solution.  
- [Zenodo](https://zenodo.org/) – A platform for archiving research outputs with DOIs.  
- [GitHub Actions](https://github.com/features/actions) – A popular CI platform.  
- [Snakemake](https://snakemake.readthedocs.io/) and [Nextflow](https://www.nextflow.io/) – Workflow management systems.  
- [DVC (Data Version Control)](https://dvc.org/) – Data and model versioning for machine learning.
