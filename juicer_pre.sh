#!/bin/bash -l


ml bioinfo-tools
ml Juicer_tools

(java -Xmx250g -jar /sw/bioinfo/Juicer_tools/1.22.01/rackham/bin/juicer_tools.jar pre arvalis_JBAT_hap1.txt arvalis_JBAT_hap1.hic.part <(cat arvalis_JBAT_hap1.log  | grep PRE_C_SIZE | awk '{print $2" "$3}')) && (mv arvalis_JBAT_hap1.hic.part arvalis_JBAT_hap1.hic)

