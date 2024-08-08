# UPPMAX Intro Day 1

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
  job_scheduler --> interactive
  text_editor --> scripts

  %% console -> GUI
  modules --> use_ide
  

  %% GUI -> console
  login_remote_desktop --> login_ssh
  use_remote_desktop --> use_terminal
  file_transfer_filezilla --> file_transfer_scp  
  interactive --> use_ide
```



