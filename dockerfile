FROM continuumio/miniconda3

RUN /opt/conda/bin/conda install jupyter -y --quiet
RUN /opt/conda/bin/conda install numpy -y --quiet
RUN /opt/conda/bin/conda install pandas -y --quiet
RUN /opt/conda/bin/conda install xlsxwriter -y --quiet 
RUN /opt/conda/bin/conda install scipy -y --quiet

ENTRYPOINT /opt/conda/bin/jupyter notebook \
  --notebook-dir=/opt/src \
  --ip='0.0.0.0' \
  --port=8888 \
  --no-browser \
  --allow-root