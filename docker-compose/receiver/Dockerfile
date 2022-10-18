FROM python:3.10-alpine
WORKDIR /code
ENV FLASK_APP=receiver
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY . .
RUN pip install .
EXPOSE 5000
CMD ["flask", "run"]

