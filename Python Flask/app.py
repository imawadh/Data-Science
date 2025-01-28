
from flask import Flask,render_template


app = Flask(__name__)

# Base Route
@app.route('/')
def hello_world():
    return render_template('index.html')

# Product Page 
@app.route('/products')
def products():
    return 'This is products page'

# Product Skills
@app.route('/skills')
def skills():
    return 'This is skills page'

# main driver function
if __name__ == '__main__':
    app.run(debug=True,port=8000)