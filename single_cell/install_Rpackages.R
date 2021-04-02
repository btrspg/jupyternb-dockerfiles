#! /usr/bin/env Rscript

options(install.packages.compile.from.source = "always")
chooseCRANmirror(ind=0)
packages <- c('devtools','IRkernel','BiocManager')
install.packages(packages)

BiocManager::install("Biobase")
BiocManager::install("BiocGenerics")
IRkernel::installspec(name = 'ir404SC', displayname = 'R_4SC',user = FALSE)


devtools::install_github("jokergoo/ComplexHeatmap",upgrade_dependencies=FALSE)
remotes::install_github("satijalab/seurat",upgrade_dependencies=FALSE)
remotes::install_github("mojaveazure/seurat-disk",upgrade_dependencies=FALSE)
devtools::install_github("sqjin/CellChat",upgrade_dependencies=FALSE)