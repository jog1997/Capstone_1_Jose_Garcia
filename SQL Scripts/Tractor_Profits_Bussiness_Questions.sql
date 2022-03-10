###Tractor Business Questions for 2019 and 2020


##Tractor Business 2019

#Most Profitable Product
SELECT
	prod_code,
    prod_name,
    sum(Profit_Q1 + Profit_Q2 + Profit_Q3 + Profit_Q4) as Total_Profit

FROM
	tractor_profits_2019
GROUP BY
	1,2
ORDER BY
	Total_Profit DESC;
    
#Tractor Most Sold
SELECT
	prod_code,
    prod_name,
    yearly_prod_sales,
    sum(Profit_Q1 + Profit_Q2 + Profit_Q3 + Profit_Q4) as Total_Profit

FROM
	tractor_profits_2019
GROUP BY
	1,2
ORDER BY
	yearly_prod_sales DESC;
    
#Employee Stats
SELECT
	emp_id,
    yearly_prod_sales,
    sum(Profit_Q1 + Profit_Q2 + Profit_Q3 + Profit_Q4) as Total_Profit
FROM
	tractor_profits_2019
GROUP BY
	emp_id
ORDER BY
	Total_Profit DESC;
    
    
#Tractor Bussiness 2020
#Most Profitable Product
SELECT
	prod_code,
    prod_name,
    sum(Profit_Q1 + Profit_Q2 + Profit_Q3 + Profit_Q4) as Total_Profit

FROM
	tractor_profits_2020
GROUP BY
	1,2
ORDER BY
	Total_Profit DESC;
    
#Tractor Most Sold
SELECT
	prod_code,
    prod_name,
    yearly_prod_sales,
    sum(Profit_Q1 + Profit_Q2 + Profit_Q3 + Profit_Q4) as Total_Profit

FROM
	tractor_profits_2020
GROUP BY
	1,2
ORDER BY
	yearly_prod_sales DESC;
    
#Employee Stats
SELECT
	emp_id,
    yearly_prod_sales,
    sum(Profit_Q1 + Profit_Q2 + Profit_Q3 + Profit_Q4) as Total_Profit
FROM
	tractor_profits_2019
GROUP BY
	emp_id
ORDER BY
	Total_Profit DESC;