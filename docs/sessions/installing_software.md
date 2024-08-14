# The module system

!!!- info "Learning objectives"

    - Practice using the UPPMAX documentation
    - Can find pre-installed software from the documentation
    - Can find pre-installed databases from the documentation
    - Understand why there is a module system
    - Can find pre-installed software using the module system
    - Can find pre-installed databases using the module system
    - Can load a module
    - Practice loading the `bioinfo-tools` module first
    - Understand that there are many ways one can install software with some effort

???- question "For teachers"

    Prerequisites are:

    - [...]

    Preparations are:

    - [...]

    Teaching goals are:

    - [...]


    Lesson plan:

    ```mermaid
    gantt
      title Something
      dateFormat X
      axisFormat %s
      section First hour
      Course introduction: done, course_intro, 0, 10s
      Prior : intro, after course_intro, 5s
      Present: theory_1, after intro, 5s
      Challenge: crit, exercise_1, after theory_1, 40s
      Break: crit, milestone, after exercise_1
      section Second hour
      Challenge: crit, exercise_2, 0, 10s
      Feedback: feedback_2, after exercise_2, 10s
      SLURM: done, slurm, after feedback_2, 25s
      Break: done, milestone, after slurm
    ```

    Prior questions:

    - .

## Why?

...

## Install software yourself

- You can install in your home directory.
    - This is handy for personal needs, low numbers of files (i.e. not Conda).
- Usually better to install in project directory.
    - This way the project contains both data and software — good for reproducibility, collaboration, and everyone's general sanity.

- [Python](http://docs.uppmax.uu.se/software/python/)
  with `pip install`
- [Conda](http://docs.uppmax.uu.se/software/conda/)
  with `conda install`
- Docker: does not work
- [Singularity](http://docs.uppmax.uu.se/software/singularity/)
  and upload a container
- Build from source
    - We have several compiler versions from GNU and Intel
    - [Compiling from source code](https://www.uppmax.uu.se/support/user-guides/compiling-source-code/)
    - [Guide for compiling serial and parallel programs](https://www.uppmax.uu.se/support/user-guides/mpi-and-openmp-user-guide/)
- Spack
    - The UPPMAX staff has already other ways to install most software applications.
    - Please use Spack only if other ways to install your tool is not possible or very difficult, e.g. requiring very many dependencies and it is not available through, e.g. Easybuild.
    - [Spack user guide at UPPMAX](https://www.uppmax.uu.se/support/user-guides/spack-on-uppmax/)

## Exercises

[...]

### Exercise 1: find the software

Go to the UPPMAX documentation at [https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Estimate how many pieces of software are installed on Rackham?

???- question "Answer"

    One can find the answer at <https://docs.uppmax.uu.se/software/software-table/>,
    where one can find around 800 pieces of software installed

### Exercise 2: find the databases

- [UPPMAX databases](http://docs.uppmax.uu.se/databases/overview/)
- Give an estimate of the amount of pre-installed databases

### Exercise 3: work with modules

- [Module system](http://docs.uppmax.uu.se/cluster_guides/modules/)

- Load/use/unload the cowsay module

### (optional) Exercise 4: install software yourself

- Read text above
