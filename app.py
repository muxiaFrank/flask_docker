from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    return """
      <h1>Python Flask in Docker!</h1>
      <p>A sample web-app for running Flask inside Docker.</p>
      """


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0',port=5002)
