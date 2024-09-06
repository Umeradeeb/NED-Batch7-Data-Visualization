SELECT * FROM public.car_sales

--Q1 Retrieve all data for the Passenger vehicle type
SELECT * FROM car_sales WHERE Vehicle_type = 'Passenger';

--Q2 Find the average price of all vehicles.
SELECT AVG(Price_in_thousands) AS Avg_Price FROM car_sales;

--Q3 List all models with a Fuel_efficiency greater than 30.
SELECT Model, Fuel_efficiency FROM car_sales WHERE Fuel_efficiency > 30;

--Q4 Count the number of vehicles manufactured by Chevrolet
SELECT COUNT(*) FROM car_sales WHERE Manufacturer = 'Chevrolet';

--Q5 Find the total Sales_in_thousands for Ford vehicles.
SELECT SUM(Sales_in_thousands) AS Total_Sales FROM car_sales WHERE Manufacturer = 'Ford';

--Q6 Retrieve models with a Horsepower between 200 and 300.
SELECT Model, Horsepower FROM car_sales WHERE Horsepower BETWEEN 200 AND 300;

--Q7 List all vehicles ordered by Price_in_thousands in descending order.
SELECT * FROM car_sales ORDER BY Price_in_thousands DESC;

--Q8 Find the model with the highest resale value.
SELECT Model, Year_resale_value FROM car_sales ORDER BY Year_resale_value DESC LIMIT 1;

--Q9 Count how many unique manufacturers are in the table.
SELECT COUNT(DISTINCT Manufacturer) FROM car_sales;

--Q10 Retrieve all data for models that have an engine size larger than 3.0.
SELECT * FROM car_sales WHERE Engine_size > 3.0;

--Q11 List models with a Price_in_thousands less than 20, sorted by sales.
SELECT Model, Sales_in_thousands FROM car_sales WHERE Price_in_thousands < 20 ORDER BY Sales_in_thousands DESC;

--Q12 Find the model with the lowest Fuel_efficiency.
SELECT Model, Fuel_efficiency FROM car_sales ORDER BY Fuel_efficiency ASC LIMIT 1;

--Q13 Calculate the average Horsepower for all Car type vehicles.
SELECT AVG(Horsepower) AS Avg_Horsepower FROM car_sales WHERE Vehicle_type = 'Car';

--Q14 List all models where Sales_in_thousands is above 100.
SELECT Model, Sales_in_thousands FROM car_sales WHERE Sales_in_thousands > 100;

--Q15 Retrieve models and their prices where the Price_in_thousands is between 15 and 25.
SELECT Model, Price_in_thousands FROM car_sales WHERE Price_in_thousands BETWEEN 15 AND 25;

--Q16 Find the Manufacturer with the most vehicle models listed.
SELECT Manufacturer, COUNT(Model) AS Model_Count FROM car_sales GROUP BY Manufacturer ORDER BY Model_Count DESC LIMIT 1;

--Q17 List the top 5 most fuel-efficient vehicles.
SELECT Model, Fuel_efficiency FROM car_sales ORDER BY Fuel_efficiency DESC LIMIT 5;

--Q18 Retrieve models with Sales_in_thousands less than 10.
SELECT Model, Sales_in_thousands FROM car_sales WHERE Sales_in_thousands < 10;

--Q19 Calculate the sum of Sales_in_thousands for all Passenger vehicles.
SELECT SUM(Sales_in_thousands) AS Total_Passenger_Sales FROM car_sales WHERE Vehicle_type = 'Passenger';

--Q20 Find the average Year_resale_value for vehicles with Engine_size greater than 2.5.
SELECT AVG(Year_resale_value) AS Avg_Resale_Value FROM car_sales WHERE Engine_size > 2.5;
