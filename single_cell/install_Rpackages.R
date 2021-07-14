#! /usr/bin/env Rscript

options(install.packages.compile.from.source = "always")
chooseCRANmirror(ind=0)
packages <- c('devtools','IRkernel','BiocManager','rliger','SCINA')
install.packages(packages)

BiocManager::install("Biobase")
BiocManager::install("BiocGenerics")
BiocManager::install("scmap")
BiocManager::install("scran")
IRkernel::installspec(name = 'ir404SC', displayname = 'R_4SC',user = FALSE)

devtools::install_github("pcahan1/singleCellNet")
devtools::install_github(repo = "hhoeflin/hdf5r")
devtools::install_github(repo = "mojaveazure/loomR", ref = "develop")
devtools::install_github('dviraran/SingleR')
devtools::install_github("jokergoo/ComplexHeatmap",upgrade_dependencies=FALSE)
devtools::install_github('welch-lab/liger')
remotes::install_github("satijalab/seurat",upgrade_dependencies=FALSE)
remotes::install_github("mojaveazure/seurat-disk",upgrade_dependencies=FALSE)
devtools::install_github("sqjin/CellChat",upgrade_dependencies=FALSE)