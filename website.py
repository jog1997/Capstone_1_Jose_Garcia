#website.py
##Here are the app routes for the website

import os
from Forms import AddSaleForm, DelForm
from flask import Flask, render_template, url_for, redirect
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from models import db, Weekly_Sales, app




SECRET_KEY = os.urandom(32)
app.config['SECRET_KEY'] = SECRET_KEY

##### MODELS on models.py file


#######View Functions

@app.route('/')
def index():
    return render_template('Home.html')

@app.route('/add',methods = ['GET','POST'])
def add_sale():

    form = AddSaleForm()

    if form.validate_on_submit():
        #sales_id = form.sales_id.data
        emp_id = form.emp_id.data
        prod_code = form.prod_code.data
        prod_quantity = form.prod_quantity.data
        warr_code = form.warr_code.data
        warr_quantity = form.warr_quantity.data
        current_week = form.current_week.data
        current_year = form.current_year.data

       
        new_sale = Weekly_Sales(emp_id)
        #new_sale.emp_id = emp_id
        new_sale.prod_code = prod_code
        new_sale.prod_quantity = prod_quantity
        new_sale.warr_code = warr_code
        new_sale.warr_quantity = warr_quantity
        new_sale.current_week = current_week
        new_sale.current_year = current_year
        db.session.add(new_sale)
        db.session.commit()

        return redirect(url_for('list_sales'))

    return render_template('add.html', form = form)




@app.route('/List')
def list_sales():

    sales = Weekly_Sales.query.all()
    return render_template('List.html', sales=sales)


@app.route('/delete', methods=['GET', 'POST'])
def del_sales():
    form = DelForm()

    if form.validate_on_submit():
        id = form.sale_id.data
        Sale = Weekly_Sales.query.get(id)
        db.session.delete(Sale)
        db.session.commit()

        return redirect(url_for('list_sales'))
    return render_template('delete.html', form=form)

if __name__ == '__main__':
    app.run(debug=True)

