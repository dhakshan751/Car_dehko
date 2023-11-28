# Car_dehko
The "SecondHand_Car_Dealer" database manages second-hand car details, providing insights into total records, yearly availability, and fuel-type distribution. The README offers setup instructions and SQL queries for various analyses, making it a comprehensive guide for users and contributors.
SecondHand Car Dealer Database

The "SecondHand_Car_Dealer" database is designed to manage information about second-hand cars. It includes a table named car with columns such as name, year, and fuel. The provided README file offers guidance on setting up the database, creating tables, and importing data. Additionally, it includes sample SQL queries for various analyses, covering aspects such as total car records, cars available in specific years, and fuel-type distribution.

The queries cover a range of information, including total car count, cars available in specific years, and details on fuel types. The README encourages contributors to enhance the database and provides a structure for listing contributors.

This README serves as a comprehensive guide for users and contributors, facilitating database setup and exploration through meaningful SQL queries.


Overview
This database, named "SecondHand_Car_Dealer," is designed to manage information about second-hand cars, including details such as the car's name, year of manufacture, and fuel type. The README file provides essential information on setting up the database and running various queries for analysis.

Database Setup
Create Database:

sql
Copy code
CREATE DATABASE IF NOT EXISTS SecondHand_Car_Dealer;
USE SecondHand_Car_Dealer;
Create Tables:
The database includes at least one table, named car, with columns such as name, year, and fuel. Ensure the schema aligns with your requirements.

Import Data:
Load the cars' data into the database using suitable methods, like INSERT INTO.

Sample Queries
1. Total Cars
sql
Copy code
SELECT * FROM car;
2. Total Car Records
sql
Copy code
SELECT COUNT(*) AS TOTAL_CAR_RECORDS FROM car;
3. Cars Available in 2023
sql
Copy code
SELECT COUNT(*) AS CAR_COUNT FROM CAR WHERE YEAR = '2023';
4. Cars Available in 2020, 2021, 2022
sql
Copy code
SELECT YEAR AS CAR_AVAILABLE_IN_YEARS, COUNT(*) AS CAR_AVAILABLE
FROM CAR
WHERE YEAR IN ('2020' , '2021', '2022')
GROUP BY YEAR;
5. Total Cars by Year
sql
Copy code
SELECT YEAR AS YEARS, COUNT(*) AS TOTAL_CARS
FROM CAR
GROUP BY YEAR
ORDER BY YEARS ASC;
6. Diesel Cars in 2020
sql
Copy code
SELECT FUEL AS FUEL_TYPE, COUNT(*) AS CAR_AVAILABLE
FROM CAR
GROUP BY FUEL , YEAR
HAVING FUEL = 'DIESEL' AND YEAR = '2020';
7. Petrol Cars in 2020
sql
Copy code
SELECT COUNT(*)
FROM car
WHERE fuel = 'petrol' AND year = 2020;
8. All Fuel Cars
sql
Copy code
SELECT DISTINCT name, year, fuel
FROM car
WHERE fuel IN ('petrol', 'diesel', 'CNG');
9. Years with More Than 100 Cars
sql
Copy code
SELECT year, COUNT(*) AS car_count
FROM car
GROUP BY year
HAVING car_count > 100;
10. Car Count Details Between 2015 and 2023
sql
Copy code
SELECT year AS YEAR, fuel AS FUEL_TYPE, COUNT(name) AS CAR_COUNT
FROM car
WHERE year BETWEEN 2015 AND 2023
GROUP BY year, fuel
ORDER BY year, fuel;
11. All Cars Details Between 2015 to 2023
sql
Copy code
SELECT *
FROM car
WHERE year BETWEEN 2015 AND 2023;
