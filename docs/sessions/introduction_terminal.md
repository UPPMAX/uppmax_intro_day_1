# Basic use from a terminal

Here we start using Rackham from a terminal.
To ease the learning curve,
we first do things you've already done
with visual tools.

```mermaid
flowchart TD

  classDef maybe_not_node stroke-dasharray: 5 5

  login_ssh[Login with SSH]
  use_terminal[Using a terminal, navigation, file management, text editor]
  file_transfer_scp[File transfer, scp]:::maybe_not_node

  login_ssh --> use_terminal
  use_terminal -.-> file_transfer_scp
```

<!-- Indeed, line lengths beyond 80 characters -->
<!-- markdownlint-disable MD013 -->

Link                                                                              |Description
----------------------------------------------------------------------------------|--------------------------------------------------------------------------
[Login with SSH](../sessions/login_console.md)                                    |Log in to Rackham's console environment
[Using a terminal](../sessions/use_terminal.md)                                   |Using a terminal for exploring the filesystem and do basic file management
If before 13:30: [File transfer using SCP](../sessions/file_transfer_using_scp.md)|Transfer files from the terminal

<!-- markdownlint-enable MD013 -->
