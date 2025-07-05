#!/bin/bash -l


ml bioinfo-tools
ml mash

hifi_path=../../HiFi/DataDelivery_2024-09-19_13-16-42_ugc00335/files/pr_118/hifireads/pr_118_001/



mash screen -w -p 20 refseq.genomes.k21s1000.msh $hifi_path/pr_118_001_cell1.hifireads.fastq.gz > pr_118_001_cell1.hifireads.tab
mash screen -w -p 20 refseq.genomes.k21s1000.msh $hifi_path/pr_118_001_cell2.hifireads.fastq.gz > pr_118_001_cell2.hifireads.tab
mash screen -w -p 20 refseq.genomes.k21s1000.msh $hifi_path/pr_118_001_cell3.hifireads.fastq.gz > pr_118_001_cell3.hifireads.tab


