#!/bin/bash -l


ml bioinfo-tools
ml R/4.3.1
ml R_packages/4.3.1
ml samtools
ml BEDTools

export MERQURY=/home/patrikro/merqury-1.3
export PATH=/home/patrikro/meryl-1.4.1/bin/:$PATH

$MERQURY/merqury.sh /proj/snic2019-30-54/arvalis_ref_genome/assembly/genomescope/merged.arvalis.meryl.kmer21/ \
../../moor_frog_agressive_purge_l3.hic.hap1.p_ctg.fa \
../../moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa \
moor_frog_agressive_purge_l3.hic_out
