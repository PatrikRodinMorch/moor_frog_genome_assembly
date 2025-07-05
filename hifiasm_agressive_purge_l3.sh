#!/bin/bash -l

hifi_path=../../../HiFi/DataDelivery_2024-09-19_13-16-42_ugc00335/files/pr_118/hifireads/pr_118_001

/home/patrikro/hifiasm-0.20.0-r639/./hifiasm -t 20 -l 3 -o green_toad_agressive_purge_l3 \
$hifi_path/pr_118_001_cell1.hifireads.fastq.gz \
$hifi_path/pr_118_001_cell2.hifireads.fastq.gz \
$hifi_path/pr_118_001_cell3.hifireads.fastq.gz
