#!/bin/bash -l

hifi_path=../../HiFi/DataDelivery_2024-09-19_13-16-42_ugc00335/files/pr_118/hifireads/pr_118_001/

/home/patrikro/meryl-1.4.1/bin/./meryl count \
k=21 \
$hifi_path/*fastq.gz \
output arvalis.meryl.kmer21

/home/patrikro/meryl-1.4.1/bin/./meryl union-sum \
k=21 \
arvalis.meryl.kmer21 \
output merged.arvalis.meryl.kmer21



/home/patrikro/meryl-1.4.1/bin/./meryl histogram \
k=21 \
merged.arvalis.meryl.kmer21 > merged.arvalis.meryl.kmer21.hist
