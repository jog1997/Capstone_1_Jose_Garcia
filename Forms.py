from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField, SubmitField, validators, SelectField


class AddSaleForm(FlaskForm):

    #sales_id = IntegerField('Sales Id:') #[validators.DataRequired('number must be unique'), validators.InputRequired('A number is required')])
    '''def validate_sales_id(FlaskForm, field):
        if sales_id ==
            raise ValidationError('Sales ID must be unique. Please try another')'''


    emp_id = SelectField('Employee ID: ', choices =[ ('EMP234','EMP234'),('EMP244','EMP244'),('EMP256','EMP256'),('EMP267','EMP267'), ('EMP290','EMP290')])
    prod_code= SelectField('Product Code:', choices = [('PROD_001','PROD_001'),('PROD_002','PROD_002'),('PROD_003','PROD_003'),('PROD_004','PROD_004'),('PROD_005','PROD_005'),('PROD_006','PROD_006'),('PROD_007','PROD_007',),('PROD_008','PROD_008')])
    prod_quantity = IntegerField('Product Quantity',[validators.NumberRange(min=0, max=100, message='Input between 0-100 required.'), validators.InputRequired()])
    warr_code = SelectField('Warranty Code', choices = [('ESP_001', 'ESP_001'), ('ESP_002', 'ESP_002'), ('ESP_003', 'ESP_003'), ('ESP_004', 'ESP_004'), ('ESP_005', 'ESP_005'), ('ESP_006', 'ESP_006'), ('ESP_007', 'ESP_007'),('ESP_008', 'ESP_008')])


    warr_quantity = IntegerField('Warranty Quantity',[validators.NumberRange(min=0, max=100, message='Input between 0-100 required.'), validators.InputRequired()])
    current_week = IntegerField('Current Week',[validators.InputRequired(), validators.NumberRange(min=1, max=52, message='Input between 1-52 required.')])
    current_year = IntegerField('Current Year',[validators.InputRequired(), validators.NumberRange(min=2021, max=None, message='Input from 2021 and beyond required.')])
    submit = SubmitField('Add Sale')




class DelForm(FlaskForm):
    sale_id = IntegerField('ID of Sale to remove')
    #emp_id = SelectField('Employee ID: ', choices =[ ('EMP234','EMP234'),('EMP244','EMP244'),('EMP256','EMP256'),('EMP267','EMP267'), ('EMP290','EMP290')])
    submit = SubmitField('Remove Sale')