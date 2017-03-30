args <-  commandArgs(trailingOnly=TRUE)

svs.all <- read.table(args[1], header = T)
#svs.all <- read.table("svs.tsv", header = T)
dist_mean <- sapply(split(svs.all,svs.all$Chrom1  ), function(x) mean(x$Start1))

print(dist_mean)






