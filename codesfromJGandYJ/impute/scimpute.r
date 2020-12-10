# Usage:
# Rscript scImpute.r input.txt outputdir
# test if there is one argument: if not, return an error
args = commandArgs(trailingOnly=TRUE)
if (length(args)==0) {
  stop("At least one argument must be supplied (input file)\n", call.=FALSE)
} 

library(scImpute)
inputfile = args[1]
outputDir = args[2]
scimpute(# full path to raw count matrix
         count_path = inputfile, 
         infile = "csv",           # format of input file
         outfile = "csv",          # format of output file
         out_dir = outputDir,           # full path to output directory
         labeled = FALSE,          # cell type labels not available
         drop_thre = 0.5,          # threshold set on dropout probability
         Kcluster = 2,             # 2 cell subpopulations
         ncores = 12)              # number of cores used in parallel computation