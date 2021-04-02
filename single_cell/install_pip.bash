#! /bin/bash

python3 -m pip --no-cache-dir install pip --upgrade
python3 -m pip --no-cache-dir install setuptools --upgrade
python3 -m pip --no-cache-dir install wheel --upgrade
pip install --no-cache-dir -r /opt/requirements.txt
python3 -m ipykernel install --name python384SC --display-name "Python38 4SC"
jupyter kernelspec --version
jupyter nbextension enable --py --sys-prefix widgetsnbextension
jupyter labextension install @jupyter-widgets/jupyterlab-manager
rm -rf /root/.cache



