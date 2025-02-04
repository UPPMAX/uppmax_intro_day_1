---
tags:
  - lesson
  - remote
  - desktop
  - environment
  - use
  - usage
  - graphical
---

# The UPPMAX filesystem

!!!- info "Learning outcomes"

    - Can find the UPPMAX project folder of this course
    - Can find out which folders have a backup

???- question "For teachers"

    Teaching goals are:

    - Learners have found the UPPMAX project folder of this course
    - Learners have found find out which folders have a backup

    Prior questions:

    - How do you think the folder structure looks on the UPPMAX HPC clusters?
    - What is the purpose of a home folder?
    - What is the purpose of a project folder?
    - What is the purpose of a `nobackup` folder?

## Why?

You want to know where to put your files.
You want to know if/how your lost files can be retrieved.

## Exercises

???- question "Need a video?"

    `Here` is a video that shows
    the solution of these exercises


### Exercise 1: important folders

- Read [the UPPMAX documentation on Rackham's design](https://docs.uppmax.uu.se/cluster_guides/rackhams_design/#folder-structure)
- What is the name of the folder that contains **all** projects?

???- question "Answer"

    It is called `/proj`.

    The initial slash indicates it is in the root folder.

- Navigate to that folder (in your facorite way!).
  Estimate the number of projects in that folder

???- question "Answer"

    Using the terminal:

    Here we navigate to the `/proj` folder:

    ```bash
    cd /proj
    ```

    Counting the number of folders in that folder:

    ```bash
    ls | wc --lines
    ```

    Gives us around 7000 projects


### Exercise 2: file management

- Read [the UPPMAX documentation on backups](https://docs.uppmax.uu.se/cluster_guides/backup/)

