from flask import Flask
abi=Flask(__name__)
@abi.route('/index.html')
def a():
    return("hello world")
if __name__ == "__main__":
    abi.run(debug=True,host='0.0.0.0')
