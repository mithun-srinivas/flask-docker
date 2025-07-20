from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/', methods=['GET'])
def helloworld():
    if(request.method == 'GET'):
        data = {"data": "Hello World from docker"}
        return jsonify(data)


if __name__ == '__main__':
    app.run(debug=True, port=5500)