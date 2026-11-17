CREATE TABLE IF NOT EXISTS Resturaunt(
    name TEXT,
    neighborhood TEXT,
    cuisine TEXT,
    reveiw REAL,
    price TEXT,
    health TEXT
);

INSERT INTO Resturaunt(name, neighborhood, cuisine, reveiw, price, health) VALUES
('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
('Pocha', 'Midtown', 'Pizza', 4.0, '$$$', 'B'),
('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$', 'A'),
('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

SELECT DISTINCT neighborhood
FROM Resturaunt;

SELECT DISTINCT cuisine
FROM Resturaunt;

SELECT *
FROM Resturaunt
WHERE cuisine = 'Chinese';

SELECT *
FROM Resturaunt
WHERE reveiw >= 4.0;

SELECT *
FROM Resturaunt
WHERE cuisine = 'Italian' AND price IN ('$$', '$$$');

SELECT *
FROM Resturaunt
WHERE price = '$$$';

SELECT *
FROM Resturaunt
WHERE name LIKE '%Candy%';

SELECT *
FROM Resturaunt
WHERE neighborhood IN ('Midtown', 'Downtown', 'Chinatown');

SELECT *
FROM Resturaunt
WHERE health = '' OR health IS NULL;

SELECT *
FROM Resturaunt
ORDER BY reveiw DESC
LIMIT 4;