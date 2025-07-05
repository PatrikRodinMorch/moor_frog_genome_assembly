#!/bin/bash -l


ml bioinfo-tools
ml compleasm

compleasm run -t20 -l vertebrata -a ../../moor_frog_agressive_purge_l3.hic.hap1.p_ctg.fa -o moor_frog_agressive_purge_l3.hic.hap1
compleasm run -t20 -l vertebrata -a ../../moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa -o moor_frog_agressive_purge_l3.hic.hap2 

