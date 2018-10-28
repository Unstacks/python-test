from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello, World!'


@app.route('/hello/<string:name>')
def hello_name(name):
    return 'Hello, {}!'.format(name)


if __name__ == '__main__':
    app.run(debug=True)



