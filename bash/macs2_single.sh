#!/usr/bin/env bash

#macs2 callpeak --treatment out/tophat2-5f97/BC3_24h_H3K4me3-tophat2-accepted.bam --control out/tophat2-5f97/BC3_24h_Input-tophat2-accepted.bam --format AUTO --name BC3_24h_H3K4me3-BC3_24h_Input

./submit-to-cluster.py --even-if-dirty macs2/BC3_24h_H3K4me3-BC3_24h_Input
