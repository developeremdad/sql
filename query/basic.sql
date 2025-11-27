-- ======================================================== SELECT =======================================================

-- SELECT * FROM cars;

-- Select columns
-- SELECT brand, model, condition, year FROM cars;
-- ======================================================== WHERE CLAUSE =======================================================
-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price = 20000;

-- ======================================================== NUMERICAL FILTERING =======================================================
-- Numerical Filtering
-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price > 30000;

-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price >= 30000;

-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price < 30000;

-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price <= 30000;

-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price != 30000;

-- ======================================================== CONDITIONAL OPERATOR =======================================================

-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price BETWEEN 25000 AND 40000;

-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price NOT BETWEEN 25000 AND 40000;

-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price < 25000 OR price > 40000;

/* 
SELECT brand, model, condition, price FROM cars
WHERE price IN (20000, 30000, 40000);
*/

/*
Select brand, model, price and sold from cars
filter out any cars which are sold
show cars where the brand is none of ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
or the price is less than $50000
*/

/* 
SELECT
    brand,
    model,
    condition,
    price,
    sold
FROM cars
WHERE
    sold = FALSE
    AND brand IN (
        'Ford',
        'Triumph',
        'Chevrolet',
        'Dodge'
    )
    OR price < 50000;
 */


-- ======================================================== ORDER BY =======================================================
/*
	Select the brand, model, condition and price from cars
		order the table by condition in descending order
		and by price in ascending order
*/

/* 
SELECT brand, model, condition, price FROM cars
    ORDER BY condition DESC, price;
 */


/*
		Select the brand, model, condition and price from cars
		where the car is not sold
		and the condition is not 5
		order the table by condition in descending order
		and by price in ascending order
*/
/* 
SELECT brand, model, condition, price FROM cars
	WHERE sold IS FALSE AND condition != 5
	ORDER BY condition DESC, price;
 */