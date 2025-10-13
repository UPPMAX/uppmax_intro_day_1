---
tags:
    - lesson
    - login
    - log in
    - terminal
    - console
---

# Login via a terminal

!!!- info "Learning outcomes"

    - Practice using the UPPMAX documentation
    - Understand what a console environment is
    - Understand what a terminal is
    - Understand what a prompt is
    - Understand that after login, one is on a login node
    - If needed: has installed an SSH client
        - Windows: MobaXTerm
    - (optional) Can log in to the console environment using a terminal with X forwarding
    - (optional) Can determine if X forwarding works

???- question "For teachers"

    Teaching goals are:

    - Learners have practiced using the UPPMAX documentation
    - Learners understand what a console environment is
    - Learners understand what a terminal is
    - Learners understand what a prompt is
    - Learners understand that after login, one is on a login node
    - If needed, learners have installed an SSH client
        - Windows: MobaXTerm
    - (optional) Learners have logged in to the console environment
      using a terminal with X forwarding
    - (optional) Learners have determined if X forwarding works

    Lesson plan:

    ```mermaid
    gantt
      title Login via terminal
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

    - What is a console environment?
    - What is a terminal?
    - What is SSH?
    - What is an SSH client?
    - Do you know any SSH clients?
    - Can you displays an image in a console environment?

    Feedback questions:

    - What is a console environment?
    - What is a terminal?
    - What is SSH?
    - What is an SSH client?
    - Do you know any SSH clients?
    - Can you displays an image in a console environment?

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

???- question "Need a video?"

    See [this YouTube video that shows the solution of these exercises](https://youtu.be/FUNPZHEMC2s)

    Pelle works the same a Rackham in these contexts.

Here, we log in to Pelle's console environment via a terminal.

For Mac and Windows users it will be hardest to get it working.

## Exercise 1: a terminal

Go to the UPPMAX documentation at
[https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find the UPPMAX page on terminals

???- question "I cannot find it. Where is it?"

    You can find find it at <https://docs.uppmax.uu.se/software/terminal/>

- What is a prompt?

???- question "Answer"

    The prompt is the text at the start of the line you can type on.
    It indicates that the terminal is waiting for user input.

## Exercise 2: install an SSH client if needed

Go to the UPPMAX documentation at
[https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find the UPPMAX page on SSH clients

???- question "Answer"

    You can find find it at <https://docs.uppmax.uu.se/software/ssh_client/>

- Try starting a terminal and type `ssh` and then enter.
  If you do not get an error message, you are lucky to have an SSH client
  installed!

???- question "How does it look like when `ssh` works?"

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

## Exercise 3: login via SSH

Go to the UPPMAX documentation at
[https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Find the page about how to login to Pelle via SSH and a password

???- question "I cannot find it. Where is it?"

    You can find find it at
    <https://docs.uppmax.uu.se/getting_started/login_pelle_console_password/>

- Log in to Pelle

???- question "How does that look like?"

    Your ouput will look similar to this:

    <!-- Indeed, line lengths beyond 80 characters -->
    <!-- markdownlint-disable MD013 -->

    ```bash
    sven@richel-N141CU:~/GitHubs/uppmax_intro_day_1/docs/sessions$ ssh -X sven@pelle.uppmax.uu.se
    sven@pelle.uppmax.uu.se's password:
    Last login: Thu Aug  8 18:35:17 2024 from vpnpool189-229.anst.uu.se
     _   _ ____  ____  __  __    _    __  __
    | | | |  _ \|  _ \|  \/  |  / \   \ \/ /   | System:    pelle1
    | | | | |_) | |_) | |\/| | / _ \   \  /    | User:      sven
    | |_| |  __/|  __/| |  | |/ ___ \  /  \    |
     \___/|_|   |_|   |_|  |_/_/   \_\/_/\_\   |

    ###############################################################################

            User Guides: https://docs.uppmax.uu.se/

            Write to support@uppmax.uu.se, if you have questions or comments.


    [sven@pelle1 ~]$
    ```

    <!-- markdownlint-enable MD013 -->

Welcome on a login node!

### (optional) Exercise 4: use light graphics

- Find the page about the program called `eog`

???- question "I cannot find it. Where is it?"

    You can find find it at <https://docs.uppmax.uu.se/software/eog/>

- On the Pelle login node, create an example image
  or download an image

??? question "How to do so?"

    - Follow the tip in
      [UPPMAX documentation about `eog`](https://docs.uppmax.uu.se/software/eog/):

      ```bash
      convert -size 32x32 xc:transparent my.png
      ```

    - Use `wget`, e.g.

      ```bash
      wget https://raw.githubusercontent.com/UPPMAX/UPPMAX-documentation/refs/heads/main/docs/cluster_guides/img/pelle.jpg
      ```

- (optional) On a Pelle login node, display the image using `eog`.
  Observe the error message

???- question "How do I do so?"

    In your terminal, type:

    ```bash
    eog [filename]
    ```

    where `[filename]` is the name of the file, for example:

    ```bash
    eog my.png
    ```

    The error message will be similar to this:

    ```bash
    (eog:2388308): Gtk-WARNING **: 11:15:47.357: cannot open display:
    ```

- The UPPMAX page about `eog` mentions that one needs to
  login using SSH with X-forwarding.
  Go to the page that describes how to use SSH with X-forwarding

???- question "I cannot find that page. Where is it?"

    Searching for 'SSH with X-forwarding' results in finding
    <https://docs.uppmax.uu.se/software/ssh_x_forwarding/>


- Log out of Pelle and login with X-forwarding enabled

???- question "How to log out from Pelle?"

    In the terminal, type:

    ```bash
    exit
    ```

    Closing the terminal also works.

???- question "How to log in to Pelle using X-forwarding?"

    Use the `-X` (a capital X) flag, e.g.

    ```bash
    ssh -X sven@pelle.uppmax.uu.se
    ```

- On a Pelle login node, display an image using `eog`.

???- question "How do I run it"

    In your terminal, type:

    ```bash
    eog [filename]
    ```

    where `[filename]` is the name of the file, for example:

    ```bash
    eog my.png
    ```

    Press enter and you will the image pop up.

???- question "How does that look like?"

    ![`eog` showing an image](eog.png)
