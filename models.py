##models.py file
##This is where I create my database models
import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
import sqlalchemy
import pymysql



app = Flask(__name__)

app.config['SECRET_KEY'] = 'mysecretkey'
basedir = os.path.abspath(os.path.dirname(__file__))
# __file__ --> /TekSysProject/venv/SQL.py

####SQL Database section

#MySQL
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:4242@localhost/tractortek'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

Migrate(app,db)



class Weekly_Sales(db.Model):
    sales_id = db.Column(db.Integer, primary_key=True, autoincrement = True)
    emp_id = db.Column(db.Text)
    prod_code = db.Column(db.Text)
    prod_quantity = db.Column(db.Integer)
    warr_code = db.Column(db.Text)
    warr_quantity = db.Column(db.Integer)
    current_week = db.Column(db.Integer)
    current_year = db.Column(db.Integer)

    def __init__(self,emp_id):
        self.emp_id = emp_id

    def __repr__(self):
        sales = f'The Sale ID is: {self.sales_id}. \n Employee {self.emp_id} sold {self.prod_quantity} of {self.prod_code} and {self.warr_quantity} of {self.warr_code} in week {self.current_week} year {self.current_year}.'
        return sales
db.create_all()

