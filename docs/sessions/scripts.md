# scripts

!!!- info "Learning objectives"

    - Practice using the UPPMAX documentation
    - Can create a script
    - Can make a script executable
    - Can run a script

???- question "For teachers"

    Teaching goals are:

    - .

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

    - What is a script?
    - Why would you want to use a script?
    - How to write a script?

## Why?

Scripts allow you to run multiple commands after each other,
such as loading modules and then running your favorite software.

## Exercises

???- question "Need a video?"

    [Here](...) is a video that shows
    the solution of these exercises

### Exercise 1: write a bash script

- Create a file called `do_cowsay.sh` with the content below:

```text
module load cowsay/3.03
cowsay hello
```

???- question "Answer"

    This is just creating a file, which can be done in many ways,
    such as using `touch` and `nano`. In whatever way you did it,
    it's good enough!

- Try to find how to run the script (without making the file
  executable)

???- question "Answer"

    To run the script, use:

    ```bash
    bash my_script.sh
    ```

- Try to find how to make the script executable

???- question "Answer"

    To make the script executable, do:

    ```bash
    chmod +x my_script.sh
    ```

- Run the script without calling `bash`

???- question "Answer"

    To run the script:

    ```bash
    ./my_script.sh
    ```


### Exercise 2: write an executable R script

- Create a file called `my_r_script.R` with the content below:

```text
message("Hello from R")
```

???- question "Answer"

    This is just creating a file, which can be done in many ways,
    such as using `touch` and `nano`. In whatever way you did it,
    it's good enough!

- Make the script executable

???- question "Answer"

    To make the script executable, do:

    ```bash
    chmod +x my_r_script.R
    ```

- Run the script. What is the error message?

???- question "Answer"

    This is how to run the script and the error message:

    ```bash
    [sven@rackham1 ~]$ ./my_r_script.R 
    ./my_r_script.R: line 2: syntax error near unexpected token `"Hello from R"'
    ./my_r_script.R: line 2: `message("Hello from R")'
    ```

- At the start of your R script, add `#!/bin/env Rscript`. This is called
  the 'shebang'. The shebang tells `bash` with which program to run the
  script when it is executable

- Run the script again and confirm that it works

