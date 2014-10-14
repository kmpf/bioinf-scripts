#!/usr/bin/env bash

# Execute segemehl on smallest sample existing ..

# .. on frontend2
# ./run-locally.py segemehl/BC3_24h_H3K4me3 --even-if-dirty

# copy error output
# cp out/segemehl-adec/.segemehl_BC3_24h_H3K4me3.stderr frontend2_segemehl_BC3_24h_H3K4me3.stderr

# Remove created output files
# find out/segemehl-adec/ -type f -a -type l -exec rm {} \;

# .. on a node
./submit-to-cluster.py segemehl/BC3_24h_H3K4me3 --even-if-dirty

# copy error output
# cp out/segemehl-adec/.segemehl_BC3_24h_H3K4me3.stderr node_segemehl_BC3_24h_H3K4me3.stderr

