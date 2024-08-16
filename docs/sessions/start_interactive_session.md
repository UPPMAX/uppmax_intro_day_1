# Start interactive session

!!!- info "Learning objectives"

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

    [Here](...) is a video that shows
    the solution of these exercises

### Exercise 1: start and end an interactive session on Rackham

Go to the UPPMAX documentation at
[https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find the page on how to start an interactive session on Rackham

???- question "Answer"

    It can be found at
    <https://docs.uppmax.uu.se/cluster_guides/start_interactive_node_on_rackham/>

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

