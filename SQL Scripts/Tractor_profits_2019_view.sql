DROP VIEW IF EXISTS Tractor_Profits_2019; 
CREATE VIEW Tractor_Profits_2019 AS
SELECT
	prod_code,
    prod_name,
    emp_id,
    year_sales,
    yearly_prod_sales,
    quarter1*2019Q1 as Profit_Q1,
    quarter2*2019Q2 as Profit_Q2,
    quarter3*2019Q3 as Profit_Q3,
    quarter4*2019Q4 as Profit_Q4

FROM
	tractor_profits
WHERE
	year_sales = 2019