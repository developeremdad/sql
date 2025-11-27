-- Challenge - 1

/*
Select brand, model, and color from cars
where the color is 'red'
and the brand is not 'Ferrari'
and the car has not been sold
*/

/* 
SELECT brand, model, color, sold FROM cars
WHERE color = 'red'
AND brand != 'Ferrari'
AND sold = FALSE;
*/

-- challenge - 2
/*
Select brand, model, and color from cars
where the color is not red, blue, or white
and the brand is none of: Aston Martin, Bentley or Jaguar
and sold is false
*/

/* 
SELECT brand, model, color, sold FROM cars
WHERE color NOT IN ('red', 'blue', 'white')
AND brand NOT IN ('Aston Martin', 'Bentley', 'Jaguar')
AND sold = FALSE;
*/

-- Challenge - 3
/*
Select brand, model, year, sold from cars
where the brand is 'Dodge' and year is in the 60s
or the brand is either 'Ford' or 'Triumph' and the car is from the 70s
only select cars where sold is not true
*/

/* 
SELECT brand, model, year, sold
FROM cars
WHERE (
        (
            brand = 'Dodge'
            AND year BETWEEN 1960 AND 1969
        )
        OR (
            brand IN ('Ford', 'Triumph')
            AND year BETWEEN 1970 AND 1979
        )
    )
    AND sold IS NOT TRUE;
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



 /*
	Select the brand, model, color and price from cars
		where the color is a shade of 'red'
		and sold is false
		order by price
		limit the results to 5
*/

/* 
SELECT brand, model, color, price FROM cars
    WHERE color = 'red'
    AND
    sold IS FALSE
    limit 2;
 */


/*
	Count the number of cars
		where sold is true
*/

/* 
SELECT COUNT(*) FROM cars
    WHERE sold IS TRUE;
 */


 /*
	Sum the price of cars
		where sold is true
	Use the alias total_earnings in your output
*/


SELECT SUM(price) as total_earnings FROM cars
    WHERE sold IS TRUE;
