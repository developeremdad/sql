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

/* 
SELECT SUM(price) as total_earnings FROM cars
WHERE sold IS TRUE;
*/

/*
Select the condition, and a count of the condition from cars
group by the condition column
*/

/* 
SELECT condition, count(condition) FROM cars
GROUP BY condition; 
*/

/*
Select:
* the brand
* a count of the brand
* and an average of the price for each brand
* round the average down to the nearest number
* alias the average as 'AVG' in your output
From cars where
the car has not been sold
Group the table by brand.
*/

/* 
SELECT brand, count(brand), FLOOR(AVG(price)) as "AVG" FROM cars
	WHERE sold IS FALSE
	GROUP BY brand;
 */

/*
	Select:
		* the brand
		* a count of the brand
		* and an average of the price for each brand
		* round the average down to the nearest number
		* alias the average as 'AVG' in your output
	From cars where
		the car has not been sold
	Group the table by brand.
	
	Show results where the count is > 1
*/

/* 
SELECT brand, count(brand), FLOOR(AVG(price)) as "AVG" FROM cars
	WHERE sold IS FALSE
	GROUP BY brand
	HAVING count(brand) > 1;
 */

 /*
	Select:
		* year
		* a count of cars from that year, aliased as car_count
		* the maximum price
		* the minimum price
	from the table cars
		where the car has been sold
	group by year
		only show years where more than one car has been sold from that year
	order the result by car_count
*/


SELECT year,
	count(year) AS car_count,
	MAX(price),
	MIN(price)
FROM cars
WHERE sold IS TRUE
GROUP BY year
HAVING count(year) > 1
ORDER BY car_count;
