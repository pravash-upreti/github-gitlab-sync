from github_webhook import Webhook
from flask import Flask
from subprocess import call
import sync  as s
app = Flask(__name__)  # Standard Flask app
webhook = Webhook(app) # Defines '/postreceive' endpoint

@app.route("/")        # Standard Flask endpoint
def hello_world():
    return "Hi, I am repo-sync-agent"

@webhook.hook()        # Defines a handler for the 'push' event
def on_push(data):
    #print("Got push with: {0}".format(data))
    s.sync()


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5500)
