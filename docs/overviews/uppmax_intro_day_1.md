---
tags:
    - lesson
    - UPPMAX
    - intro
    - day 1
    - overview
    - today
    - this day
---

# UPPMAX Intro Day 1

<!-- Indeed, line lengths beyond 80 characters -->
<!-- markdownlint-disable MD013 -->

```mermaid
flowchart TD

  classDef basic_gui fill:#fdd, stroke:#f00
  classDef basic_terminal fill:#ffd, stroke:#ff0
  classDef real_work fill:#dfd, stroke:#0f0
  classDef bigger_picture fill:#dff, stroke:#044, stroke-dasharray: 5 5

  classDef basic_terminal_maybe_not fill:#ffd, stroke:#440, stroke-dasharray: 5 5
  classDef real_work_maybe_not_node fill:#dfd, stroke:#040, stroke-dasharray: 5 5

  %% subgraph remote_desktop[Remote desktop environment]
    login_remote_desktop[Login to remote desktop]:::basic_gui
    use_remote_desktop[Using the remote desktop, navigation, file management, text editor]:::basic_gui
    file_transfer_filezilla[File transfer using FileZilla]:::basic_gui
    use_ide[Using an IDE]:::real_work_maybe_not_node
  %% end
  %% subgraph console[Console environment]
    login_ssh[Login with SSH]:::basic_terminal
    use_terminal[Using a terminal, navigation, file management, text editor]:::basic_terminal
    file_transfer_scp[File transfer using scp]:::basic_terminal_maybe_not
    scripts[Create a script]:::real_work
    modules[Using pre-installed software: modules]:::real_work
    interactive[Using an interactive session]:::real_work
    job_scheduler[Job scheduler]:::real_work
  %% end

  %% subgraph world[The bigger picture]
    naiss[NAISS]:::bigger_picture
    supr[SUPR]:::bigger_picture
    uppmax[UPPMAX, other HPC centers]:::bigger_picture
    clusters[Clusters]:::bigger_picture
    courses[Courses]:::bigger_picture
  %% end

  %% Bigger picture
  supr --> |manages access| clusters
  naiss --> |$| uppmax
  naiss --> |$| supr
  uppmax --> |has| clusters
  uppmax --> |has| courses


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
  job_scheduler --> interactive

  %% console -> GUI
  modules --> use_ide


  %% GUI -> console
  login_remote_desktop --> login_ssh
  use_remote_desktop --> use_terminal
  file_transfer_filezilla --> file_transfer_scp
  interactive --> use_ide
```

<!-- markdownlint-enable MD013 -->
