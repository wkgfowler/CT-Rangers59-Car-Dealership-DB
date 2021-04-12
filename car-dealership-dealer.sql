CREATE OR REPLACE FUNCTION add_dealercar(
	_dealer_id INTEGER,
	_make VARCHAR,
	_model VARCHAR,
	_year INTEGER,
	_color VARCHAR,
	_price NUMERIC(8,2),
	_status VARCHAR
)
RETURNS void
AS $DEALER$
BEGIN
	INSERT INTO dealer_car(dealer_id, make, model, year_, color, price, status)
	VALUES (_dealer_id, _make, _model, _year, _color, _price, _status);
END;
$DEALER$
LANGUAGE plpgsql;

SELECT add_dealercar(1, 'Ford', 'Escape', 2020, 'Red', 24500, 'NEW')
SELECT add_dealercar(2, 'Ford', 'Bronco', 2021, 'Black', 40500, 'NEW')
SELECT add_dealercar(3, 'Ford', 'Durango', 2009, 'White', 8500, 'USED')

SELECT *
from dealer_car;