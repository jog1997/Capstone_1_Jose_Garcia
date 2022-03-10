SELECT * FROM tractortek.esp_profits;


##Most Profitable Service Plan
SELECT 
	prod_name,
    service_plan,
    sum(yearly_prod_sales) as total_sold,
    sum(warranty_yearly_profit) as total_profit
FROM 
	esp_profits
GROUP BY
	service_plan
ORDER BY
	total_profit DESC;
    
##Employee that sell the most services

SELECT
    EMP_ID,
    sum(yearly_prod_sales) as total_sold,
    sum(warranty_yearly_profit) as total_profit
FROM
	esp_profits
GROUP BY
	EMP_ID
ORDER BY
	total_profit DESC;
    
##Total difference in ESP_profit between 2019 and 2020

SELECT
	year_sales,
    sum(yearly_prod_sales) as total_sold,
    sum(warranty_yearly_profit) as total_profit
FROM
	esp_profits
GROUP BY
	year_sales
ORDER BY
	total_profit DESC;