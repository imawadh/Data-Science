from flask import Flask, render_template,request,redirect
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///todo.db' # In Flask, you would typically set SQLALCHEMY_DATABASE_URI in your application's configuration to specify which database SQLAlchemy should connect to. 
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False  # SQLALCHEMY_TRACK_MODIFICATIONS: This setting controls whether SQLAlchemy should track modifications to objects and emit signals. It’s typically set to False to prevent unnecessary overhead.

db = SQLAlchemy(app)

class Todo(db.Model):
    sno = db.Column(db.Integer,primary_key=True)
    task = db.Column(db.String(200),nullable=False)
    desc = db.Column(db.String(500),nullable=False)
    data_created = db.Column(db.DateTime,default=datetime.utcnow)

    def __repr__(self) ->str:
        return f"{self.sno} -- {self.task}"

# @app.route("/")
# def hello_world():
#     return render_template('index.html')

@app.route("/",methods=['GET','POST'])
def hello_world():
    # todo = Todo(task="First Todo" , desc= "Start Inversting in Stock Market")
    # db.session.add(todo)
    # db.session.commit()

    task =''
    desc = ''
    if request.method=='POST':
        print("Post method Using Form") # ye isliye hai ki hum jaye paye cmd se ki post method ayya hai 
        task = request.form.get('taskname')
        desc = request.form.get('taskdesc')
        todo = Todo(task=task,desc=desc)
        db.session.add(todo)
        db.session.commit()
        all_todo = Todo.query.all()
        return render_template('index.html',all_todo=all_todo)
    
    all_todo = Todo.query.all()
    return render_template('index.html', all_todo=all_todo)


@app.route('/delete/<int:sno>')
def delete(sno):
    deleteTodo = Todo.query.filter_by(sno=sno).first()
    db.session.delete(deleteTodo)
    db.session.commit()
    return redirect('/')

@app.route('/show')
def show():
    # all_todo = Todo.query.all()
    # print(all_todo)
    return "This is a product page.."


if __name__ == "__main__":
    app.run(debug=True)



























































'''
>>> from app import app, db  # Import your Flask app and db instance
>>> with app.app_context():  # Push the application context
>>>     db.create_all()  # Create the database tables

'''