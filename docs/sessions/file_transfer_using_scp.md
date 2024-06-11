# File transfer using scp

!!!- info "Learning objectives"

    - Can transfer files using scp

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

## Theory


## Exercises

[...]

### Working form

[...]

### Exercise 1: transfer a file

- use scp
- Check using terminal or remote desktop website


## Other material

### scp —secure copy (remote file copy program)

- Linux/MacOS: To copy data to/from Rackham, you can use ``scp`` from the terminal on your local machine:
- Upload from present directory on local machine to your home directory on cluster.
  - Example (*not done by us today*)
 
``` {code-block} console
[bob@macbook]$ scp myinput bob@rackham.uppmax.uu.se:~/copyofmyinput

[bob@macbook]$ scp myinput bob@rackham.uppmax.uu.se:~/                      # (keeping filename)
``` 
 
- Download
``` {code-block} console
[bob@macbook]$ scp bob@rackham.uppmax.uu.se:~/mydata copyofmydata

[bob@macbook]$ scp bob@rackham.uppmax.uu.se:~/mydata .                      # (keeping file name)
```
 
