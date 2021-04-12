CREATE OR REPLACE FUNCTION add_service (
	_service_id INTEGER,
	_service_type VARCHAR,
	_service_cost NUMERIC(6,2),
	_status VARCHAR,
	_car_id INTEGER,
	_mechanic_id INTEGER,
	_parts_id INTEGER
)
RETURNS void
AS $SERVICE$
BEGIN
	INSERT INTO service_ticket (service_id, service_type, service_cost, status, car_id, mechanic_id, parts_id)
	VALUES (_service_id, _service_type, _service_cost, _status, _car_id, _mechanic_id, _parts_id);
END;
$SERVICE$
LANGUAGE plpgsql;

SELECT add_service(1, 'Oil Change', 50, 'COMPLETED & PAID', 3, 1, NULL);
SELECT add_service(2, 'Single Tire Replacement', 200, 'INCOMPLETE & PAID', 1, 2, 1);
SELECT add_service(3, 'Battery Replacement', 250, 'COMPLETED & PAID', 3, 3, 3);
SELECT add_service(4, 'Brake Caliper Replacement', 175, 'INCOMPLETE & UNPAID', 2, 1, 2);

select *
from service_ticket;