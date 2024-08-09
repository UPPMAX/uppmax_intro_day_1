# Login via a terminal

!!!- info "Learning objectives"

    - Practice using the UPPMAX documentation
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

### Exercise 1: install an SSH client if needed

Go to the UPPMAX documentation at [https://docs.uppmax.uu.se](https://docs.uppmax.uu.se),
then answer these questions:

- Read up


<https://docs.uppmax.uu.se/software/ssh_client/>

### Exercise 2: login via SSH with X-forwarding

- Read [SSH clients](http://docs.uppmax.uu.se/software/ssh_client/)
- Read [Login Rackham with X-forwarding](http://docs.uppmax.uu.se/getting_started/login_rackham/#terminal-with-x11-server-and-light-graphics)
- Run `xeyes`

### (optional Exercise 3: login via SSH without X-forwarding

- Login without X forwarding
- Observe graphics do not work, by running `xeyes`


## Unprocessed material

```
## The login


   - **interact with you local computer**
     - Mac/Linux: you can always work in a local shell (mutiple terminal windows open)
        - (S)FTP browser: *Filezilla*, *Cyberduck*
     - Windows
        - (S)FTP browser: *WinSCP*
        - *MobaXterm* has built-in SFTP browser
        - you may benefit from having a *Windows Subsystem for Linux, WSL(2)*
                
```

## General understanding

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

## Terminals

`````{tabs}
````{tab} Mac

- Start terminal (e.g. from Launchpad) or [iTerm2](https://iterm2.com/)
```{code-block} console
$ ssh <username>@rackham.uppmax.uu.se
```
- "< >" prompts you to set the keyword specific for you or your needs. In the example above, this is basically your username.

![Terminal](./img/Mac_terminal.png)
- iTerm2 goodies:
  - You can save hosts for later.
  - Drag and drop scp

````

````{tab} Windows

- Start terminal (see below)
```console
$ ssh <username>@rackham.uppmax.uu.se
```
- "< >" prompts you to set the keyword specific for you or your needs. In the example above, this is basically your username.

![Terminal](./img/putty.jpg)

- the ssh (secure shell) client [**putty**](https://www.putty.org/) is sufficient first days of the course!

    - You can save hosts for later.
    - No graphics.
    
- Windows Powershell terminal can also work

    - Cannot save hosts
    - no graphics
    - [PowerShell](https://learn.microsoft.com/en-us/powershell/)
    
- Windows command prompt can also work

    - Cannot save hosts
    - no graphics
    - [Command Prompt](https://www.makeuseof.com/tag/a-beginners-guide-to-the-windows-command-line/)

- [Git bash](https://gitforwindows.org/)

````
`````

## Terminal with X11 server and light graphics

`````{tabs}
````{tab} Mac

- Download XQuartz or other X11 server for Mac OS
  - [https://www.xquartz.org/](https://www.xquartz.org/)

- Start terminal (e.g. from Launchpad) or [iTerm2](https://iterm2.com/)

- ``-X``      Enables X11 forwarding. 

````

````{tab} Windows

- Download and install ONE of the X-servers below (to enable graphics)
  - [GWSL](https://opticos.github.io/gwsl) (recommended because of hardware integration)
  - [X-ming](https://sourceforge.net/projects/xming/)
  - [VCXSRV](https://sourceforge.net/projects/vcxsrv/) 


- or... 
- Install a ssh (secure shell) program with built-in X11 and sftp file manager
  - [**MobaXterm**](https://mobaxterm.mobatek.net/)
    - sftp frame makes it easy to move, upload and download files.
    - ... though downloading from remote host to local is usually easier.
    - tabs for several sessions

![Caption](./img/mobax.jpg )

- Start local terminal and a SSH session by:

```console
$ ssh -Y <username>@rackham.uppmax.uu.se
```

![Caption](./img/mobax_start1.jpg)

- Or even better, create and save a SSH session, as shown in image below.
  - This allows you to use MobaXterm as a file manager and  to use the built-in graphical texteditor.
  - You can rename the session in the Bookmark settings tab.

![Caption](./img/mobax_start.jpg)


````
`````

```{admonition} X11-forwarding from the command line (generally)

- Graphics can be sent through the SSH connection you’re using to connect
  - Use primarily `ssh -Y <...>` or secondary `ssh -X <...>`

- The X servers that enables graphics are needed, as mentioned above!
  - When starting a graphical program, a new window will open, but your terminal will be “locked”.
  - Run using "`&`" at the end to run it as a background process e.g. "`xeyes &`" or “`gedit &`”

![Caption](./img/xeyes.png)

- Alternatively, use `<ctrl>-z` to put e.g. gedit to sleep and type "`bg`" to make last process in background.
```


``````{challenge} Login to **Rackham**, using your terminal
- First try:
```console
$ ssh -Y <username>@rackham.uppmax.uu.se
```
- If you receive errors or warnings, instead try:
```console
$ ssh <username>@rackham.uppmax.uu.se
```
- If you do have X11 installed:
```console
$ xeyes &
```
  
