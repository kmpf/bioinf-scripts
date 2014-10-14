#!/usr/bin/env bash

# Execute cutadapt on smallest sample existing ..

# .. on frontend2
# ./run-locally.py cutadapt/BC3_24h_H3K4me3-R1 --even-if-dirty

# copy error output
# cp out/cutadapt-7265/.cutadapt_BC3_24h_H3K4me3-R1.stderr frontend2_cutadapt_BC3_24h_H3K4me3-R1.stderr

# Remove created output files
# find out/cutadapt-7265/ -type f -a -type l -exec rm {} \;

# .. on a node
./submit-to-cluster.py cutadapt/BC3_24h_H3K4me3-R1 --even-if-dirty

# copy error output
# cp out/cutadapt-7265/.cutadapt_BC3_24h_H3K4me3-R1.stderr node_cutadapt_BC3_24h_H3K4me3-R1.stderr

