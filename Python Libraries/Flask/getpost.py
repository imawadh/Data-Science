
from flask import Flask,render_template,request

# flask app instance
app = Flask(__name__)


@app.route('/') # This a decorator 
def welcome():
    return "<HTML><h1>Welcome to HTML Page </h1></HTML>"


@app.route('/index')
def index():
    return render_template('index.html')


@app.route('/about')
def about():
    return render_template('about.html')


@app.route('/jingaTemplate')
def jinja():
    return render_template('jingaTemplate.html',data=1) 


@app.route('/form',methods=['GET'])
def form():
    return render_template('form.html')


@app.route('/submit',methods=['GET','POST'])
def submit():
    if request.method=='POST':
        return f'''Your name is {request.form['name']}. Your marks is {request.form['marks']}'''
    





if __name__ == '__main__':
    app.run(debug=True)
