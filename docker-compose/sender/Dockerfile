FROM python:3.10-alpine
WORKDIR /code
RUN apk add --no-cache gcc musl-dev linux-headers
COPY . .
RUN pip install .
EXPOSE 5000
CMD ["python", "sender/main.py"]
