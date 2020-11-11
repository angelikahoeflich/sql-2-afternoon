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

SELECT t.name, al.title
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN genre g on g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk'

NESTED QUERIES

SELECT *
FROM invoice
WHERE invoice_id IN (SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99

SELECT *
FROM playlist_track
WHERE playlist_id IN (SELECT playlist_id FROM playlist WHERE name ='Music')

SELECT name
FROM track
WHERE track_id IN (SELECT track_id FROM playlist_track WHERE playlist_id = 5)

SELECT *
FROM track
WHERE genre_id IN (SELECT genre_id FROM genre WHERE name = 'Comedy')

SELECT *
FROM track
WHERE album_id IN (SELECT album_id FROM album WHERE title = 'Fireball')

SELECT *
FROM track
WHERE album_id 
	IN (SELECT album_id FROM album WHERE artist_id IN (
    	SELECT artist_id FROM artist WHERE name = 'Queen'))

PRACTICE UPDATING ROWS

UPDATE customer 
SET fax = null
WHERE fax IS NOT null

UPDATE customer 
SET company = 'Self'
WHERE company IS null

UPDATE customer 
SET last_name = 'Thompson'
WHERE first_name ='Julia' AND last_name = 'Barnett' 

UPDATE customer 
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl'

UPDATE track 
SET composer = 'The darkness around us'
WHERE genre_id = (SELECT genre_id FROM genre WHERE name = 'Metal')
AND composer IS null



