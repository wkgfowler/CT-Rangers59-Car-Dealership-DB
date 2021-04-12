CREATE OR REPLACE FUNCTION add_salesperson(
	_sales_id INTEGER,
	_sfirst_name VARCHAR,
	_slast_name VARCHAR
)
RETURNS void
AS $SALES$
BEGIN
	INSERT INTO salesperson(sales_id, first_name, last_name)
	VALUES (_sales_id, _sfirst_name, _slast_name);
END;
$SALES$
LANGUAGE plpgsql;

SELECT add_salesperson(1, 'George', 'Washington')
SELECT add_salesperson(2, 'James', 'Madison')
SELECT add_salesperson(3, 'Abraham', 'Lincoln')

select *
from salesperson;