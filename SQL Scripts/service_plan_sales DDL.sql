DROP TABLE IF EXISTS Service_plan_sales;
USE tractortek;

CREATE TABLE Service_plan_sales (
	Sale_ID INT NOT NULL AUTO_INCREMENT,
    ESP_code VARCHAR(15),
    EMP_ID VARCHAR(10),
    Year_sales INT,
    Yearly_prod_sales INT,
	W1	VARCHAR(5),
	W2	VARCHAR(5),
	W3	VARCHAR(5),
	W4	VARCHAR(5),
	W5	VARCHAR(5),
	W6	VARCHAR(5),
	W7	VARCHAR(5),
	W8	VARCHAR(5),
	W9	VARCHAR(5),
	W10	VARCHAR(5),
	W11	VARCHAR(5),
	W12	VARCHAR(5),
	W13	VARCHAR(5),
	W14	VARCHAR(5),
	W15	VARCHAR(5),
	W16	VARCHAR(5),
	W17	VARCHAR(5),
	W18	VARCHAR(5),
	W19	VARCHAR(5),
	W20	VARCHAR(5),
	W21	VARCHAR(5),
	W22	VARCHAR(5),
	W23	VARCHAR(5),
	W24	VARCHAR(5),
	W25	VARCHAR(5),
	W26	VARCHAR(5),
	W27	VARCHAR(5),
	W28	VARCHAR(5),
	W29	VARCHAR(5),
	W30	VARCHAR(5),
	W31	VARCHAR(5),
	W32	VARCHAR(5),
	W33	VARCHAR(5),
	W34	VARCHAR(5),
	W35	VARCHAR(5),
	W36	VARCHAR(5),
	W37	VARCHAR(5),
	W38	VARCHAR(5),
	W39	VARCHAR(5),
	W40	VARCHAR(5),
	W41	VARCHAR(5),
	W42	VARCHAR(5),
	W43	VARCHAR(5),
	W44	VARCHAR(5),
	W45	VARCHAR(5),
	W46	VARCHAR(5),
	W47	VARCHAR(5),
	W48	VARCHAR(5),
	W49	VARCHAR(5),
	W50	VARCHAR(5),
	W51	VARCHAR(5),
    W52 VARCHAR(5),
    PRIMARY KEY (Sale_ID, ESP_code)
   );