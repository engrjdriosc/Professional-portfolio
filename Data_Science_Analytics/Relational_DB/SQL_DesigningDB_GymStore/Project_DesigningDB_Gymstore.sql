CREATE TABLE gym_palace (id INTEGER PRIMARY KEY,
product TEXT,
price NUMERIC,
brand TEXT,
amount INTEGER);

INSERT INTO gym_palace VALUES (1, "Whey Protein", 50, "ProScience", 12);

INSERT INTO gym_palace VALUES (2, "Atomic Creatine", 25, "SmartMuscle", 5);

INSERT INTO gym_palace VALUES (3, "BCAAS", 10, "Arnold's", 2);

INSERT INTO gym_palace VALUES (4, "Hand Grips", 5, "MachoMan", 8);

INSERT INTO gym_palace VALUES (5, "Water Jug", 30.5, "HomeCenter", 18);

INSERT INTO gym_palace VALUES (6, "Resistance Bands", 15.99, "FitFlex", 12);

INSERT INTO gym_palace VALUES (7, "Weightlifting Belt", 42.75, "IronGrip", 7);

INSERT INTO gym_palace VALUES (8, "Yoga Mat", 22.50, "ZenActive", 15);

INSERT INTO gym_palace VALUES (9, "Pre-Workout Powder", 35.25, "NitroFuel", 9);

INSERT INTO gym_palace VALUES (10, "Dumbbell Set", 89.99, "SteelPower", 4);

INSERT INTO gym_palace VALUES (11, "Jump Rope", 8.45, "SpeedRope", 20);

INSERT INTO gym_palace VALUES (12, "Foam Roller", 18.30, "RecoveryPlus", 11);

INSERT INTO gym_palace VALUES (13, "Gym Gloves", 12.99, "GripMaster", 14);

INSERT INTO gym_palace VALUES (14, "Kettlebell 20kg", 54.95, "BruteForce", 6);

INSERT INTO gym_palace VALUES (15, "Multivitamin Pack", 28.60, "HealthFuel", 25);


-- Orderign the gym_palace table--
SELECT * FROM gym_palace ORDER BY price DESC;

--This shows the total number of items and their total storage value--
SELECT SUM(amount) AS total_quantity, ROUND(SUM(price * amount), 2) AS storage_value FROM gym_palace;
