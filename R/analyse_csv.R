library(ggplot2)

create.barplot <- function(data, plot_filename) {
  g <- ggplot(data, aes(x = reorder(Sample, -Counts), y = Counts))
  g <- g + geom_bar(stat="identity")
  g <- g + theme_bw(base_size=10)
  g <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
  ggsave(plot_filename, plot=g, width=150, height=75, units="mm")
}

data <- read.csv("mapped_reads_per_sample.txt", sep=",", fill=TRUE, header=FALSE)
colnames(data) <- c("Sample", "Counts")
data <- data[order(-data[, 2]), ]
create.barplot(data, "Counts_per_sample_bar.png")

data <- read.csv("mapped_reads_per_naive_sample.txt", sep=",", fill=TRUE, header=FALSE)
colnames(data) <- c("Sample", "Counts")
data <- data[order(-data[, 2]), ]
create.barplot(data, "Counts_per_naive_sample_bar.png")

data <- read.csv("mapped_reads_per_24h_sample.txt", sep=",", fill=TRUE, header=FALSE)
colnames(data) <- c("Sample", "Counts")
data <- data[order(-data[, 2]), ]
create.barplot(data, "Counts_per_24h_sample_bar.png")

data.Input <- data[ grep(pattern="*Input*", data$Sample), ]


create.peak.barplot <- function(data, plot_filename) {
  g <- ggplot(data, aes(x = reorder(Antibody, Control), y = Peaks))
  g <- g + geom_bar(stat="identity")
  g <- g + theme_bw(base_size=10)
  g <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
  ggsave(plot_filename, plot=g, width=150, height=75, units="mm")
}

called.peaks <- read.csv("called_narrow_peaks.txt", sep=" ", fill=TRUE, header=FALSE)
colnames(called.peaks) <- c("Peaks", "Antibody", "Control")

called.peaks.IgG <- called.peaks[grep(pattern="*IgG*", called.peaks$Control),]
create.peak.barplot(called.peaks.IgG, "IgG_peaks.png")

called.peaks.Input <- called.peaks[grep(pattern="*Input*", called.peaks$Control),]
create.peak.barplot(called.peaks.Input, "Input_peaks.png")
