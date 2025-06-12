---
tags:
    - lesson
    - interactive
    - session
    - node
---

# Start interactive session

!!!- info "Learning outcomes"

    - Practice using the UPPMAX documentation
    - Understand what an interactive session is
    - Can start an interactive session
    - Can conclude being on a login or compute node
    - Can end an interactive session

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the UPPMAX documentation
    - Learners understand what an interactive session is
    - Learners can start an interactive session
    - Learners can conclude being on a login or compute node
    - Learners can end an interactive session

    Lesson plan:

    ```mermaid
    gantt
      title Start an interactive session
      dateFormat X
      axisFormat %s
      section First hour
      Prior : prior, 0, 5s
      Present: present, after prior, 2s
      %% It took me 7 mins, here I do that time x2
      Challenge: crit, challenge, after present, 14s
      %% Here I use the same time it took me to give feedback
      Feedback: feedback, after challenge, 7s
    ```

    Prior questions:

    - What is an interactive session?
    - Why use an interactive session?
    - When scheduling an interactive session,
      what does the job scheduler need to know?
    - How to stop an interactive session?

## Why?

Login nodes are used interactively for light processes, e.g. submitting a job.
However, sometimes one needs to do harder things interactively, e.g.
running an IDE.

In this session, we learn how to start an interactive session.

## Exercises

???- question "Need a video?"

    See [this YouTube video that shows the solution of these exercises](https://youtu.be/Jb8bkphDugQ)

### Exercise 1: start and end an interactive session on Rackham

Go to the UPPMAX documentation at
[https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find the page on how to start an interactive session on Rackham

???- question "Answer"

    It can be found at
    <https://docs.uppmax.uu.se/cluster_guides/start_interactive_session_on_rackham/>

- Start an interactive session on Rackham that lasts one hour

???- question "Answer"

    You can do so ike this:

    ```bash
    interactive -A uppmax2023-2-25 -t 1:00:00
    ```

- How do you know you are no longer on the login node?

???- question "Answer"

    There are multiple ways. The easiest is to look at the prompt:
    it has changed from `@rackham[1-4]` to `@r[1-5000]`,
    which means you are on a Rackham compute node

- Stop the interactive session

???- question "Answer"

    You can do so like this:

    ```bash
    exit
    ```

- How do you know you are on the login node again?

???- question "Answer"

    There are multiple ways. The easiest is to look at the prompt:
    it has changed from `@r[1-5000]` to `@rackham[1-4]`,
    which means you are on a Rackham login node

- (optional) Start an interactive session on Rackham that lasts one hour
  and uses two cores. This is recommended when using RStudio on Rackham

???- question "Answer"

    You can do so ike this:

    ```bash
    interactive -A uppmax2023-2-25 -t 1:00:00 -n 2
    ```
