###
library(Biostrings)
danRer6 <- read.DNAStringSet("danRer6.fa")
idx1 <- grep("chr", names(danRer6), fixed=TRUE)
idx2 <- grep("Zv8_NA", names(danRer6), fixed=TRUE)
idx3 <- grep("Zv8_scaffold", names(danRer6), fixed=TRUE)
### (idx1, idx2, idx3) is a partition of seq_len(length(danRer6)).
seqnames <- paste("chr", c(1:25, "M"), sep="")
for (seqname in seqnames) {
    idx <- grep(seqname, names(danRer6), fixed=TRUE)
    filename <- paste(seqname, ".fa", sep="")
    cat("writing ", filename, "\n", sep="")
    write.XStringSet(danRer6[idx], file=filename)
}
write.XStringSet(danRer6[idx2], file="Zv8_NA.fa")
write.XStringSet(danRer6[idx3], file="Zv8_scaffold.fa")

