##Py file with thoughts and codes that I tried out

'''
{{ form.sales_id.label }} {{ form.sales_id() }}
    models.py :def __init__(self,sales_id):
        self.sales_id = sales_id

Product_dict = {'PROD_001': ['ESP_001'],
                'PROD_002': ['ESP_002'],
                'PROD_003': ['ESP_003'],
                'PROD_004': ['ESP_004'],
                'PROD_005': ['ESP_005'],
                'PROD_006': ['ESP_006'],
                'PROD_007': ['ESP_007'],
                'PROD_008': ['ESP_008']
                    }
@app.route('/add',methods = ['GET','POST'])
def validate_item_code():
    form = AddSaleForm()
    form.warr_code.choices = Product_dict.get(form.prod_code.data)
    validate()


  sum(trac.W1, trac.W2, trac.W3, trac.W4, trac.W5, trac.W6,
			trac.W7, trac.W8, trac.W9, trac.W10, trac.W11, trac.W12, trac.W13) as Quarter1,

    '''