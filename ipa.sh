#!/bin/bash -l


ml bioinfo-tools
ml IPA/1.8.0

hifi_path=../../HiFi/DataDelivery_2024-09-19_13-16-42_ugc00335/files/pr_118/hifireads/pr_118_001/



ipa local --nthreads 20 \
-i $hifi_path/pr_118_001_cell1.hifireads.fastq.gz \
-i $hifi_path/pr_118_001_cell2.hifireads.fastq.gz \
-i $hifi_path/pr_118_001_cell3.hifireads.fastq.gz
