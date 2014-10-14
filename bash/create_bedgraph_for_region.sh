#!/usr/bin/env bash


for i in $(ls BC*H3K4me3*tophat2-accepted-sorted.bam); do
    j=${i/bam/bg}
    echo $j
    samtools view -b $i chr12:9895082-9923497 |  genomeCoverageBed -ibam stdin -bg > $j
done


