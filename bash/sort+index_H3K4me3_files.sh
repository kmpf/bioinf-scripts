#!/usr/bin/env bash

for i in $(ls BC*H3K4me3*tophat2-accepted.bam); do
    j=${i/accepted.bam/accepted-sorted}
#    samtools sort $i $j
    echo $j.bam
    samtools index $j.bam
done
