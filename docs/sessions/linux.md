# Linux

!!!- info "Learning objectives"

    - [...]

???- info "Notes for teachers"

    Teaching goals:

    - [...]

    Schedule:

    ```mermaid
    gantt
      title Lesson plan Command line
      dateFormat X
      axisFormat %s
      Prior knowledge: prior, 0, 5s
      Theory: theory, after prior, 5s
      Exercises: crit, exercise, after theory, 25s
      Feedback: feedback, after exercise, 10s
    ```

## Why

All UPPMAX HPC clusters use Linux.

To use an UPPMAX HPC cluster one needs basic knowledge on Linux.

## Linux

- The "operating system" of the UPPMAX and most of the other clusters is **Linux**.

- Daily speaking: The Linux Operating system is a UNIX like and UNIX compatible Operating system.
- Linux is a "Kernel" on which many different programs can run.
- The shell (bash, sh, ksh, csh, tcsh and many more) is one such program.

- Actually, for it to be an OS, it is supplied with GNU software and other additions giving us the name **GNU/Linux**.
    - [Linux naming controversy]((<https://en.wikipedia.org/wiki/GNU/Linux_naming_controversy>)

- Linux has a multiuser platform at its base which means permissions and security comes easy.

## Linux distros

- UPPMAX runs CentOS and RedHat

## Shell, terminal, bash

- A Unix shell and command language.
- Often default shell
- The command-line interface: the bash prompt `$`
- bash can be seen as a program that finds and runs other programs
- bash is scripting language that is referred to as a shell
    - (because it sits around the kernel making it easy to interact with)

Terminals have tab completion:
Whenever you're writing a path or filename on the bash prompt, you can strike the 'tab' key to
ask Bash to complete what you're writing

## Text editors

- nano
- gedit
- (vim, gvim)
- (emacs)

## Folders, directories

Folder == directory

- Don't add spaces in folder names
- Don't add spaces in filenames

## Capitalization

- Capitalization matters in file names and program names

## File permission

- File permissions. Check that the right read, write and execute permission are set. See next session.
- Files starting with a `.` are hidden

## Typical sources of error

- Spaces matter.
    - Always have a space after the program name.
- Check that you are in the right place in the file system.
- File permissions. Check that the right read, write and execute permission are set. See next session.

## Exercises

[...]

### Exercise 1: theory

- Theory
