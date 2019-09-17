library(PharmacoGx)

myfn <- list.files("/pfs/input/slices/", full.names=TRUE)
print(myfn)
mybasenm <- basename(myfn)

slice <- readRDS(myfn)

res <- PharmacoGx:::.calculateFromRaw(slice)

saveRDS(res, file=paste0("/pfs/out/", gsub(mybasenm, pattern = ".rds", replacement="_recomp.rds", fixed=TRUE)))
