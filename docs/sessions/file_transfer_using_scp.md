# File transfer using `scp`

!!!- info "Learning objectives"

    - Practice using the UPPMAX documentation
    - Can transfer files using `scp`

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the UPPMAX documentation
    - Learners have transferred files using `scp`

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

    - How can one do a file transfer from the terminal?
    - Can you name some programs that can do file transfer from the terminal?
    - Who has heard of `scp`?
    - Who has already used `scp`?

## Why?

Fairly sure you'll want to upload or download files to Rackham.
Here we do so.

We use a free and open-source graphical tool to do this,
called SCP.
It works under Linux, Mac and Windows.

## Exercises

???- question "Need a video?"

    [Here](https://youtu.be/HLIqDnpHjvU) is a video that shows
    the solution of these exercises

### Exercise 1: transfer a file

Use [the UPPMAX documentation](http://docs.uppmax.uu.se/)
for help.

- Search for the procedure on how to transfer a file
  to/from Rackham using SCP

???- question "Where is that documentation?"

    The procedure can be found at <https://docs.uppmax.uu.se/software/rackham_file_transfer_using_scp/>.

- Copy a file from your local computer to your Rackham home folder. Verify this worked.
- Copy a file from your Rackham home folder to your local computer. Verify this worked.
