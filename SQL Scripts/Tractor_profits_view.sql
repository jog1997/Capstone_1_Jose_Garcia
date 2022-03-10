DROP VIEW IF EXISTS Tractor_Profits; 
CREATE VIEW Tractor_Profits AS
	SELECT
		trac.sale_id,
        trac.prod_code,
        pro.prod_name,
        trac.emp_id,
        trac.year_sales,
        trac.yearly_prod_sales,
        sum(trac.W1+trac.W2+ trac.W3+ trac.W4+ trac.W5+ trac.W6+
			trac.W7+trac.W8+trac.W9+ trac.W10+ trac.W11+ trac.W12+ trac.W13) as Quarter1,
		sum(trac.W14+ trac.W15+ trac.W16+ trac.W17+ trac.W18+ trac.W19+
			trac.W20+ trac.W21+ trac.W22+ trac.W23+ trac.W24+ trac.W25+ trac.W26) as Quarter2,
		sum(trac.W26+ trac.W27+ trac.W28+ trac.W29+ trac.W30+ trac.W31+
			trac.W32+ trac.W33+ trac.W34+ trac.W35+ trac.W36+ trac.W37+ trac.W38) as Quarter3,
		sum(trac.W38+ trac.W39+ trac.W40+ trac.W41+ trac.W42+ trac.W43+ trac.W44+
			trac.W45+ trac.W46+ trac.W47+ trac.W48+ trac.W49+ trac.W50+ trac.W51+ trac.W52) as Quarter4,
		pro.2019Q1,
        pro.2019Q2,
        pro.2019Q3,
        pro.2019Q4,
        pro.2020Q1,
        pro.2020Q2,
        pro.2020Q3,
        pro.2020Q4
	FROM
		tracktor_sales as trac
        INNER JOIN products as pro
        ON
			trac.prod_code = pro.prod_code
	GROUP BY
		trac.sale_id