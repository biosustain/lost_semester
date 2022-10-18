# docker image for the Lost Semester course
FROM jupyter/datascience-notebook:9e63909e0317
WORKDIR "/home/${NB_USER}"
COPY --chown=${NB_UID}:${NB_GID} setup.py ./
COPY --chown=${NB_UID}:${NB_GID} mypackage ./mypackage
# create a kernel with python3.9 called "mypack"
RUN mamba create --quiet --yes -p "${CONDA_DIR}/envs/mypack" python=3.9 ipython ipykernel && mamba clean --all -f -y
RUN "${CONDA_DIR}/envs/mypack/bin/python" -m ipykernel install --user --name="mypack" && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
# install the package
RUN "${CONDA_DIR}/envs/mypack/bin/pip" install --quiet --no-cache-dir . && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
# the entrypoint is defined in the parent image
