FROM ubuntu:20.04

MAINTAINER Yuelong CHEN <yuelong.chen.btr@gmail.com>

ARG UN=logan
ARG UID=1007

ENV DEBIAN_FRONTEND=noninteractive \
    nb_user=$UN \
    nb_uid=$UID \
    SHELL=/bin/bash \
    JUPYTER_ENABLE_LAB=1 \
    TINI_VERSION=v0.18.0



COPY install_apt.bash /opt/
COPY install_Rpackages.R /opt/
COPY install_pip.bash /opt/
COPY requirements.txt /opt/

RUN bash /opt/install_apt.bash && Rscript --version  && python3 --version \
  && bash /opt/install_pip.bash \
  && Rscript /opt/install_Rpackages.R \
  && rm -rf /tmp/* \
  && echo "${nb_user}" 'ALL=(ALL) NOPASSWD: /usr/bin/apt-get' >> /etc/sudoers \
  && apt-get remove --purge -y \
  && apt-get autoremove -y \
  && apt-get autoclean -y \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /root/.cache && mkdir /expt /NFS

COPY jupyter_notebook_config.py /home/$nb_user/.jupyter/
COPY jupyter_notebook_config.json /home/$nb_user/.jupyter/

# as https://jupyter-notebook.readthedocs.io/en/stable/public_server.html recommend
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

USER $nb_user
ENV HOME /home/$nb_user
WORKDIR /opt/work

EXPOSE 9898


CMD ["jupyter", "notebook"]