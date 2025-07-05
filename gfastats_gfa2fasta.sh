#!/bin/bash -l


conda activate gfastats

gfastats moor_frog_agressive_purge_l3.hic.hap1.p_ctg.gfa -o fasta --discover-paths --threads 20 > moor_frog_agressive_purge_l3.hic.hap1.p_ctg.fa
gfastats moor_frog_agressive_purge_l3.hic.hap2.p_ctg.gfa -o fasta --discover-paths --threads 20 > moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa
gfastats moor_frog_agressive_purge_l3.hic.p_ctg.gfa -o fasta --discover-paths --threads 20 > moor_frog_agressive_purge_l3.hic.p_ctg.fa


conda deactivate
