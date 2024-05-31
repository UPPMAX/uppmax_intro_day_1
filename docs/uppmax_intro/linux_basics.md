# Basic toolkit


![Caption](./img/terminal.png)


```{objectives}
- Let's dig into the most important BASH commands
- We'll do a type-along session
```
 
## We will cover these commands
### Navigation and file management

1. `pwd`  &emsp; present directory
1. `ls`  &emsp;list content
1. `cd`  &emsp;change directory
1. `mkdir`  &emsp;make directory
1. `cp`  &emsp;copy
1. `scp`  &emsp;securely remotely copy
1. `mv`  &emsp;move
1. `rm`  &emsp;remove
1. `rmdir`  &emsp;remove empty directory

### Read files and change file properties

10. `cat`  &emsp;print content on screen
11. `head`  &emsp;print first part
12. `tail`  &emsp;print last part
13. `less`  &emsp;browse content
14. `tar`  &emsp;compress or extract file
15. `chmod`  &emsp;change file permissions
16. `man`  &emsp;info about a command

## File system Navigation
### pwd — where are you now? “Print name of current/Working Directory”

``` {code-block} console 
$ pwd

$ pwd -P 
```
- ``-P`` gives you the physical path, 
  - ignores how you got there

 
### ls — list directory contents

Type ``ls`` to display the contents of the current directory.

``` {code-block} console
$ ls -a
```

``-a`` also shows hidden files and directories.

``` {code-block} console
$ ls -l
```
``-l`` gives you listed and detailed information.

``` {code-block} console
$ ls -lt
```

``-lt`` sorts things by time modified.

``` {code-block} console
$ ls –lrt
```

``-r`` gives reversed order, so in this case newest in last line.

``` {code-block} console
$ man ls
```

- for complete information about a command.
- TIP: `-$ man <command>` works for almost any command!
  - scroll with arrows and quit with ``q``.

 
### cd — Change the shell working Directory
- To change directory, use ``cd <target>``

``` {code-block} console
$ cd /proj/introtouppmax

$ pwd

$ ls

$ cd labs

$ pwd
```

````{challenge} Experiment with cd
- Experiment with ``cd``. 
- Try adding ``<spaces>`` or extra ``/`` in various places.
- Use *tab completion* to avoid typos and typing ``ls`` a lot.

- Figure out the use of the following:

``` {code-block} console
$ cd -

$ cd ..

$ cd

$ cd ~

```
````

````{solution} Solution 
- `cd -` : goes back to your last directory

- `cd ..` : goes a level up in the hierarchy

- `cd` : goes to home directory

- `cd ~` : also goes to home directory
````

 

## Copy, Create, Move
### mkdir — make directories

```{warning}
- Make sure you’re in your home directory by `cd ~`
```

- Create a new directory ``uppmax-intro``

``` {code-block} console
$ cd ~
$ mkdir uppmax-intro
```
- Go in there:

``` {code-block} console
 $ cd uppmax-intro/
```

 
### cp — copy files and directories

- Copy files with: `cp <source> <target>`
- Set target to ``.`` to keep name and to point at present directory.

``` {code-block} console
$ cp /proj/introtouppmax/labs/linux_tutorial/ .
```

- Well, that didn’t work. What does the error say?
- So... try
``` {code-block} console
$ cp -r /proj/introtouppmax/labs/linux_tutorial/ .
```

``-r`` is for recursive, meaning including files and subdirectories!

- Move to your just created ``linux_tutorial/``

``` {code-block} console
$ cd linux_tutorial
 ```
- Make a copy of the file “newfile” in the same directory:
``` {code-block} console
$ cp newfile copyfile
```
 
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
 
### mv — move/rename file

- Moving files works just like copying files:
- `mv <source> <target>`
- Move the copy you just made to another place:
``` {code-block} console
$ mv copyfile ../
``` 
- Rename it.
``` {code-block} console
$ mv ../copyfile ../renamedfile
```
 
## Archiving
**tar — archiving and compression**

- We’re going to need more files. Let's extract the tar.gz file (tared and gzipped file)

``` {code-block} console
$ tar -vxzf files.tar.gz
```
- The flags mean:
        - <u>v</u>erbosely
        - e<u>x</u>tract
        - g<u>z</u>ipped
        - <u>f</u>ilename
- Order of flags may matter!
  - ``f`` should be in the start or in the end!
- You should see a list of files being extracted

````{tip}
- To compress use the flag `-c`instead of `-x`

``` {code-block} console
$ tar -czfv <tar file> <path/to/directory/file(s)-or-directory>
```
````
 
## Deleting
### rm — delete files  or directories

```{Note}
- **Tip: make "rm" ask if you really want to erase:**
  - Within a session: Type in the command prompt

        alias rm='rm -i'

  - Override asking with 

        rm –f <>

  - Edit file ".BASHrc" in /home directory by adding the alias line for this to start every time.
- This will also work for mv and cp!
```

- Deleting files works just like copying or moving them:
`rm <target>`

- Try it out:
``` {code-block} console
$ rm ../renamedfile

$ rm this_is_empty
 ```

- hmmmm...

 
### rmdir — delete an empty directory

- We need another command to delete directories

``` {code-block} console
$ rmdir this_is_empty

$ rmdir this_has_a_file
```
- Again??
 
- Is there a way to use rm to delete directories?
 
````{solution}
- Recursive commands `-r` are applied to directories and their contents
``` {code-block} console
$ rm -r this_has_a_file
```
````

## Help
### man — manual, look up the right flags

- Nobody can remember whether it’s ``-R`` or `-r` for recursive, or if ``-f`` lets you choose a file or forces an action.

``` {code-block} console
$ man ls 
```
- shows you how to use ``ls`` and all its options
- Type `/<keyword>` to search for a keyword, use `n` (forward) and ´N` (backward) to scan through hits.
- Scroll with arrows.
- Type `q` to quit.
 
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
