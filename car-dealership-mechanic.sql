CREATE OR REPLACE FUNCTION add_mechanic(
	_mechanic_id INTEGER,
	_mfirst_name VARCHAR,
	_mlast_name VARCHAR
)
RETURNS void
AS $MECHANIC$
BEGIN
	INSERT INTO mechanic(mechanic_id, first_name, last_name)
	VALUES (_mechanic_id, _mfirst_name, _mlast_name);
END;
$MECHANIC$
LANGUAGE plpgsql;

SELECT add_mechanic(1, 'Ron', 'Weasley')
SELECT add_mechanic(2, 'Draco', 'Malfoy')
SELECT add_mechanic(3, 'Sirius', 'Black')

select *
from mechanic;