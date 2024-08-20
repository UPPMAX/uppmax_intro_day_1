# UPPMAX intro

```mermaid
flowchart TD

  subgraph day_1[Day 1]
    login[Login]
    bash_1[Bash 1]
    slurm_1[Slurm 1]
    linux_1[Linux 1]
  end
  subgraph day_2[Day 2]
    linux_2[Linux 2 and 3]
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


Day|Link to course material
---|----------------------------------------------------
1  |[here](https://uppmax.github.io/uppmax_intro_day_1)
2  |[Linux II](https://www.uu.se/download/18.57591c9d18f3ec99a0521715/1715115920644/c_560271-l_1-k_uppmax-linux-ii.pptx.pdf) and [Linux III](https://www.uu.se/download/18.57591c9d18f3ec99a0521716/1715115950709/c_560271-l_1-k_uppmax-linux-iii.pptx.pdf)
3  |[Bash scripts](https://www.uu.se/download/18.57591c9d18f3ec99a052171f/1715115979757/c_560271-l_1-k_uppmax-bash-scripts.pptx.pdf) and [Slurm](https://www.uu.se/download/18.57591c9d18f3ec99a0521784/1715116006615/c_560271-l_1-k_uppmax-slurm-2024-01.pdf)
4  |[here](https://github.com/UPPMAX/uppmax_intro_python)
