# Introduction

!!!- info "Learning objectives"

    - Understand today in the big picture
    - [CONVERT THE ONES BELOW]
    - Get overview of UPPMAX and NAISS
    - Work with your files in a LINUX environment
    - Learn to use the UPPMAX resources in a good way
    - Learn the basics in the Python programming language
    - Let's step up and have an overview of SNIC
    - This is a short introduction in how to reach the calculation nodes
    - Wednesday afternoon is wedded to this topic!
    - We'll get an overview of UPPMAX and SNIC/NAISS and how a computer cluster works
    - Let's recap and go a little deeper into the organization of NAISS/UPPMAX
    - Let's step up and have an overview of NAISS
    - We'll relate our login session to the specific "area" in the cluster.
    - We'll go through platform specific (Mac/Linux/Windows) ways to log in to UPPMAX.
    - We'll briefly get an overview of Linux
      - How the command line works
      - Some text editors
      - Things to be aware of
    - Let's dig into the most important BASH commands
    - We'll do a type-along session
    - Get overview of UPPMAX and NAISS
    - Work with your files in a LINUX environment
    - Learn to use the UPPMAX resources in a good way
    - Learn the basics in the Python programming language
    - Let's recap and go a little further into the UPPMAX hardware!
    - We'll briefly get an overview of kinds of sensitive data
    - ... and the **Bianca** system

## UPPMAX intro overview

```mermaid
flowchart TD

  subgraph day_1[Day 1]
    login[Login]
    bash_1[Bash 1]
    slurm_1[Slurm 1]
    linux_1[Linux 1]
  end
  subgraph day_2[Day 2]
    linux_2[Linux 2]
  end
  subgraph day_3[Day 3]
    bash_2[Bash 2]
    slurm_2[Slurm 2]
  end
  subgraph day_4[Day 4]
    python[Python]
  end

  bash_1 --> bash_2
  linux_1 --> linux_2  

  linux_2 --> bash_2
  slurm_1 --> slurm_2

  bash_2 --> python
  slurm_2 --> python
```

## Overview of today

```mermaid
flowchart TD
  subgraph uppmax[UPPMAX]
    uppmax_clusters[UPPMAX clusters]
    uppmax_courses[UPPMAX courses]
  end
  subgraph remote_desktop[Remote desktop environment]
    login_remote_desktop[Login to remote desktop]
    use_remote_desktop[Using the remote desktop\nNavigation\nFile management]
    file_transfer_filezilla[File transfer\nFileZilla]
    use_ide[Using an IDE]
  end
  subgraph console[Console environment]
    login_ssh[Login with SSH]
    use_terminal[Using a terminal\nNavigation\nFile management]
    scripts[Create a script]
    file_transfer_scp[File transfer\nscp]
    modules[Modules]
    job_scheduler[Job scheduler]
    text_editor[Using a text editor]
  end


%% GUI
login_remote_desktop --> use_remote_desktop
use_remote_desktop --> file_transfer_filezilla
use_remote_desktop --> use_ide

%% Console
login_ssh --> use_terminal
use_terminal --> file_transfer_scp
use_terminal --> modules
scripts --> job_scheduler
modules --> scripts
use_terminal --> text_editor
text_editor --> scripts

%% console -> GUI
modules --> use_ide

%% GUI -> console
login_remote_desktop -.- login_ssh
use_remote_desktop -.- use_terminal
file_transfer_filezilla -.- file_transfer_scp  
use_ide -.- text_editor
```

## Today

When       |Who|What
-----------|---|-----------------
??:??-??:??|R  |[Login](login.md)
??:??-??:??|R  |[Log in to remote desktop environment](login_remote_desktop.md)
??:??-??:??|R  |[Using the remote desktop environment](use_remote_desktop.md)
??:??-??:??|R  |[File transfer using FileZilla](file_transfer_using_filezilla.md)
??:??-??:??|R  |[Log in to console environment](login_console.md)
??:??-??:??|R  |[Using a terminal](use_terminal.md)

Linux
HPC
NAISS
Software
- modules
Submitting jobs
Working on UPPMAX
Courses and workshops
NAISS Sens and Bianca
Using an IDE


