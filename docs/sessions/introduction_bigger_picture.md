---
tags:
    - lesson
    - bigger picture
---

# The bigger picture

Here we go look at the bigger picture.

```mermaid
flowchart TD
  naiss[NAISS]
  supr[SUPR]
  uppmax[UPPMAX, other HPC centers]
  clusters[Clusters]
  courses[Courses]

  supr --> |manages access| clusters
  naiss --> |$| uppmax
  naiss --> |$| supr
  uppmax --> |has| clusters
  uppmax --> |has| courses
```

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

| Link                                | Description                                |
| ----------------------------------- | ------------------------------------------ |
| [NAISS](../sessions/naiss.md)       | Request for NAISS resources                |
| [Clusters](../sessions/clusters.md) | Clusters in general and specific to UPPMAX |
| [Courses](../sessions/courses.md)   | Courses in general and specific to UPPMAX  |

<!-- markdownlint-enable MD013 -->
