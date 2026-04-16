# Level 1 – Ephemeral Work

*The “here today, gone tomorrow” approach to computational analysis.*

## What does Level 1 look like?

At **Level 1**, your analysis lives in the moment. Work is done in an ad-hoc, manual way, often with no consistent record of how results were obtained. You might run a series of commands or make edits interactively (for example, tinkering in a spreadsheet or executing code line-by-line in a console) and get the output you need *right now*. Once the result is achieved, the exact process may exist only in your memory or scribbled in rough notes. In short, **Level 1 is characterised by analyses that are not designed to be re-run or verified later** – they “work today, maybe not tomorrow.”

It’s a bit like cooking without a recipe: you throw in a pinch of this and that, and it tastes fine, but you’d struggle to recreate the dish exactly next time (and sharing the recipe with others is nearly impossible because, well, you never wrote it down). This is a common starting point for many researchers, especially under tight deadlines or during initial exploration. There’s no shame in having work at this level – we’ve all been there – but it’s the baseline from which we usually strive to improve.

## Typical characteristics and behaviours

*   **Manual, interactive workflow:** Almost everything is done by hand or in an interactive session. You might be using point-and-click interfaces or running code snippets interactively without saving the full script.
*   **No version control or automation:** There’s no use of Git or any formal version tracking. Each analysis run is a one-off, and if you tweak something, you might not track the change anywhere except in the results.
*   **Minimal documentation:** The primary “documentation” is your own memory. You might have a few informal notes (e.g. in a lab notebook or scattered text files), but there’s no comprehensive README or record of steps. It’s assumed you’ll remember what you did.
*   **Results over process:** The focus is on getting the result, not on maintaining a reproducible process. As long as you have *an answer* (a figure, a statistic, a conclusion), you’re satisfied – even if you couldn’t reproduce that answer exactly later.
*   **Inconsistent file management:** Files and data might be organised in a haphazard way on your computer (think `MyAnalysis_final` and `MyAnalysis_final2` folders). Naming conventions are inconsistent, and old versions of files might be overwritten rather than saved separately.
*   **Personal scope:** The work is usually solo. If you’re in a team, each person might have their own method, and combining or comparing results can be tricky because there isn’t a shared, systematic process.

## Typical tools and artefacts

*   **Spreadsheets with manual edits:** Many analyses at this level happen in Excel or similar programmes. You might apply formulas or colour-code cells by hand. The “code” is essentially hidden in the spreadsheet and not extracted as a script.
*   **Interactive computing environments:** You might use R or Python via interactive GUIs (RStudio, Jupyter notebooks) but without cleanly saving the code. Perhaps you run a few commands for statistics or plots in a console, inspect the output, and move on.
*   **Copy-and-paste pipelines:** Instead of scripts chaining tasks, you copy results from one program to another. For example, copying a table from a stats program into a Word document, or manually exporting a CSV from one tool and importing it into another.
*   **Informal notes and paper trails:** You might keep some notes in a Word doc, a text file, or on paper about what you did (“ran regression on subset”, “removed outliers manually”), but these are incomplete and for your eyes only.
*   **Ad-hoc scripts and files:** There may be some scripts or code files (e.g. `analysis_final.R` or `script.py`), but they’re not full pipelines – just bits of code you ran. They might not work on a new machine without fiddling.
*   **Email or personal cloud sharing:** If you need to share data or results, you likely email the file to a colleague or upload it to a personal Dropbox/Google Drive. There’s no central repository or project folder everyone accesses – and different people might end up with slightly different files.

## What works well at this level

*   **Quick ramp-up:** You can jump straight into analysis with minimal setup. This is *fast* for getting initial answers or exploring data. No time is spent on configuring tools or writing boilerplate – you’re doing exactly what you need to do in the moment.
*   **High flexibility:** Nothing is locked down, so you can adapt on the fly. If you get an unexpected result, you can quickly try something else by manually changing a parameter or editing a cell. There’s a certain freedom in not being constrained by a predetermined pipeline.
*   **Low overhead:** You’re not burdened by learning or maintaining technical infrastructure (like Git, container environments, or CI systems). The tools you use (Excel, a stats GUI, basic scripts) are often familiar and straightforward. This can be less intimidating for those new to computational work.
*   **Great for prototyping:** Level 1 approaches are handy during the *brainstorming* or *prototyping* phase of a project. You can test out ideas rapidly. If an idea fails, you haven’t invested much in setting up a whole pipeline – you simply move on to the next idea.
*   **Immediate gratification:** Because you’re focused on results, you often get quick visual or numerical feedback (a plot appears, a table of results updates) which can be satisfying and informative in the short term.

*(It’s worth noting that these “pros” mainly apply in the short run. They are advantages you feel **today**, while working alone. Many of them start to turn into disadvantages when you or others revisit the work later – as we’ll see below.)*

## What can go wrong (risks and limitations)

*   **Hard to reproduce (even by you):** Because the process isn’t fully recorded, **reproducibility is very low**. If you try to repeat the analysis next week (or if someone else tries tomorrow), it’s extremely difficult to get the same result. You might not recall the exact sequence of steps or the specific parameters you used.
*   **Irrecoverable steps:** It’s easy to lose track of transformations you did. For example, you might manually delete some “outlier” data points in a spreadsheet and forget which ones or why. Later, neither you nor anyone else can recover that decision process. Key steps vanish into the ether.
*   **Hidden errors:** Without scripts or checks, mistakes can creep in silently. A copy-paste error, a wrong cell range, or a missed step can skew results, and there’s no clear log to catch it. If something looks off in your final output, you have to manually hunt through your process (or rerun everything by memory) to debug it – if you even notice the error at all.
*   **Not scalable or sharable:** Collaboration is tough at Level 1. If a colleague asks “How did you get this result?” you might end up redoing the analysis while they watch, or trying to narrate from memory. There’s no guarantee you’ll do it exactly the same way. Sharing the work is mostly limited to sharing final outputs (plots, tables) or raw data, but not the process. This means others can’t build on your work easily, or trust that it’s consistent.
*   **Environment drift:** Your results might rely on the specific software environment on your machine (particular software versions, installed packages, settings). Since you haven’t captured those details, if your environment changes (e.g. you update a program, or move to a new computer), the analysis might break or produce different results. It “worked on my machine” and nowhere else.
*   **Long-term loss of knowledge:** Six months or a year later, you may barely remember how you arrived at a figure or conclusion. Without a clear record, you risk duplicating work or failing to update an analysis correctly. Valuable insights can get lost simply because nobody wrote them down in a reproducible form.

## How to know if you’re at Level 1

You might recognise **Level 1** in your own work or lab if several of these ring true:

*   *“All in my head” syndrome:* You rely on personal memory or intuition to repeat analyses. If asked to outline your process, you’d have to think back and possibly redo steps to be sure.
*   **No formal backups or versioning:** The only “backup” of your analysis is perhaps an old copy of a file or results you emailed to yourself. There’s no GitHub/GitLab repository or version control system in use. File versions might be tracked by suffixes like `_final`, `_final2`, `_FINAL_really` (we’ve all seen it!).
*   **Manual everything:** Generating your main results involved a lot of manual effort – clicking buttons, copying values, tweaking spreadsheets. If you had to do it again, you’d follow a series of manual steps rather than running a script.
*   **Results without a recipe:** You have outputs (figures, tables, etc.) but if someone asked for the exact code or commands to produce them, you’d need to scramble to assemble that, and you’re not entirely confident you’d get it 100% right.
*   **Inconsistent organisation:** Your project files lack structure. Data, code, outputs might be all in one folder or scattered. There might be old files you no longer use but haven’t removed (because you’re not sure if you might need them). Documentation is sparse – maybe a few comments in the code or an outdated README, if that.

If the above sounds familiar, you’re likely operating at Level 1 for this project. Don’t worry – **Level 1 is a very common starting point**. The key is recognising it, so you can start to introduce a bit more order and reproducibility when it’s needed.

## Moving beyond Level 1

Ready to graduate from the ephemeral lifestyle? Here are a few **lightweight steps** to help you advance to Level 2 (and beyond) when you’re ready:

*   **Save your work (literally):** Begin by saving the code or commands you run. If you normally work in an interactive environment (like a notebook or console), copy those crucial commands into a script file or notebook and save it. Even if it’s messy or incomplete, having a script is better than nothing – it gives you a starting recipe to tweak later.
*   **Start a simple log or README:** Write down what you do, as you do it. This could be as simple as keeping a dated lab notebook entry or a plain-text README file where you jot down the steps of your analysis. Think of it as leaving breadcrumbs for your future self. It doesn’t need to be perfect prose – bullet points or short notes are fine.
*   **Keep versions (even manual ones):** If you’re not ready for Git, you can still version your work manually. Save copies of important files before you make major changes (e.g., `dataset_before_normalization.csv` and `dataset_after_normalization.csv`). When you refine a script, don’t just save over it – save a new version (e.g., `analysis_v2.R`). This way, you have something to compare if things go awry. (Of course, learning basic Git is a great next step – even just using it locally to track changes – but one step at a time!)
*   **Organise your project folder:** Create a tidier structure for your files. For example, put raw data in a `data/` folder, scripts in a `code/` or `scripts/` folder, and results (plots, tables) in an `outputs/` folder. Consistent file names and locations will help you (and others) navigate the project. It also mentally prepares you for more structured work.
*   **Document key dependencies:** Jot down the software and packages you used. Did you rely on a specific R package or a particular tool version? Note it somewhere (in your README or a requirements file). This doesn’t require mastering environment management – just write “Analysis done in R 4.2 with dplyr 1.0” or “Used Python 3.10 + pandas”. It’s a small gesture with big future payoff.
*   **Experiment with reproducibility tools:** Dip your toes into Level 2 practices. For instance, try using an **electronic lab notebook (ELN)** or a simple notebook app to record analysis steps. Or give Git a shot on a new small project – even if you only use it to track your own changes, it will start building good habits. If you often use Jupyter notebooks, explore exporting the notebook as a `.py` script or using extensions to record the environment.

Remember, you don’t have to overhaul everything at once. Each little improvement – whether it’s writing a short README or saving an extra copy of a key file – is progress. **The aim moving forward is to make your work a bit more repeatable and understandable than it was before.** By doing so, you’ll reduce future headaches for yourself and make any collaboration much smoother. Level 2 will introduce more of these practices, like basic scripting and sharing, at a comfortable pace. When you’re ready, head over to the Level 2 description to see what the next stage looks like and pick up a few more tips.

Feel free to celebrate the successes you’ve had at Level 1 (you’ve gotten real results, after all!), and take pride in deciding to improve. Reproducibility is a journey – and you’re taking the important first step by moving beyond the purely *ephemeral* phase. Good luck, and happy analysing!
