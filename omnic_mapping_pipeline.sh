#!/bin/bash -l


ml bioinfo-tools
ml samtools
ml bwa
ml pairtools

omnic_path=../../OmniC/trimmed_reads
contig_asm=../hifiasm/agressive_purge_l3_omnic
temp_dir=/proj/snic2019-30-54/arvalis_ref_genome/assembly/scaffolding/pairtools_tempdir/

bwa mem -5SP -T0 -t 20 $contig_asm/moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa \
$omnic_path/P32302_101_S78_L002_R1_001_paired.fastq.gz $omnic_path/P32302_101_S78_L002_R2_001_paired.fastq.gz | \
pairtools parse --min-mapq 40 --walks-policy 5unique --max-inter-align-gap 30 --nproc-in 10 --nproc-out 10 --chroms-path $contig_asm/moor_frog_agressive_purge_l3.hic.hap2.genome | \
pairtools sort --tmpdir=$temp_dir --nproc 20 | pairtools dedup --nproc-in 10 \
--nproc-out 10 --mark-dups --output-stats moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa.stats.txt | pairtools split --nproc-in 10 \
--nproc-out 10 --output-pairs moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa.pairs --output-sam -|samtools view -bS -@20 | \
samtools sort -@20 -o moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa.PT.bam; samtools index moor_frog_agressive_purge_l3.hic.hap2.p_ctg.fa.PT.bam
