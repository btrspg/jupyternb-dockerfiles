#! /usr/bin/env Rscript

options(install.packages.compile.from.source = "always")
chooseCRANmirror(ind=0)
packages <- c('devtools','IRkernel','BiocManager')
install.packages(packages)

BiocManager::install("Biobase")
BiocManager::install("BiocGenerics")
IRkernel::installspec(name = 'ir404GD', displayname = 'R_4GD',user = FALSE)


