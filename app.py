from flask import Flask

app = Flask(__name__)

VERSION="0.1"

@app.route('/')
def hello_world():
    return 'Hello, World!'


@app.route('/hello/<string:name>')
def hello_name(name):
    return 'Hello, {}!'.format(name)


@app.route('/version')
def app_version():
    return VERSION

if __name__ == '__main__':
    app.run(debug=True)



