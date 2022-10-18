# docker image for the Lost Semester course
FROM python:3.10-alpine
WORKDIR /app
COPY setup.py ./
COPY mypackage ./mypackage
RUN python3 -m pip install .
CMD ["python3", "./mypackage/module.py"]
