CREATE OR REPLACE FUNCTION add_parts(
	_parts_id INTEGER,
	_type VARCHAR,
	_cost NUMERIC(6,2)
)
RETURNS void
AS $PARTS$
BEGIN
	INSERT INTO parts(parts_id, type_, cost_)
	VALUES (_parts_id, _type, _cost);
END;
$PARTS$
LANGUAGE plpgsql;

SELECT add_parts(1, 'Tire', 150)
SELECT add_parts(2, 'Brake Caliper', 125)
SELECT add_parts(3, 'Car Battery', 200)

select *
from parts;