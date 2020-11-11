PRACTICE JOINS


SELECT *
FROM invoice inv
JOIN invoice_line li ON li.invoice_id = inv.invoice_id
WHERE li.unit_price > 0.99;

SELECT i.invoice_date, cust.first_name, cust.last_name, i.total
FROM invoice i
JOIN customer cust ON i.customer_id = cust.customer_id;


SELECT cust.first_name, cust.last_name, emp.first_name, emp.last_name
FROM customer cust
JOIN employee emp ON cust.support_rep_id = emp.employee_id 

SELECT al.title, art.name
FROM album al
JOIN artist art on al.artist_id = art.artist_id

SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music'

SELECT t.name
FROM track t
JOIN playlist_track p ON p.track_id = t.track_id
WHERE p.playlist_id = 5


SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p on pt.playlist_id = p.playlist_id




