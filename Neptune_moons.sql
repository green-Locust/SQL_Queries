/* Please create a database of your own with MINIMUM 10 records and MAXIMUM 20 records. 
Ensure to include changes, queries, numerical and boolean logical operators and all we have covered in SQL so far. 
 Try to include different data types to the filed */

USE Astronomy;

CREATE TABLE neptune_moons
(
moon_id int not null,
moon_name varchar(50) not null,
diameter_km decimal (10, 2) not null,
distance_from_neptune_km decimal (10, 2) not null,
primary key (moon_id)
);

EXPLAIN neptune_moons;

INSERT INTO neptune_moons (moon_id, moon_name, diameter_km, distance_from_neptune_km)
VALUES
(1, 'Triton', 2706.8, 354759),
(2, 'Nereid', 340, 5513800),
(3, 'Naiad', 58, 48227),
(4, 'Thalassa', 82, 50074),
(5, 'Despina', 150, 52526),
(6, 'Galatea', 158, 61953),
(7, 'Larissa', 194, 73548),
(8, 'Proteus', 436, 117646);


-- I want a diameter of less than 500 km & distance more than 10000 km --
SELECT moon_name
FROM neptune_moons
WHERE diameter_km < 500 AND distance_from_neptune_km > 10000;

-- Only want moons Galatea & Larissa --
SELECT *
FROM neptune_moons
WHERE moon_name = 'Galatea' OR moon_name = 'Larissa';

-- I want the first four moons only --
SELECT moon_id, moon_name
FROM neptune_moons
WHERE moon_id >= 4;

-- I want to change Proteus moons name --
UPDATE neptune_moons
SET moon_name = 'Rasharda'
WHERE moon_id = 8;

-- Moons that begin with 'N' --
SELECT *
FROM neptune_moons
WHERE moon_name LIKE 'N%';

-- add some more moons to the table --
INSERT INTO neptune_moons (moon_id, moon_name, diameter_km, distance_from_neptune_km)
VALUES
(9, 'Halimede', 62, 15728000),
(10, 'Psamathe', 40, 46530000),
(11, 'Sao', 44, 22228000),
(12, 'Laomedeia', 42, 23567000),
(13, 'Neso', 60, 48959000),
(14, 'Hippocamp', 34, 105300);

-- change diameter & distance to int --
ALTER TABLE neptune_moons
MODIFY diameter_km int not null, 
MODIFY distance_from_neptune_km int not null;

SELECT * 
FROM neptune_moons;