from flask import Flask


app = Flask(__name__)


@app.get("/message")
def message() -> str:
    """List to HTTP requests at /message and return Hello."""
    return "Hello"
