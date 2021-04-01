# single cell jupyter notebook

jupyter notebook password: `singlecell`

Because I used my own uid and gid to create the user in the docker image, so if you want to use it, you have two 
choices:

1. change the permission of your fold to 777, so that the user in the container could write and read.
2. build another docker image by yourself using my Dockerfile.(Either change the uid and gid in the dockerfile or 
   specify the uid and gid as a `build` parameter.)

If you are using docker, you can use like this:
```bash
docker run --rm -it -p 8888:8888 -v `pwd`:/opt/work btrspg/jnb:singlecell-dev  
```

And then you could use the browser to do the coding work.

If you are using singularity, you can use like this:
```bash
# first pull down the image
singularity pull -F docker://index.docker.io/btrspg/jnb:singlecell-dev
# second, to make the image wriable
singularity build --sanbox somewhere/ jnb_singlecell-dev.sif 
# then run
singularity run -B `pwd`:/opt/work/ --no-home -W /opt/work -w somewhere/
```


## Installed packages

### R packages

- ComplexHeatmap
- Seurat
- SeuratDisk
- CellChat

### Python packages

- jinja2
- numpy
- pandas
- pytest
- sphinx
- tzlocal
- rpy2
- seaborn
- scanpy
- leidenalg
- nbdev
- jupyter
- pandas
- anndata
- louvain
- python-igraph
- pybind11
- hnswlib
- scvelo
- ipykernel
- jupyterlab
- notebook
- bokeh
- ipywidgets
- jupyterhub

> I am not sure if I will use them all, but maybe, the more the better.