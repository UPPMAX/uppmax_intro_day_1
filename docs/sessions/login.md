# Login

!!!- info "Learning objectives"

    - Practice using the UPPMAX documentation
    - Understand that there are two environments
    - Understand that after login, one is on a login node
    - Understand what a login node is
    - Understand that on a login node, one only runs light commands

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

    - [...]


## Why?

To use any UPPMAX cluster, one needs to log in.
In this session, we learn there are multiple ways to login.

## Login

There are multiple ways to login:

Login                |Description
---------------------|----------------------------------------------
Website              |Remote desktop, no installation needed, slow
Terminal             |Console environment, recommended
Local ThinLinc client|Remote desktop, recommended, need installation

```mermaid
flowchart TD
  need_gui(Need to run a heavy graphical program?)
  use_terminal[Use a terminal]
  use_remote_desktop[Use a remote desktop environment]
  use_ssh[Use SSH]
  use_ssh_with_x_forwarding[Use SSH with X forwarding]
  need_bianca(Need to run on Bianca?)
  use_website[Use the remote desktop website]
  need_easy_or_speedy(Need easiest or fastest?)
  need_light(Need lightweight graphics?)
  use_local[Use a local ThinLinc client]

  need_gui --> |no| use_terminal
  need_gui --> |yes| use_remote_desktop
  use_remote_desktop --> need_bianca
  need_bianca --> |yes| use_website
  need_bianca --> |yes| need_easy_or_speedy
  need_easy_or_speedy --> |easiest| use_website
  need_easy_or_speedy --> |fastest| use_local

  use_terminal --> need_light

  need_light --> |no| use_ssh
  need_light --> |no\nyes| use_ssh_with_x_forwarding[Use SSH with X forwarding]
```

## Prerequisites

If you lack a user account, 
visit the [Getting started page](https://www.uppmax.uu.se/support/getting-started/course-projects/)

## Exercises

[...]

### Working form

[...]

### Exercise 1: general understanding

Go to the UPPMAX documentation at [https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Where is the general UPPMAX documentation page where it is described how to log in to Rackham?

???- question "Answer"

    It is at [https://docs.uppmax.uu.se/getting_started/login_rackham/](https://docs.uppmax.uu.se/getting_started/login_rackham/).

    You can reach this page by searching for 'Login Rackham' or 'Log in Rackham'. 
    It won't be the first search result. 





    - Understand that there are two environments
    - Understand that after login, one is on a login node
    - Understand what a login node is
    - Understand that on a login node, one only runs light commands
