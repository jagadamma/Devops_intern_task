from flask import Flask
abi=Flask(__name__)
@abi.route('/')
def a():
    return("Hello GUVI GEEK")
if __name__ == "__main__":
    abi.run(debug=True,host='0.0.0.0')
