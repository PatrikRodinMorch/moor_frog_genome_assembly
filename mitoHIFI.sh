#!/bin/bash -l


ml bioinfo-tools
ml seqtk

###contings
singularity run mitoHIFI.sif mitohifi.py -c ../../hifiasm/agressive_purge_l3_omnic/moor_frog_agressive_purge_l3.hic.hap1.p_ctg.fa \
-g PP797569.1.gb \
-f PP797569.1.fasta \
-p 80 \
-o 2 \
-t 20


