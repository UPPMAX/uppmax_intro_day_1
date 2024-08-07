# The module system

!!!- info "Learning objectives"

    - Understand why there is a module system
    - Can find pre-installed software using the module system
    - ?Can find pre-installed databases using the module system
    - Can load a module
    - Practice loading the `bioinfo-tools` module first
    - Understand that there are many ways one can install software with some effort

## Why?

Each UPPMAX cluster is a shared resource.
Ideally, our work is not hindered by others (and vice versa).
This is a problem when two users want to have different versions
of the same software installed: one cannot do a regular system-wide
installation anymore.

The module system solves this problem: each user can
search for the desired version of the desired software and activate it.

In this session, we'll search for pre-installed software
and activate it.

## Modules

- 800+ programs and packages are installed.
- This system keeps installed software hidden by default,
  and users have to explicitly tell their terminal which version of which software they need.
- The modules are most often available across cluster


```{note}
- Bioinformatics tools require loading the “bioinfo-tools” module first.
```

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

- [UPPMAX software](http://docs.uppmax.uu.se/software/overview/)
- Give an estimate of the amount of pre-installed programs


### Exercise 2: find the databases

- [UPPMAX databases](http://docs.uppmax.uu.se/databases/overview/)
- Give an estimate of the amount of pre-installed databases

### Exercise 3: work with modules

- [Module system](http://docs.uppmax.uu.se/cluster_guides/modules/)

- Load/use/unload the cowsay module

### (optional) Exercise 4: install software yourself

- Read text above
