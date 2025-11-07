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

SELECT brand, model, condition, price FROM cars
	WHERE price IN (20000, 30000, 40000);

/*
	Select brand, model, price and sold from cars
		filter out any cars which are sold
		show cars where the brand is none of ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
		or the price is less than $50000
*/
/* 
SELECT brand, model, condition, price, sold FROM cars
    WHERE sold = FALSE
    AND brand IN ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
    OR price < 50000;
 */