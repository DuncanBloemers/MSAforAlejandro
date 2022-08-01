# Setup ----
rm(list=ls())
library(Biostrings)
library(ggmsa)

# Reading in sequence alignments ----
RcaSeqs <- readAAStringSet("./Data/alignment_TaRcaAll.fasta")

# MSA using ggmsa package ----
png(file="./MSA_TaRcaAll2.png",
    width=3840, height=2160)
ggmsa(RcaSeqs, seq_name = TRUE, char_width = 0.5, disagreement = F, consensus_views = F)+
  facet_msa(field = 120)
dev.off()
