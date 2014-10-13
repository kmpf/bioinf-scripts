library(ggplot2)

exp1_names <- c("H3K36me3 P1", "H3K36me3 P2", "H3K4me3 P1", "H3K4me3 P2")
exp1_enrichment <- c(40.58, 24.76, 147.86, 129.37)

exp1_df <- data.frame(names=exp1_names, enrichment=exp1_enrichment)

exp3_names <- c("H3K36me3 P1", "H3K36me3 P2", "H3K4me3 P1", "H3K4me3 P2", "H3K27ac P1", "H3K27ac P2", "H3K27ac P3", "H3K27me3 P1", "H3K27me3 P2", "H3K27me3 P3")
exp3_enrichment <- c(4.94, 4.84, 5.98, 16.43, 4.41, 3.77, 3.95, 2.20, 1.85, 1.56)
exp3_df <- data.frame(names=exp3_names, enrichment=exp3_enrichment)

g1 <- ggplot(exp1_df, aes(names, enrichment, fill=names)) +
     geom_bar(stat="identity")

ggsave("Exp1_bar.png", plot=g1)

g3 = ggplot(exp3_df, aes(names, enrichment, fill=names)) +
     geom_bar(stat="identity")

ggsave("Exp3_bar.png", plot=g3)
