# High Performance Computing — HPC

```{objectives}
- Let's recap and go a little further into the UPPMAX hardware!
```

## HPC, HTC and MTC

- The Buzz word is **HPC or High Performance Computing**, but this is rather narrow focusing on fast calculation, i.e. processors and parallelism
- Many of your projects are more focusing on high throughput, large memory demands and many tasks.
- Here is a list of the three most common **Computing paradigms**:

- **HPC**: High Performance Computing — Focus on floating point operations per second (**FLOPS**, flops or flop/s) 
  - characterized as needing large amounts of computing power for short periods of time
- **HTC**: High-Throughput Computing — 
  - operations or **jobs per month or per year**. 
  - more interested in how many jobs can be completed over a long period of time instead of how fast. 
  - independent, sequential jobs that can be individually scheduled o
- **MTC**: Many-task Computing — emphasis of using many computing resources over short periods of time to accomplish many computational tasks
  - bridge the gap between HTC and HPC. 
  - reminiscent of HTC, but including both dependent and independent tasks), where the primary metrics are measured in seconds (e.g. **FLOPS**, tasks/s, **MB/s** **I/O rates**), as opposed to operations (e.g. jobs) per month. 
  - high-performance computations comprising multiple distinct activities, coupled via file system operations. 



## What is a cluster?
- A network of computers, each computer working as a node.

- From small scale RaspberryPi cluster... 
     
![RaspBerry](./img/IMG_5111.jpeg)

- To supercomputers like Rackham.

![Rackham](./img/uppmax-light2.jpg)

- Each node contains several processor cores and RAM and a local disk called scratch.

![Node](./img/node.png)

- The user logs in to login nodes via Internet through ssh or Thinlinc.

  - Here the file management and lighter data analysis can be performed.

![RaspBerry](./img/nodes.png)

![RaspBerry](./img/Bild1.png)

- The calculation nodes has to be used for intense computing. 
  - "Normal" softwares use one core.
  - Parallelized software can utilize several cores or even several nodes. Keywords signalizing this are e.g.:
    - "multi-threaded", "MPI", "distributed memory", "openMP", "shared memory".
  - To let your software run on the calculation nodes
    - start an "interactive session" or
    - "submit a batch job".
    - More about this in today's introduction to jobs.

## Storage basics
- All nodes can access:
  - Your home directory on Domus or Castor
  - Your project directories on Crex or Castor
  - Its own local scratch disk (2-3 TB)

- If you’re reading/writing a file once, use a directory on Crex or Castor
- If you’re reading/writing a file many times...
    - Copy the file to ”scratch”, the node local disk:
    ```
    cp myFile $SNIC_TMP
    ```
        
        
## The UPPMAX hardware   
 
### Clusters

- We have a number of compute clusters:

  -  [Rackham](https://www.uppmax.uu.se/resources/systems/the-rackham-cluster/)
, reserved for SNIC projects
  -  [Snowy](https://www.uppmax.uu.se/resources/systems/the-snowy-cluster/), GPU, long jobs reserved for UPPMAX projects and Education
  -  [Bianca](https://www.uppmax.uu.se/resources/systems/the-bianca-cluster/)
, a part of SNIC-SENS
  -  [Miarka](https://www.uppmax.uu.se/resources/systems/miarka-cluster/), reserved for Scilifelab production
  -  [UPPMAX cloud](https://www.uppmax.uu.se/resources/systems/the-uppmax-cloud/), a part of SNIC Science Cloud

- [User guides](https://www.uppmax.uu.se/support/user-guides/)

- The storage systems we have provide a total volume of about 25 PB, the equivalent of  50,000 years of 128-bit encoded music. Read more on the [storage systems page](https://www.uppmax.uu.se/resources/systems/storage-systems/).

### UPPMAX storage system names (projects & home directories)
- Rackham storage: Crex & Domus
- Bianca storage: Castor & Cygnus
- NGI production system (Miarka): Vulpes
- NGI delivery server: Grus
- Off-load storage: Lutra

### System usage
[System usage](https://www.uppmax.uu.se/resources/system-usage/)

- More about the systems can be found at the [System resources page](https://www.uppmax.uu.se/resources/systems/)

 
### A little bit more about Snowy

- [User guide](https://www.uppmax.uu.se/support/user-guides/snowy-user-guide/).
  - There is a [local compute round](https://supr.snic.se/round/uppmaxcompute2021/) for UU users applying for Snowy in SUPR.
  - GU (courses) applications (including GU GPU usage) are not done in SUPR, but are supposed to be routed through the service desk.   
  - The details can be found at the [Getting started page](https://www.uppmax.uu.se/support/getting-started/course-projects/).

### About Bianca?
- Wait for it!

## Summary about the three "common" UPPMAX clusters

| |Rackham|Snowy|Bianca|
|-------|-----|------|---|
|**Purpose**|General-purpose|General-purpose|Sensitive|
|**#  Nodes (Intel)**|486+144|228+ <br>50 Nvidia T4 GPUs|288 +  <br>10 nodes á 2 <br>NVIDIA A100 GPUs|
|**Cores per node**|20/16|16|16/64|
|**Memory per node**|128 GB|128 GB|128 GB
|**Fat nodes**|256 GB & 1 TB| 256, 512 GB & 4 TB| 256 & 512 GB|
|**Local disk (scratch)**|2/3 TB| 4 TB| 4 TB |
|**Login nodes**|Yes| No (reached from Rackham)|Yes (2 cores and 15 GB)|
|**"Home" storage**|Domus|Domus|Castor|
|**"Project" Storage**|Crex, Lutra|Crex, Lutra|Castor|

## Overview of the UPPMAX systems

```{mermaid}

graph TB

  Node1 -- interactive --> SubGraph2Flow
  Node1 -- sbatch --> SubGraph2Flow
  subgraph "Snowy"
  SubGraph2Flow(calculation nodes) 
        end

        thinlinc -- usr-sensXXX + 2FA----> SubGraph1Flow
        Node1 -- usr-sensXXX + 2FA----> SubGraph1Flow
        subgraph "Bianca"
        SubGraph1Flow(Bianca login) -- usr+passwd --> private(private cluster)
        private -- interactive --> calcB(calculation nodes)
        private -- sbatch --> calcB
        end

        subgraph "Rackham"
        Node1[Login] -- interactive --> Node2[calculation nodes]
        Node1 -- sbatch --> Node2
        end
```


```{keypoints}
- UPPMAX has several clusters 
     - each having its focus and limitation or possibilites
     - access is determined by type of project
```
