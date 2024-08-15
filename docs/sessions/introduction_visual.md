# Basic use with visual tools introduction

Here we start using Rackham.
To ease the learning curve, we use software that is visual,
so you can start feeling at home on Rackham,
before moving to more abstract new topics.

We will not yet discuss IDEs (whatever those are) yet,
as it requires using techniques we teach later.

<!-- Indeed, line lengths beyond 80 characters -->
<!-- markdownlint-disable MD013 -->

```mermaid
flowchart TD
  classDef not_yet_node stroke-dasharray: 5 5
  %% style  fill:#bbf,stroke:#f66,stroke-width:2px,color:#fff,stroke-dasharray: 5 5


  login_remote_desktop[Login to remote desktop]
  use_remote_desktop[Using the remote desktop\nNavigation\nFile management\nText editor]
  file_transfer_filezilla[File transfer\nFileZilla]
  use_ide[Using an IDE]:::not_yet_node

  %% GUI
  login_remote_desktop ---> use_remote_desktop
  use_remote_desktop --> file_transfer_filezilla
  use_remote_desktop -.-> |modules\ninteractive session| use_ide
```

Link                                                                          |Description
------------------------------------------------------------------------------|---------------------------
[Login](../sessions/login.md)                                                 |Log in to an UPPMAX cluster
[Log in to remote desktop environment](../sessions/login_remote_desktop.md)   |Log in to the Rackham remote desktop environment via the website
[Using the remote desktop environment](../sessions/use_remote_desktop.md)     |Using a remote desktop environment
[File transfer using FileZilla](../sessions/file_transfer_using_filezilla.md) |File transfer using FileZilla

<!-- markdownlint-enable MD013 -->
