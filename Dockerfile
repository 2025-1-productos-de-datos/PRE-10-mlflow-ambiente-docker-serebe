FROM condaforge/miniforge3

RUN pip install mlflow \
    && pip install pandas \
    && pip install scikit-learn \
    && pip install cloudpickle

COPY data/ data/
COPY homework/ homework/
COPY setup.py setup.py
RUN pip3 install -e .


# docker_env:
#     image:  jdvelasq/mlflow:example
#     build_context: .