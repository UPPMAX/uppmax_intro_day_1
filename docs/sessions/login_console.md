# Login via a terminal

!!!- info "Learning objectives"

    - Practice using the UPPMAX documentation
    - Understand what a console environment is
    - Understand what a terminal is
    - Understand what a prompt is
    - Understand that after login, one is on a login node
    - Understand what a login node is
    - Understand that on a login node, one only runs light commands
    - If needed: has installed an SSH client
        - Windows: MobaXTerm
    - Can log in to the console environment using a terminal with X forwarding
    - (optional) Can log in to the console environment using a terminal with X forwarding

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

    - What is a console environment?
    - What is a terminal?
    - What is SSH?
    - What is an SSH client?
    - Do you know any SSH clients?

## Why?

Using a terminal is powerful, where a remote desktop is clumsy.
Copy-pasting text to a terminal on the remote desktop
will quickly make you wonder if it cannot be done in a smarter way.

## A terminal and SSH clients

A terminal is a text-only program that can do many things, for example,
starting a program.
An SSH client is a program that allows you to connect to another computer.
Some SSH clients can run from a terminal or vice versa.

## Exercises

Here, we log in to Rackham's console environment via a terminal.

For Mac and Windows users it will be hardest to get it working.

### Working form

[...]

### Exercise 1: a terminal

Go to the UPPMAX documentation at [https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find the UPPMAX page on terminals

???- question "Answer"

    You can find find it at <https://docs.uppmax.uu.se/software/terminal/>

- What is a prompt?

???- question "Answer"

    The prompt is the text at the start of the line you can type on.
    It indicates that the terminal is waiting for user input.

### Exercise 2: install an SSH client if needed

Go to the UPPMAX documentation at [https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find the UPPMAX page on SSH clients

???- question "Answer"

    You can find find it at <https://docs.uppmax.uu.se/software/ssh_client/>

- Try starting a terminal and type `ssh` and then enter. 
  If you do not get an error message, you are lucky to have an SSH client
  installed!

???- question "How does it look like when ssh works?"

    Your output will look similar to this:

    ```bash
    richel@richel-N141CU:~$ ssh
    usage: ssh [-46AaCfGgKkMNnqsTtVvXxYy] [-B bind_interface] [-b bind_address]
               [-c cipher_spec] [-D [bind_address:]port] [-E log_file]
               [-e escape_char] [-F configfile] [-I pkcs11] [-i identity_file]
               [-J destination] [-L address] [-l login_name] [-m mac_spec]
               [-O ctl_cmd] [-o option] [-P tag] [-p port] [-R address]
               [-S ctl_path] [-W host:port] [-w local_tun[:remote_tun]]
               destination [command [argument ...]]
           ssh [-Q query_option]
    ```

- If there is an error, install the recommended SSH client

### Exercise 2: login via SSH with X-forwarding

- Read [SSH clients](http://docs.uppmax.uu.se/software/ssh_client/)
- Read [Login Rackham with X-forwarding](http://docs.uppmax.uu.se/getting_started/login_rackham/#terminal-with-x11-server-and-light-graphics)
- Run `xeyes`

### (optional Exercise 3: login via SSH without X-forwarding

- Login without X forwarding
- Observe graphics do not work, by running `xeyes`



