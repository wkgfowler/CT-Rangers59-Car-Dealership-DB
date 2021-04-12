CREATE OR REPLACE FUNCTION add_invoice(
	_invoice_id INTEGER,
	_sales_id INTEGER,
	_dealer_id INTEGER,
	_customer_id INTEGER
)
RETURNS void
AS $INVOICE$
BEGIN
	INSERT INTO invoice(invoice_id, sales_id, dealer_id, customer_id)
	VALUES (_invoice_id, _sales_id, _dealer_id, _customer_id);
END;
$INVOICE$
LANGUAGE plpgsql;

SELECT add_invoice(1,1,3,3)
SELECT add_invoice(2,1,2,1)
SELECT add_invoice(3,3,1,1)

select *
from invoice;