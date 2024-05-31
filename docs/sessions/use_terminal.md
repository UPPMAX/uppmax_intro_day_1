# Use a terminal

!!!- info "Learning objectives"

    - Understands what the prompt is
    - Can copy-paste to/from a terminal
    - Can use tab-completion with the prompt


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

[...]

## Theory

- When logging in to UPPMAX from your local computer you will arrive to your home folder at the login node.
- This means that only light analysis and and calculations should be made here.
- You will see this in the prompt after "@" as the clustername and a low number. For instance:
   ```console
      [<user>@rackham3 linux_tutorial]$
    ```
- You will later learn how to reach the calculation nodes. Then the prompt states the node number with a single letter, like "r" for Rackham. For instance:
   ```console
      [<user>@r484 linux_tutorial]
   ```


## Exercises

[...]

### Working form

[...]

### Exercise 1: general understanding

- Understands what the prompt is

[Theory questions here]

### Exercise 2: copy-paste to/from a terminal

- Can copy-paste to/from a terminal

### Exercise 3: tab-completion

- Can use tab-completion with the prompt
