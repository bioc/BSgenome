#######################################################################
### Use this R script to forge all the BSgenome data packages
###
### To run this script in batch mode:
### R-3.1 CMD BATCH --vanilla path/to/ForgeAll.R >ForgeAll.log 2>&1 &
###

library(BSgenome)

BSgenome_datapkgs <- c(
  "BSgenome.Amellifera.BeeBase.assembly4",
  "BSgenome.Amellifera.UCSC.apiMel2",
  "BSgenome.Amellifera.NCBI.AmelHAv3.1",
  "BSgenome.Athaliana.TAIR.04232008",
  "BSgenome.Athaliana.TAIR.TAIR9",
  "BSgenome.Athaliana.TAIR.TAIR10.1",
  "BSgenome.Btaurus.UCSC.bosTau3",
  "BSgenome.Btaurus.UCSC.bosTau4",
  "BSgenome.Btaurus.UCSC.bosTau6",
  "BSgenome.Btaurus.UCSC.bosTau8",
  "BSgenome.Btaurus.UCSC.bosTau9",
  "BSgenome.Celegans.UCSC.ce2",
  "BSgenome.Celegans.UCSC.ce6",
  "BSgenome.Celegans.UCSC.ce10",
  "BSgenome.Celegans.UCSC.ce11",
  "BSgenome.Cfamiliaris.UCSC.canFam2",
  "BSgenome.Cfamiliaris.UCSC.canFam3",
  "BSgenome.Cjacchus.UCSC.calJac3",
  "BSgenome.Cjacchus.UCSC.calJac4",
  "BSgenome.Creinhardtii.JGI.v5.6",
  "BSgenome.Dmelanogaster.UCSC.dm2",
  "BSgenome.Dmelanogaster.UCSC.dm3",
  "BSgenome.Dmelanogaster.UCSC.dm6",
  "BSgenome.Drerio.UCSC.danRer5",
  "BSgenome.Drerio.UCSC.danRer6",
  "BSgenome.Drerio.UCSC.danRer7",
  "BSgenome.Drerio.UCSC.danRer10",
  "BSgenome.Drerio.UCSC.danRer11",
  "BSgenome.Dvirilis.Ensembl.dvircaf1",
  "BSgenome.Ecoli.NCBI.20080805",
  "BSgenome.Gaculeatus.UCSC.gasAcu1",
  "BSgenome.Gmellonella.NCBI.ASM364042v2",
  "BSgenome.Ggallus.UCSC.galGal3",
  "BSgenome.Ggallus.UCSC.galGal4",
  "BSgenome.Ggallus.UCSC.galGal5",
  "BSgenome.Ggallus.UCSC.galGal6",
  "BSgenome.Hsapiens.UCSC.hg17",
  "BSgenome.Hsapiens.UCSC.hg18",
  "BSgenome.Hsapiens.UCSC.hg19",
  "BSgenome.Hsapiens.NCBI.GRCh38",
  "BSgenome.Hsapiens.UCSC.hg38",
  "BSgenome.Hsapiens.NCBI.T2T.CHM13v2.0",
  "BSgenome.Mdomestica.UCSC.monDom5",
  "BSgenome.Mfascicularis.NCBI.5.0",
  "BSgenome.Mfascicularis.NCBI.6.0",
  "BSgenome.Mfuro.UCSC.musFur1",
  "BSgenome.Mmulatta.UCSC.rheMac2",
  "BSgenome.Mmulatta.UCSC.rheMac3",
  "BSgenome.Mmulatta.UCSC.rheMac8",
  "BSgenome.Mmulatta.UCSC.rheMac10",
  "BSgenome.Mmusculus.UCSC.mm8",
  "BSgenome.Mmusculus.UCSC.mm9",
  "BSgenome.Mmusculus.UCSC.mm10",
  "BSgenome.Mmusculus.UCSC.mm39",
  "BSgenome.Ppaniscus.UCSC.panPan1",
  "BSgenome.Ppaniscus.UCSC.panPan2",
  "BSgenome.Ptroglodytes.UCSC.panTro2",
  "BSgenome.Ptroglodytes.UCSC.panTro3",
  "BSgenome.Ptroglodytes.UCSC.panTro5",
  "BSgenome.Ptroglodytes.UCSC.panTro6",
  "BSgenome.Rnorvegicus.UCSC.rn4",
  "BSgenome.Rnorvegicus.UCSC.rn5",
  "BSgenome.Rnorvegicus.UCSC.rn6",
  "BSgenome.Rnorvegicus.UCSC.rn7",
  "BSgenome.Scerevisiae.UCSC.sacCer1",
  "BSgenome.Scerevisiae.UCSC.sacCer2",
  "BSgenome.Scerevisiae.UCSC.sacCer3",
  "BSgenome.Sscrofa.UCSC.susScr3",
  "BSgenome.Sscrofa.UCSC.susScr11",
  "BSgenome.Tguttata.UCSC.taeGut1",
  "BSgenome.Tguttata.UCSC.taeGut2"
)

for (pkg in BSgenome_datapkgs) {
  cat("\n")
  cat("============================================================\n")
  cat("START FORGING ", pkg, "\n", sep="")
  cat("\n")
  forgeBSgenomeDataPkg(pkg)
  cat("\n")
  cat("END FORGING ", pkg, "\n", sep="")
}

MaskedBSgenome_datapkgs <- c(
  "BSgenome.Amellifera.UCSC.apiMel2.masked",
  "BSgenome.Btaurus.UCSC.bosTau3.masked",
  "BSgenome.Btaurus.UCSC.bosTau4.masked",
  "BSgenome.Btaurus.UCSC.bosTau6.masked",
  "BSgenome.Btaurus.UCSC.bosTau9.masked",
  "BSgenome.Cfamiliaris.UCSC.canFam2.masked",
  "BSgenome.Cfamiliaris.UCSC.canFam3.masked",
  "BSgenome.Dmelanogaster.UCSC.dm2.masked",
  "BSgenome.Dmelanogaster.UCSC.dm3.masked",
  "BSgenome.Drerio.UCSC.danRer5.masked",
  "BSgenome.Drerio.UCSC.danRer6.masked",
  "BSgenome.Drerio.UCSC.danRer7.masked",
  "BSgenome.Gaculeatus.UCSC.gasAcu1.masked",
  "BSgenome.Ggallus.UCSC.galGal3.masked",
  "BSgenome.Ggallus.UCSC.galGal4.masked",
  "BSgenome.Hsapiens.UCSC.hg17.masked",
  "BSgenome.Hsapiens.UCSC.hg18.masked",
  "BSgenome.Hsapiens.UCSC.hg19.masked",
  "BSgenome.Hsapiens.UCSC.hg38.masked",
  "BSgenome.Mmulatta.UCSC.rheMac2.masked",
  "BSgenome.Mmulatta.UCSC.rheMac3.masked",
  "BSgenome.Mmusculus.UCSC.mm8.masked",
  "BSgenome.Mmusculus.UCSC.mm9.masked",
  "BSgenome.Mmusculus.UCSC.mm10.masked",
  "BSgenome.Ptroglodytes.UCSC.panTro2.masked",
  "BSgenome.Ptroglodytes.UCSC.panTro3.masked",
  "BSgenome.Rnorvegicus.UCSC.rn4.masked",
  "BSgenome.Rnorvegicus.UCSC.rn5.masked",
  "BSgenome.Sscrofa.UCSC.susScr3.masked",
  "BSgenome.Tguttata.UCSC.taeGut1.masked"
)

for (pkg in MaskedBSgenome_datapkgs) {
  cat("\n")
  cat("============================================================\n")
  cat("START FORGING ", pkg, "\n", sep="")
  cat("\n")
  forgeMaskedBSgenomeDataPkg(pkg)
  cat("\n")
  cat("END FORGING ", pkg, "\n", sep="")
}

