CREATE OR REPLACE FUNCTION add_customer(
	_customer_id INTEGER,
	_cfirst_name VARCHAR,
	_clast_name VARCHAR,
	_billing_info VARCHAR,
	_address VARCHAR
)
RETURNS void
AS $CUSTOMER$
BEGIN
	INSERT INTO customer(customer_id, first_name, last_name, billing_info, address)
	VALUES(_customer_id, _cfirst_name, _clast_name, _billing_info, _address);
END;
$CUSTOMER$
LANGUAGE plpgsql;

SELECT add_customer(1, 'Will', 'Fowler', '4242-4242-4242-4242 042 4/24', '2808 Macedonia Rd, Cary, NC 27518');
SELECT add_customer(2, 'Michael', 'Dale', '4343-4343-4343-4343 043 4/24', '216 East Boardwalk, Atlantic Beach, NC 28512');
SELECT add_customer(3, 'Sean', 'Rich', '5656-5656-5656-5656 056 5/24', '100 Cannery Row, Morehead City, NC 28557');

select *
from customer;