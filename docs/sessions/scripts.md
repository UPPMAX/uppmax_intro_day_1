---
tags:
    - lesson
    - scripts
    - scripting
---

# Scripts

!!!- info "Learning outcomes"

    - Practice using the UPPMAX documentation
    - Can create a script
    - Can make a script executable
    - Can run a script

???- question "For teachers"

    Teaching goals are:

    - Learners have created a script
    - Learners have made a script executable
    - Learners have run a script

    Lesson plan:

    ```mermaid
    gantt
      title Scripts
      dateFormat X
      axisFormat %s
      section First hour
      Prior : prior, 0, 5s
      Present: present, after prior, 2s
      %% It took me 8 mins, here I do that time x2
      Challenge: crit, challenge, after present, 16s
      %% Here I use the same time it took me to give feedback
      Feedback: feedback, after challenge, 8s
    ```

    Prior questions:

    - What is a script?
    - Why would you want to use a script?
    - How to write a script?

    Feedback questions:

    - Why would you want to use a script?
    - What should you not forget when writing a script?
    - Which group of programming languages can you directly call from a script?
      Could you give an example?


## Why?

Scripts allow you to run multiple commands after each other,
such as loading modules and then running your favorite software.

## Exercises

???- question "Need a video?"

    See [this YouTube video that shows the solution of these exercises](https://youtu.be/yDkV_pQYfgM)

    Pelle works the same a Rackham in these contexts.

## Exercise 1: write a bash script

- Create a file called `do_cowsay.sh` with the content below:

```text
module load cowsay/3.04
cowsay hello
```

???- question "Answer"

    This is just creating a file, which can be done in many ways,
    such as using `touch` and `nano`. In whatever way you did it,
    it's good enough!

- Run the script.
  Search the web or
  [ask the UPPMAX documentation AI](https://docs.uppmax.uu.se/)

???- question "Answer"

    To run the script, use:

    ```bash
    bash my_script.sh
    ```

- Make the script executable
  Search the web or
  [ask the UPPMAX documentation AI](https://docs.uppmax.uu.se/)

???- question "Answer"

    To make the script executable, do:

    ```bash
    chmod +x my_script.sh
    ```

    or:

    ```bash
    chmod u+x my_script.sh
    ```

- Run your (executable) script directly (i.e. without calling `bash`)

???- question "Answer"

    To run the script:

    ```bash
    ./my_script.sh
    ```

- (optional) Why does the script has a `.sh` file extension?
  Search the web for an answer.

???- question "Answer"

    This is a social convention: it allows a human to see that a file
    is a so-called shell script. It is no coincidence that `.sh` are the
    last two letters of `bash`.

## Exercise X1: write an executable script in your favorite programming language

- Create a script in your favorite programming language, with the following
  name and content:

Programming language| Script name
--------------------|-----------------------
Python              |`my_script.py`
R                   |`my_script.R`

Programming language| Script content
--------------------|-----------------------
Python              |`print("Hello from Python")`
R                   |`message("Hello from R")`

???- question "Answer"

    This is just creating a file, which can be done in many ways,
    such as using `touch` and `nano`. In whatever way you did it,
    it's good enough!

- Make the script executable

???- question "Answer"

    To make the script executable, do:

    Programming language|Command
    --------------------|-----------------------
    Python              |`chmod +x my_script.py`
    R                   |`chmod +x my_script.R`

- Run the script. What is the error message?

???- question "Answer"

    How to run the script:

    Programming language|How to run the script
    --------------------|-----------------------
    Python              |`./my_script.py`
    R                   |`./my_script.R`

    Error message:

    === "Python"

        ```bash
        [sven@pelle1 ~]$ ./my_script.py 
        ./my_script.py: line 1: syntax error near unexpected token `"Hello from Python"'
        ./my_script.py: line 1: `print("Hello from Python")'
        ```

    === "R"

        ```bash
        [sven@pelle1 ~]$ ./my_script.R
        ./my_script.R: line 2: syntax error near unexpected token `"Hello from R"'
        ./my_script.R: line 2: `message("Hello from R")'
        ```

- At the start of your R script, add a first line, as shown in the
  table below. This is called
  the 'shebang'. The shebang tells `bash` with which program to run the
  script when it is executable

Programming language|First line to add
--------------------|-----------------------
Python              |`#!/bin/env python`
R                   |`#!/bin/env Rscript`

- Run the script again and confirm that it works
