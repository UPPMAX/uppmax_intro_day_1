# User guide

## FAQ
[FAQ](https://www.uppmax.uu.se/support/faq/)

## What is a cluster?

- A network of computers, each computer working as a node.
- From small scale RaspberryPi cluster :-)
- To supercomputers like Rackham.
- Each node contains several processor cores and RAM and a local disk called scratch.
- The user logs in to login nodes via Internet through ssh or Thinlinc.
  -  Here the file management and lighter data analysis can be performed.
- The calculation nodes must be used for intense computing. 

  - "Normal" softwares use one core.
  -  Parallelized software can utilize several cores or even several nodes. Keywords signalizing this are e.g.:
    -     "multi-threaded", "openMP", "shared memory", "MPI", "distributed memory".
  -  To let your software run on the calculation nodes
    -   start an "interactive session" or
    -    "submit a batch job".
- All nodes can access:

  -  Your home directory on Domus or Castor
  -  Your project directories on Crex or Castor
  -  Its own local scratch disk (2-3 TB)



## Rackham user guide
- [Rackham](https://www.uppmax.uu.se/support/user-guides/rackham-user-guide/)
## Bianca user guide
- [Bianca](https://www.uppmax.uu.se/support/user-guides/bianca-user-guide/)
- [Transit](https://www.uppmax.uu.se/support/user-guides/transit-user-guide/)
- [Deliver](https://www.uppmax.uu.se/support/user-guides/deliver-user-guide/)

## Snowy user guide
- [Snowy](https://www.uppmax.uu.se/support/user-guides/snowy-user-guide/)
- [Snowy GPU](https://www.uppmax.uu.se/support/user-guides/using-the-gpu-nodes-on-snowy/)

## Using installed software
- [Centrally installed software - module system](https://www.uppmax.uu.se/resources/software/module-system/)

## Job submission system - Slurm
- [Slurm](https://www.uppmax.uu.se/support/user-guides/slurm-user-guide/)

## Linux basics
- [Linux intro](https://www.uppmax.uu.se/support/user-guides/linux-introduction--screencast-/)

## General HPC
- [Login node restrictions](https://www.uppmax.uu.se/support/user-guides/login-node-restrictions/)
- [Slurm](https://www.uppmax.uu.se/support/user-guides/slurm-user-guide/)
- [Jobstats](https://www.uppmax.uu.se/support/user-guides/jobstats-user-guide/)
- [Plotting your core hour usage](https://www.uppmax.uu.se/support/user-guides/plotting-your-core-hour-usage/)
- [Disk storage guide](https://www.uppmax.uu.se/support/user-guides/disk-storage-guide/)
- [How to use the nodes's own disk](https://www.uppmax.uu.se/support/user-guides/how-to-use-the-nodes--own-disk/)
- [Detachable screen](https://www.uppmax.uu.se/support/user-guides/running-a-detachable-screen-process-in-a-job/)
- [MPI and openMP user guide](https://www.uppmax.uu.se/support/user-guides/mpi-and-openmp-user-guide/)
- [Uppmax in a can](https://www.uppmax.uu.se/support/user-guides/uppmax-in-a-can-guide/)
- [SGE vs. Slurm](https://www.uppmax.uu.se/support/user-guides/sge-vs-slurm-comparison/)
- [Debuggers and profiling tools](https://www.uppmax.uu.se/support/user-guides/debuggers-and-profiling-tools/)
- [Luigi batch workflow](https://www.uppmax.uu.se/support/user-guides/automating-workflows-using-the-luigi-batch-workflow-system/)

## Life Science specific


- [Applying for a Life Science project](https://www.uppmax.uu.se/support/getting-started/applying-for-projects/)
- Running LifeScope on UPPMAX
-    Starting Integrative Genomics Viewer (IGV) on Rackham/Snowy
-    Test Galaxy on UPPMAX
-    Using CRAM to compress BAM files
- Accessing Swegen


