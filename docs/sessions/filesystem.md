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

## Exercise 1: important folders

- Read [the UPPMAX documentation on the backup service](https://docs.uppmax.uu.se/cluster_guides/backup/)
- What is the name of the folder that contains **all** projects?

???- question "Answer"

    It is called `/proj`.

    The initial slash indicates it is in the root folder.

- Navigate to that folder (in your favorite way!).
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

- Guess which of these folders has a backup:

    - `/proj/uppmax2025-2-262`
    - `/proj/uppmax2025-2-262/nobackup`
    - `/proj/uppmax2025-2-262/nobackup/backup`
    - `/home/sven`
    - `/home/sven/nobackup`
    - `/home/sven/nobackup/backup`

???- question "Answer"

    <!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

    Folder name                             |Has backup?
    ----------------------------------------|-----------------
    `/proj/uppmax2025-2-262`                |Yes, folders have a backup by default
    `/proj/uppmax2025-2-262/nobackup`       |No, because it has `nobackup` in the name
    `/proj/uppmax2025-2-262/nobackup/backup`|No, because it has `nobackup` in the name
    `/home/sven`                            |Yes, folders have a backup by default
    `/home/sven/nobackup`                   |No, because it has `nobackup` in the name
    `/home/sven/nobackup/backup`            |No, because it has `nobackup` in the name

    <!-- markdownlint-enable MD013 -->

???- question "Isn't that obvious?"

    No.

    We at UPPMAX do get complaints from users that (1) place their
    raw data in a `nobackup` folder, then (2) delete that
    folder, (3) ask us for a backup, (4) complain that we did not
    have a backup.

- Give an example of which kind of files you would store in these folders:

    - `/proj/uppmax2025-2-262`
    - `/proj/uppmax2025-2-262/nobackup`
    - `/home/sven`
    - `/home/sven/nobackup`

???- question "Answer"

    Folder name                      |Example file
    ---------------------------------|-------------------------------
    `/proj/uppmax2025-2-262`         |The raw data, your scripts
    `/proj/uppmax2025-2-262/nobackup`|Intermediate files of your analyses
    `/home/sven`                     |Your personal scripts
    `/home/sven/nobackup`            |Intermediate files of your personal analyses
