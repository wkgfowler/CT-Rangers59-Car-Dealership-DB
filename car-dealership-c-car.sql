CREATE OR REPLACE FUNCTION add_c_car(
	_car_id INTEGER,
	_make VARCHAR,
	_model VARCHAR,
	_year INTEGER,
	_color VARCHAR,
	_mileage INTEGER,
	_customer_id INTEGER
)
RETURNS void
AS $CCAR$
BEGIN
	INSERT INTO c_car(car_id, make, model, year_, color, mileage, customer_id)
	VALUES (_car_id, _make, _model, _year, _color, _mileage, _customer_id);
END;
$CCAR$
LANGUAGE plpgsql;

SELECT add_c_car(1, 'GMC', 'Canyon', 2019, 'Black', 18500, 2)
SELECT add_c_car(2, 'Ford', 'Explorer', 2018, 'Navy Blue', 14390, 3)
SELECT add_c_car(3, 'Ford', 'Escape', 2009, 'Red', 112560, 1)

select *
from c_car;