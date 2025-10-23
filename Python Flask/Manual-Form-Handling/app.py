from flask import Flask,render_template, request

app = Flask(__name__)

@app.route("/",methods=['GET'])
def home():
    return render_template('index.html')

@app.route('/feedback-form', methods=['GET'])
def feedback():
    return render_template('feedback-form.html')

@app.route("/submit-feedback",methods=['POST'])
def result():
    name = request.form.get("name")
    msg = request.form.get("msg")
    return f"Hello {name} \n your feedback mesaage is {msg}"
    