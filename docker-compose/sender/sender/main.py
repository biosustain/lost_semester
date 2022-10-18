import logging
from time import sleep
import requests


logging.basicConfig(format="[%(asctime)s] %(message)s", datefmt="%d-%b-%y %H:%M:%S")
LOGGER = logging.getLogger("editor")
LOGGER.setLevel(10)  # debug level


def send():
    try:
        response = requests.get("http://receiver:5000/message")
        LOGGER.warn(f"received {response.text} with {response.status_code}")
    except Exception as e:
        LOGGER.warn(f"Request failed with message {e}")


def send_every(sleep_duration: int = 10):
    while True:
        send()
        sleep(sleep_duration)


if __name__ == "__main__":
    send_every(10)
