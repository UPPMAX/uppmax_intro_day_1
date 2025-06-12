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

  modules[Using pre-installed software: modules]
  scripts[Create a script]
  interactive[Starting an interactive session]
  job_scheduler[Job scheduler]

  modules --> scripts
  scripts --> job_scheduler
  job_scheduler --> interactive
```

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

| Link                                                                        | Description                     |
| --------------------------------------------------------------------------- | ------------------------------- |
| [Modules](../sessions/modules.md)                                           | Find and load software modules  |
| [Scripts](../sessions/scripts.md)                                           | Create scripts                  |
| [Job scheduler](../sessions/job_scheduler.md)                               | Send jobs to the scheduler      |
| [Starting an interactive session](../sessions/start_interactive_session.md) | Starting an interactive session |

<!-- markdownlint-enable MD013 -->
