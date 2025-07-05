#!/bin/bash -l



conda activate gfastats

gfastats ../../moor_frog_agressive_purge_l3.hic.hap1.p_ctg.fa 4908220422 --threads 20 --nstar-report > moor_frog_agressive_purge_l3.hic.hap1.stats
gfastats ../../moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa 4908220422 --threads 20 --nstar-report > moor_frog_agressive_purge_l3.hic.hap2.stats

conda deactivate
