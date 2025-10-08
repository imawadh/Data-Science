from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/login")
def login():
    return render_template("login.html")


@app.route("/welcome",methods=["POST"])
def welcome():
    valid_users = {
        "imawadh" : "123",
        "imkishor" : "456",
        "imsingh" :"789"
    }

    userName = request.form.get("userName")
    password = request.form.get("password")

    if userName in valid_users and valid_users[userName]==password:
        return render_template("welcome.html",userName=userName)
    

    return render_template("credential_error.html")
