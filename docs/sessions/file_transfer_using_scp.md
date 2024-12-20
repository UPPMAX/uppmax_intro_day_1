---
tags:
  - lesson
  - file transfer
  - scp
  - SCP
---

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
      title File transfer using scp
      dateFormat X
      axisFormat %s
      section First hour
      Prior : prior, 0, 5s
      Present: present, after prior, 2s
      %% It took me 6 mins, here I do that time x2
      Challenge: crit, challenge, after present, 12s
      %% Here I use the same time it took me to give feedback
      Feedback: feedback, after challenge, 6s
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
