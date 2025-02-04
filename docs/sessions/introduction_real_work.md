---
tags:
  - lesson
  - real work
  - overview
  - introduction
---

# Doing real work

Here we start doing real work: setting Rackham to work!

The session on the job scheduler is considered so important to us,
that there will be a full day dedicated to it.
Today, however, we will use it minimally.

```mermaid
flowchart TD

  classDef maybe_not_node stroke-dasharray: 5 5

  filesystem[The UPPMAX filesystem]
  modules[Using pre-installed software: modules]
  scripts[Create a script]
  interactive[Starting an interactive session]
  job_scheduler[Job scheduler]
  ides[Using IDEs]:::maybe_not_node

  filesystem --> modules
  modules --> scripts
  scripts --> job_scheduler
  job_scheduler --> interactive
  interactive -.-> ides
```

Link                                                                          |Description
------------------------------------------------------------------------------|--------------------------------------------------------------------------
[The UPPMAX filesystem](../sessions/filesystem.md)                            |Important folders and backup
[Modules](../sessions/modules.md)                                             |Find and load software modules
[Scripts](../sessions/scripts.md)                                             |Create scripts
[Job scheduler](../sessions/job_scheduler.md)                                 |Send jobs to the scheduler
[Starting an interactive session](../sessions/start_interactive_session.md)   |Starting an interactive session
[IDEs](../sessions/ides.md)                                                   |Use an IDE

