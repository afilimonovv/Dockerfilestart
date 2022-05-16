import os

from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello DevOps!"
    if __name__ =='__main__':
        #Bind to Port if defined, otherwise default to 5000
        port=int(os.environ.get( 'PORT', 5000 ))
        app.run(host='192.168.0.107', port=port)
        #app.run()
