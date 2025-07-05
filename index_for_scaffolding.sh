#!/bin/bash -l


ml bioinfo-tools
ml samtools
ml bwa

samtools faidx moor_frog_agressive_purge_l3.hic.hap1.p_ctg.fa
bwa index moor_frog_agressive_purge_l3.hic.hap1.p_ctg.fa 
cut -f1,2 moor_frog_agressive_purge_l3.hic.hap1.p_ctg.fa.fai > moor_frog_agressive_purge_l3.hic.hap1.genome

samtools faidx moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa
bwa index moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa
cut -f1,2 moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa.fai > moor_frog_agressive_purge_l3.hic.hap2.genome
