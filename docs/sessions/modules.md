---
tags:
    - lesson
    - module
    - system
    - lmod
    - software
---

# The module system

!!!- info "Learning outcomes"

    - Practice using the UPPMAX documentation
    - Can find pre-installed software from the documentation
    - Can find pre-installed databases from the documentation
    - Understand why there is a module system
    - Can find pre-installed software using the module system
    - Can load a module

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the UPPMAX documentation
    - Learners have found pre-installed software from the documentation
    - Learners have found pre-installed databases from the documentation
    - Learners understand why there is a module system
    - Learners can find pre-installed software using the module system
    - Learners can load a module
    - Learners can unload a module

    Lesson plan:

    ```mermaid
    gantt
      title Modules
      dateFormat X
      axisFormat %s
      section First hour
      Prior : prior, 0, 5s
      Present: present, after prior, 2s
      %% It took me 9 mins, here I do that time x2
      Challenge: crit, challenge, after present, 18s
      %% Here I use the same time it took me to give feedback
      Feedback: feedback, after challenge, 9s
    ```

    Prior questions:

    - What would happen if all users would be allowed
      to install software on Pelle?
    - Describe a situation when two users that have admin rights
      on the same account of the same computer cannot both be happy
    - How can one run different versions of the same software
      on a same computer?
    - How can we have users use different versions of the same software?
    - What is the UPPMAX software module system?
    - What is a module?
    - Has anyone already used the UPPMAX module system?

    Feedback questions:

    - Why is there a module system on UPPMAX?
    - Why don't we just load all modules for you at UPPMAX?

## Why?

The module system allows you to run your software,
of your favorite version, installed by us :-)

Additionally, there are big databases (think terabytes!)
that are also available to you.

In this session, we'll search for pre-installed software,
pre-installed databases and use these.

## Exercises

???- question "Need a video?"

    Watch the YouTube video
    [Intro to UPPMAX Day 1: the module system](https://youtu.be/rFNzG8st_Pw)

## Exercise 1: work with modules

Go to the UPPMAX documentation at
[https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find the UPPMAX documentation on modules

???- question "Answer"

    One can find the answer at
    <https://docs.uppmax.uu.se/cluster_guides/modules/>,
    where the module system is explained

- Search the module system for a tool called `cowsay` to find out
  in which module it is installed

???- question "Answer"

    Use `module spider` to search:

    ```bash
    module spider cowsay
    ```

- Load the latest version of the module for `cowsay`

???- question "Answer"

    After having used `module spider cowsay`, we've seen that the
    latest version is `3.04`. Hence we load the module like this:

    ```bash
    module load cowsay/3.04
    ```

- To confirm `cowsay` works, type `cowsay hello`. A cow that says 'hello'
  should appear

- Unload the module for `cowsay`

???- question "Answer"

    One does not need to add a version to unload a module:

    ```bash
    module unload cowsay
    ```

- Confirm that `cowsay` does not work anymore,
  by typing `cowsay hello`. This should give an error

## Exercise X1: find the software

Go to the UPPMAX documentation at
[https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find to list of installed software.
  Estimate how many pieces of software are installed on Pelle

???- question "Answer"

    One can find the answer at <https://docs.uppmax.uu.se/software/software-table/>,
    where one can find around 800 pieces of software installed

## Exercise X2: find the databases

Go to the UPPMAX documentation at
[https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find to list of databases.
  Estimate how many collections of databases are installed on Pelle

???- question "Answer"

    One can find the answer at <https://docs.uppmax.uu.se/databases/overview/>,
    where one can find around 7 collections of databases installed.

