# Introduction

!!!- info "Learning objectives"

    - Understand the role of this day in this four day course
    - Understand where the find the schedule
    - Understand the topics of today
    - [CONVERT THE ONES BELOW]
    - Get overview of UPPMAX and NAISS
    - Get overview of UPPMAX and NAISS
    - Let's step up and have an overview of SNIC
    - Let's step up and have an overview of NAISS
    - Let's recap and go a little deeper into the organization of NAISS/UPPMAX
    - Work with your files in a LINUX environment
    - We'll relate our login session to the specific "area" in the cluster.
    - We'll go through platform specific (Mac/Linux/Windows) ways to log in to UPPMAX.
    - We'll briefly get an overview of Linux
      - How the command line works
      - Some text editors
      - Things to be aware of
    - Let's dig into the most important BASH commands
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
  subgraph world[The world]
    hpc[HPC]
    naiss[NAISS]
  subgraph uppmax[UPPMAX]
      uppmax_clusters[UPPMAX clusters]
      bianca[Bianca]
      rackham[Rackham]
      uppmax_courses[UPPMAX courses]
    end
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
    modules[Using pre-installed software\nModules]
    interactive[Using an interactive session]
    job_scheduler[Job scheduler]
    text_editor[Using a text editor]
  end

  hpc ---> login_remote_desktop

  %% UPPMAX
  hpc --> naiss
  naiss --> uppmax_clusters
  uppmax_clusters --> bianca
  uppmax_clusters --> rackham

  %% GUI
  login_remote_desktop ---> use_remote_desktop
  use_remote_desktop --> file_transfer_filezilla
  use_remote_desktop --> use_ide

  %% Console
  login_ssh --> use_terminal
  use_terminal --> file_transfer_scp
  use_terminal --> modules
  scripts --> job_scheduler
  modules --> scripts
  use_terminal ---> text_editor
  use_terminal --> interactive
  text_editor --> scripts

  %% console -> GUI
  modules --> use_ide
  

  %% GUI -> console
  login_remote_desktop --> login_ssh
  use_remote_desktop --> use_terminal
  file_transfer_filezilla --> file_transfer_scp  
  interactive --> use_ide
```

## Today

When       |Who|What
-----------|---|-----------------
??:??-??:??|R  |[Clusters](clusters.md)
??:??-??:??|R  |[Login](login.md)
??:??-??:??|R  |[Log in to remote desktop environment](login_remote_desktop.md)
??:??-??:??|R  |[Using the remote desktop environment](use_remote_desktop.md)
??:??-??:??|R  |[File transfer using FileZilla](file_transfer_using_filezilla.md)
??:??-??:??|R  |[Log in to console environment](login_console.md)
??:??-??:??|R  |[Using a terminal](use_terminal.md)
??:??-??:??|R  |[File transfer using scp](file_transfer_using_scp.md)
??:??-??:??|R  |[The module system](modules.md)
??:??-??:??|R  |[Using an IDE](ide.md)
??:??-??:??|R  |[Using a text editor](text_editor.md)
??:??-??:??|R  |[Creating a bash script](scripts.md)
??:??-??:??|R  |[The job scheduler](slurm.md)
??:??-??:??|R  |[The UPPMAX clusters](uppmax_clusters.md)
??:??-??:??|R  |[The UPPMAX Rackham cluster](rackham.md)
??:??-??:??|R  |[The UPPMAX Bianca cluster](bianca.md)
??:??-??:??|R  |[HPC](hpc.md)
??:??-??:??|R  |[NAISS](naiss.md)
??:??-??:??|R  |[Getting started, apply for UPPMAX resources](getting_started.md)
??:??-??:??|R  |[Courses](courses.md)
