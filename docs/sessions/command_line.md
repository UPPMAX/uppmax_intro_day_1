# The command-line

!!!- info "Learning objectives"

    - Find out the current working directory
    - List all files in the current working directory
    - Navigate in/out folders
    - View/create/move/delete files
    - Edit a file
    - Use a pipe
    - Create an executable bash script

???- info "Notes for teachers"

    Teaching goals:

    - The learners demonstrate they can use a text editor
    - The learners demonstrate they can create, move and delete files
    - The learners demonstrate they can create and delete folders
    - The learners demonstrate they can create an executable script

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

The UPPMAX HPC clusters have the Linux operating system.
We must use a Linux terminal to work with UPPMAX HPC clusters,
therefore we must learn some Linux commands.

We will learn to:

- read the manual
- navigate through the file system
- work with directories
- work with files
- create an executable script

### Read the manual

Use `man` to see the help pages about a command:

```
man man
man cd
man ls
```

These command give the help pages about the programs `man`, `cd` and `ls` respectively.

- scroll with arrows keys
- press `q` (short for 'quit') to exit `man`
- type `/` and then a search term to search for a term
  - use `n` to go to the next hit
  - use `N` to go to the previous hit

### Where am I?

Within a terminal, you are always somewhere.
Or, in more technical terms, you always have a so-called
'present working directory'.

Use `pwd` to see your current location

!!!- tip "See the current real location (advanced)"

    For sysadmins: use `pwd -P` to see your real current location on the hardware

### What is here?

In you present working directory, you can find out what is there using `ls`:

Do what                                                   |Example command
----------------------------------------------------------|---------------------
View all visible files in your present working directory  |`ls`
View all files in your present working directory          |`ls --all`

### View a file?

You can view a file in many ways:

Do what                            |Example command
-----------------------------------|---------------------
View a file                        |`cat myfile.txt`
View the top of a file             |`head myfile.txt`
View the end of a file             |`tail myfile.txt`
View a file, allows for scrolling  |`less myfile.txt`

### Navigate through the file system

Like any operating system, Linux has directories (also called 'folders').

Use `cd` to change directory:

Where to                           |Example command
-----------------------------------|---------------------
The root folder                    |`cd /`
Your home folder, using full path  |`cd /home/sven`
Your home folder, using tilde      |`cd ~`
Up one folder                      |`cd ..`
Into a folder, using relative path |`cd myfolder`
The previous location              |`cd -`

!!! info "Tab completion"

    Instead of typing, for example, `cd home`, one can use tab-completion:

    - type `cd /h` then press Tab. It will tab-complete to `cd /home/`
    - type `cd /b` then press Tab. Nothing will happen, as here there are more options
    - type `cd /b` then press Tab twice to see the options
    - type `cd /bi` then press Tab. It will tab-complete to `cd /bin/`

!!! info "The Silence Is Golden Rule"
    When your command 'just works' there is no output
    (try, for example `cd ~`). 
    This is due to [The Silence Is Golden Rule](https://www.linfo.org/rule_of_silence.html)

### Work with directories

Linux can create, move and delete folders.

Do what                            |Example command
-----------------------------------|---------------------
Create a folder                    |`mkdir myfolder`
Move a folder                      |`mv from_folder to_folder`
Copy a folder (and its contents)   |`cp --recursive from_folder to_folder`
Delete a folder and its contents   |`rm --recursive myfolder`

!!! warning "There is no undo here"

    When deleting a file or folder, it is gone.

### Work with files

Linux can create, view, rename, move and delete files.
Additionally, there are some text editors that
allow one to edit files.

Do what                            |Example command
-----------------------------------|---------------------
Create an empty file               |`touch myfile.txt`
Edit a file using `nano`           |`nano myfile.txt`
Delete a file                      |`rm myfile.txt`
Copy a file                        |`cp myfile.txt mycopy.txt`
Rename a file                      |`mv myfile.txt mycopy.txt`
Move a file to one folder up       |`mv myfile.txt ../`
Move a file to the home folder     |`mv myfile.txt ~`

!!! warning "There is no undo here"

    When deleting a file, it is gone.

 * Note: `nano` is one of many text editors. 
   It is the one recommended to beginners, 
   as its interface is closest to what one expects

### Extract a file

[TODO]

We're going to need more files. Let's extract the tar.gz file (tared and gzipped file)

```console
tar -vxzf files.tar.gz
```
- The flags mean:
        - verbosely
        - extract
        - gzipped
        - filename
- Order of flags may matter!
  - `f` should be in the start or in the end!
- You should see a list of files being extracted

````{tip}
- To compress use the flag `-c`instead of `-x`

```console
tar -czfv <tar file> <path/to/directory/file(s)-or-directory>
```

### Create an executable script

Creating an executable script has two steps:

- 1. Create a script
- 2. Allow the script to execute

As an example, we create a script, called `do_it.sh`:

```
nano do_it.sh
```

!!! info "Why use a `.sh` file extension?"
    Using `.sh` as a file extension a social convention for how a Bash script is called,
    as (1) `sh` is short for 'shell', (2) Bash is short for 'Bourne Again Shell'.
    A 'shell' in this context is a program that allows working with an operating system. 

As an example, copy-paste this content into the script:

```
#!/bin/bash
echo "Hello!"
ls | rev
```

!!! info "What does this program do?"
     * The first line is called the [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix)),
       and indicates this is a Bash script
     * The second line displays the text between double quotes
     * The third line displays the files in the folder reversed. 
       The `|` is called the [pipeline](https://en.wikipedia.org/wiki/Pipeline_(Unix)) operator

Save and close `nano`.

 * Use `CTRL-X` to start to exit, then press `y` to start saving the file, then
   press enter to use the current filename

Use [chmod](https://en.wikipedia.org/wiki/Chmod) to make the file executable:

```
chmod +x do_it.sh
```

 * `+x` can be read as: 'add the right to execute'

!!! info "Create read-only files"
    If you want to protect your data from being modified accidentally,
    `chmod` can create read-only files,
    by removing the writing rights using `chmod -w`.

## Exercises

[...]

### Exercise 1: theory

- Theory

### Exercise 2: view help

- View the help of the command `cd`"

???- question "Solution"

    Use `man` to view the help of any command, in this case `cd`:

    ```
    man cd
    ```

- [TODO] scroll through the file
- [TODO] search for a search term
- [TODO] quit

### Exercise 3: show working directory

### Exercise 3: show files and folders

### Exercise 3: navigation

- Navigate to the root folder

???- question "Solution"

    ```
    cd /
    ```
- Navigate to your home folder"

???- question "Solution"

    The syntax to move to your home folder is:

    ```
    cd /home/[username]
    ```

    where `[username]` is your UPPMAX username, for example:

    ```
    cd /home/richel
    ```

    The squiggle/tilde (`~`) is a shorter notation, 
    that does exactly the same:

    ```
    cd ~
    ```

### Exercise 4: create folder

- In your home folder, create a folder called `my_folder` 
- Verify it exists

???- question "Solution"

    Navigate to the home folder:

    ```
    cd ~
    ```

    To create the folder:

    ```
    mkdir my_folder
    ```

    To verify it exists:

    ```
    ls
    ```

    You should find the text `my_folder` among the output.

### Exercise 5: create file

- In your home folder, create a file called `my_file.txt`
- Verify it is created

???- question "Solution"

    Navigate to the home folder:

    ```
    cd ~
    ```

    To create a file called `my_file.txt`:

    ```
    touch my_file.txt
    ```

    To verify it exists:

    ```
    ls
    ```

    You should find the text `my_file.txt` among the output.

### Exercise 6: copy a file

???- question " 4b. Copy the file (e.g. to `richel_again.txt`). "

    ```
    cp richel.txt richel_again.txt
    ```

### Exercise 7: move a file

???- question "4c. Move the copied file (e.g. move it one folder up to `../richel_again.txt`)"

    ```
    mv richel_again.txt ../
    ```

### Exercise 8: delete a file

???- question "4d. Delete the copied file"


    ```
    rm ../richel_again.txt
    ```

    or:

    ```
    cd ..
    rm richel_again.txt
    ```

### Exercise 8: modify a file using nano


### Exercise 8: create an executable script

???- question "5. Create an executable script called `/proj/sens2023598/workshop/[your_login_name]/do_it.sh`, which, upon running, displays a welcome message in text (e.g. `Hello!`) and does something (e.g. show the files in reverse order)"

    Edit the script:

    ```
    nano do_it.sh
    ```

    Change the text to:

    ```
    #!/bin/bash
    echo "Hello!"
    ls | rev
    ```

    Make the script executable:

    ```
    chmod +x ./do_it.sh
    ```

    Run the script:

    ```
    ./do_it.sh
    ```

### (optional) exercise: showing files

- Show hidden files

```
ls --all
```

- Show detailed list

```
ls -l
```

- Show time sorted

```
ls -t
```

- Show detailed list and time sorted

```
ls -lt
```

### (optional) exercise: archiving


## Extra material


### Read files and change file properties


 


``` {code-block} console
$ man ls 
```
 
```{challenge}
- Spend some time now to browse the man pages for the commands you’ve just learned!
```
 
<!--- 
- Not only user commands!

    Use sections like

        man 2 write

MANUAL SECTIONS
       The standard sections of the manual include:

       1      User Commands

       2      System Calls

       3      C Library Functions

       4      Devices and Special Files

       5      File Formats and Conventions

       6      Games et. Al.

       7      Miscellanea

       8      System Administration tools and Deamons
--->
 
## Let’s get wild with Wildcards
![Caption](./img/wildcards_bear.png)

``` {code-block} console
$ ls many_files

$ ls many_files/*.txt

$ ls many_files/file_1*1.docx
 ```

- Want to clean out temporary files ending in .tmp in all the subdirectories?

```{warning}
- NB! It could be wise to do `ls -a */*.tmp` first to see what will be deleted...
```
``` {code-block} console
 $ rm */*.tmp
```

```{challenge} Exercise
- Exercise:  Create a new directory and move all .txt files in many_files to it.
```
 
## Reading files

- In Linux, you can (if you wish) also display files without being able to change them

``` {code-block} console
$ cd old_project

$ ls
```

- Hmm, which of these files are useful?

 
### cat - con<ins>cat</ins>enate files and print on the standard output

![Caption](./img/cat.png)

- ``cat`` dumps the contents of files to the terminal as text

``` {code-block} console
 $ cat the_best
```

- Yummy!

``` {code-block} console
 $ cat a
```
- What's this????

- **Concatenate** files with this wizardry:

``` {code-block} console
 $ cat a the_best > combinedfiles.txt
```
- File ``a`` is written first and ``the_best`` is appended
 
### head — display the top (<u>head</u>ing) of a file


![Caption](./img/head.png)

``` {code-block} console
 $ head a
 ```
- You can choose how many lines to display (default 10)

``` {code-block} console
 $ head -n 4 a
 ```

 
### tail — display the end of a file


![Caption](./img/tail.png)

- Tail is the same as head, but for the other end.

``` {code-block} console
 $ tail -n 5 a
```

- Handy to look at log files or to figure out the structure of a text file.

 
### less — read a whole file

- cat doesn’t really work for long files

``` {code-block} console
 $ less a
```

- Search with `/<keyword>` and `n`/`N`
- Hit `q` to quit.
- scroll with arrows.
- `man` uses `less`!

     “less is more”
 
## File permissions


![Caption](./img/permission.png)

### Example

``` {code-block} console
$ ls -l

  drwxrwxr-x 2 marcusl marcusl 4096 Sep 19 2012 external_hdd 
  -rwxr-xr-x 1 marcusl marcusl 17198 Jul 16 14:12 files.tar.gz
```
- Leading symbol:
  - `d` directory
  - `-` regular file
  - `l` symbolic link (more on this tomorrow)
  - Others exist, but you can ignore them for now

  ``` {code-block} console
  $ ls -l
 
  drwxrwxr-x 2 marcusl marcusl 4096 Sep 19 2012 external_hdd

  -rwxr-xr-x 1 marcusl marcusl 17198 Jul 16 14:12 files.tar.gz
  ```
  
- Three sets of “rwx” permissions
  - rwx: r ead, w rite, ex ecute
  - User: the user account that owns the file (usually the one that created it)
  - Group: the group that owns the file (usually the *project group* in /proj/xyz or the user’s group elsewhere)
  - Others: everyone else on the system (literally a thousand strangers)

- r – read
  - Files: Read the contents of the file
  - Directories: List the files in the directory

- w – write
  - Files: Modify the file
  - Directories: Add, rename, or delete files in the directory

- x – execute
  - Files: Run the file as a program
  - Directories: Traverse the directory (e.g. with “cd”)

``````{solution} For the interested
 - Now try:

  ``` {code-block} console
  $ ls -l /proj/introtouppmax/
  ```

- Huh, ``rwxrwsr-x``?
- `s` in the group means `x` but with *gid bit set* ( g roup id of creator not launcher).
  - The s or sticky bit is a group permission on directories which changes the default behaviour of new files are created with the same group_id as the users group_id to new files inheriting the group_id from the parent directory.
- `S` means `-` with gid bit set (rarely seen).
- Among other things, this makes the default group for new files/subdirectories the, for instance, ``p_introtouppmax`` group.

``````
 
## Changing permissions
**chmod** — change file mode bits

**If you own, i.e. created, the file or directory, you can modify the content**

```{admonition} Common issues
- Files with `w` can be modified and destroyed by accident. Protect your data!
- If you want to share data or scripts with a person not in your project (e.g. support staff like me), you can!
- If you want to keep non-members from even seeing which files you have, you can!
```

### Syntax

`chmod <mode> <files>`

- `<mode>` is of the form: For whom, Modify, What permission(s)
- For whom?
    - `u`: user/owner
    - `g`: group, often the members to a certain project
    - `o`: others
    - `a`: all
    - if not set changes are applied for user AND group
- Modify?
    - `+`: add permissions,
    - `-`: remove
    - `=`: set equal to
      - `=` usually causes unmentioned bits to be removed except that a directory's unmentioned set user and group ID bits are not affected.
- What permissions?
    - `r`, `w`, `x`, i.e. the actual permission

#### Examples

- `<mode>` can be e.g.:
  -  `u+x` : lets You (owner) run a script you just wrote
  -  `-w` : no write permissions for **owner+group**
    - warning: if `w` was already set for *others* it will be kept!!
  -  `+rw` : let user and group members read and edit this file, not others if not already set
  -  `=xw` : let group members go into your directory and put files there, but not see which files are there, others are not affected
  -  `a=xw` : set xw for everyone

- chmod takes flags as usual, e.g.
  -  `-R` for recursive (i.e. all files and sub-directories therein)

``````{solution} chmod 755 style - binary sum - "octal bit mask”

- Online, you will come across e.g. `chmod 755 <file/dir>`. What does this mean? It’s an "octal bit mask”:

- Each digit corresponds to the **binary sum** for the *owner*, *group* and *others*, respectively.
 
  - ``7 = 4 + 2 + 1 = r + w + x``   All permissions
  - ``5 = 4 + 0 + 1 = r +   + x``   Read and execute permission

- 755 then means all permissions for owner, but limiting write permissions for the group and all others

- What number would `rw` be?

```{solution}
6
 ```
``````
 
```{challenge} chmod — Hands-on

- In your *locally created* ``linux_tutorial`` directory, find important files and old saved data that you wouldn’t want to lose (*imagine*).
  - Directories: important_results/, old_project/
  - File: last_years_data
- Use chmod to remove write permission from those files and directories (use the `-R` flag (not `-r`) to also do the files in the directories).
  - Take a moment to play around with chmod and explore the effects of permissions on files and directories.
```

``````{solution}
``` {code-block} console
$ chmod -wR <target>
 ```
``````
 
**More about BASH command line and scripts on Tuesday and Wednesday!**


## Caution

```{Warning}

- There is no undo for:
  - copy (`cp`),
  - move (`mv`), and
  - remove (`rm`).
- **Beware of overwriting files and deleting the wrong ones.**
```
 
```{Note}
- **Tip: make "`rm`" ask if you really want to erase:**
  - Within a session: Type in the command prompt

        alias rm='rm -i'

  - Override asking with 

        rm –f <>

  - Edit file `.bashrc` in `home` directory by adding the alias line for this to start everytime.
- This will also work for ``mv`` and ``cp``!
```

```{Note}
- If you do destroy your data, email UPPMAX support, we may be able to help.
```
