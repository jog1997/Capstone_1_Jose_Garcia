DROP VIEW IF EXISTS ESP_Profits; 
CREATE VIEW ESP_Profits AS
	SELECT
		pro.prod_name,
		pro.service_plan,
        pro.warranty_price,
        serv.EMP_ID,
        serv.year_sales,
        serv.yearly_prod_sales,
        pro.warranty_price*serv.yearly_prod_sales as warranty_yearly_profit
        
	FROM
		service_plan_sales as serv
        INNER JOIN products as pro
        ON
			serv.ESP_code = pro.service_plan