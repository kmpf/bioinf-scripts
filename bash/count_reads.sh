#!/usr/bin/env bash

# samtools view
# -c: count instead of output
# -F: reads were given FLAG bit is unset
# -f: reads were given FLAG bit is set

# Count ALL reads
samtools view -c

# Count all mapped reads
samtools view -c -F 4

# Count all unmapped reads
samtools view -c -f 4



# Count only paired end reads with both reads properly mapped
samtools view -c -f 1 -F 12

# Produce tab-delimited file (see man samtools)
samtools idxstats
