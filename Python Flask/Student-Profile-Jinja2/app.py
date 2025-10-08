from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/",methods=["GET"])
def profile():
    return render_template("profile.html",name="Awadh",collegeName = "IIT Madras", subjects = ["MAD1","DBMS","MLF","MLT"])