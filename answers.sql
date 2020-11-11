PRACTICE JOINS


SELECT *
FROM invoice inv
JOIN invoice_line li ON li.invoice_id = inv.invoice_id
WHERE li.unit_price > 0.99;

SELECT i.invoice_date, cust.first_name, cust.last_name, i.total
FROM invoice i
JOIN customer cust ON i.customer_id = cust.customer_id;




