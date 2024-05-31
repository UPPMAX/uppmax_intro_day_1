# Software and tools
```{objectives}
- We'll briefly get overviews over 
    -  software tools on UPPMAX
    -  databases
- Introduction quide for installing own software or packages
- Very short introduction to developing old programs
```

- 800+ programs and packages are installed.
- To avoid chaos and collisions, they are managed by a **module system**.
- This system keeps installed software hidden by default, and users have to explicitly tell their terminal which version of which software they need.
- The modules are most often available across cluster (except for Miarka)


```{note}
- Bioinformatics tools require loading the “bioinfo-tools” module first.
```

## Modules

- [Software at UPPMAX](https://www.uppmax.uu.se/resources/software/)
- [Module system](https://www.uppmax.uu.se/resources/software/module-system/)

### Some commands

- list all available modules (also bio-informatics if `bioinfo-tools` is loaded)
  - `module avail` or `ml av`

- Search for modules (full name not needed and case insensitive) 
  - `module avail <part of tool name>` or `ml av <part of toolname>`

- Load a module 
  - `module load <module name>` or `ml <module name>`

- Unload a module 
  - `module unload <module name>` or `ml -<module name>`

- List loaded modules 
  - `module list` or `ml`

- Display a brief module-specific help (not available for all modules)
  - `module help <module name>` or `ml help <module name>` 
 
- Search (like `avail`) but otherwise hidden modules (`bioinfo-tools` and Easybuild modules) 
  -  `module spider <part of tool name>` or `ml spider <module name>` 

## Installed software
- You can also find (almost) all installed software at:
    <https://www.uppmax.uu.se/resources/software/installed-software/>
  
## Installed databases
- [Installed databases at UPPMAX](https://www.uppmax.uu.se/resources/databases/)
    
``````{challenge} Hands on using a tool
1. use matlab

```  {code-block} console
$ matlab &
```
- Does not work!
- Load module first
```  {code-block} console
$ module avail matlab
```
- `module load matlab` will start <u>D</u>efault version (often latest) demarked with a D in the list
- Let's load a specific version, often good for reproducibility.

```  {code-block} console
$ module load matlab/R2020b

$ matlab &
```
- Matlab starts (if X11 is active)

2. use Samtools

``` {code-block} console
$ module load samtools

        "These module(s) or extension(s) exist but cannot be loaded as requested: "samtools""
```
```  {code-block} console
$ module load bioinfo-tools samtools
```
- Bioinformatic tools are hidden by default

``````

## Install software yourself
- You can install in your home directory.
  - This is handy for personal needs, low numbers of files (i.e. not Conda).
- Usually better to install in project directory.
  - This way the project contains both data and software — good for reproducibility, collaboration, and everyone's general sanity.

### Python packages
- [Python packages](https://uppmax.uu.se/support/user-guides/python-user-guide/)

#### Conda
- [Conda user guide](https://www.uppmax.uu.se/support/user-guides/conda-user-guide/)

### "Containers"
#### Singularity
- [Singularity user guide](https://www.uppmax.uu.se/support/user-guides/singularity-user-guide/)

#### Docker
- Docker will unfortunately not work on the clusters, since it requires root permission.

### Build from source
- We have several compiler versions from GNU and INTEL
- [Compiling from source code](https://www.uppmax.uu.se/support/user-guides/compiling-source-code/)
- [Guide for compiling serial and parallel programs](https://www.uppmax.uu.se/support/user-guides/mpi-and-openmp-user-guide/)
    
### Spack
- The UPPMAX staff has already other ways to install most software applications. 
- Please use Spack only if other ways to install your tool is not possible or very difficult, e.g. requiring very many dependencies and it is not available through, e.g. Easybuild.
- [Spack user guide at UPPMAX](https://www.uppmax.uu.se/support/user-guides/spack-on-uppmax/)

### Own development...
- You may have your own code that you want to run on UPPMAX.
- See the [guide for compiling serial and parallel programs](https://www.uppmax.uu.se/support/user-guides/mpi-and-openmp-user-guide/)
- [User guide for debuggers and profilers](https://www.uppmax.uu.se/support/user-guides/debuggers-and-profiling-tools/)

## Run own scripts or programs
- Unless your script or program is in the active path, you run it by the full path or `./<file>` if you are in the present directory.

```{challenge} Demo: Run a Fortran program 
- Run the program "sunray" located in: `/proj/introtouppmax/labs/sunray`
```
``````{solution}
- 2 alternatives
```  {code-block} console
 /proj/introtouppmax/labs/sunray
 
 cd /proj/introtouppmax/labs/
 ./sunray
```
``````

```{keypoints}
- Centrally installed software are reached through the module system and available throughout all nodes.
- Your own installed software, scripts, python packages etcetera are available from their paths.
```
