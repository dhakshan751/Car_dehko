create database  if not exists SecondHand_Car_Dealer ;
use SecondHand_Car_Dealer;


# 1) Read Cars data

SELECT 
    *
FROM
    car;


# 2) Total Cars: To get a count of total records

SELECT 
    COUNT(*) AS TOATL_CAR_RECORDS
FROM
    car;

# 3 ) The manager asked the employee How many cars will be available in 2023 ?

SELECT 
    COUNT(*) AS CAR_COUNT
FROM
    CAR
WHERE
    YEAR = '2023';
    
# 4) The manager asked the employee How many cars is available in 2020,2021,2022

SELECT 
    YEAR AS CAR_AVAILABLE_IN_YEARS, COUNT(*) AS CAR_AVAILABLE
FROM
    CAR
WHERE
    YEAR IN ('2020' , '2021', '2022')
GROUP BY YEAR;

# 5) Clint asked me to print the total of all cars by year. I don’t see all the details.

SELECT 
    YEAR AS YEARS, COUNT(*) AS TOTAL_CARS
FROM
    CAR
GROUP BY YEAR
ORDER BY YEARS ASC;

# 6) Clint asked to car dealer agent How many diesel cars will there be in 2020 ? 

SELECT 
    FUEL AS FUEL_TYPE, COUNT(*) AS CAR_AVAILABLE
FROM
    CAR
GROUP BY FUEL , YEAR
HAVING FUEL = 'DIESEL' AND YEAR = '2020';


# 7) Clint requested a car dealer agent How many petrol cars will there be in 2020?

SELECT 
    COUNT(*)
FROM
    car
WHERE
    fuel = 'petrol' AND year = 2020;

# 8) The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year.select distinct name,year,fuel from car where fuel in('petrol', 'diesel', 'CNG');

SELECT DISTINCT
    name, year, fuel
FROM
    car
WHERE
    fuel IN ('petrol' , 'diesel', 'CNG');
    
# 9)  Manager said there were more than 100 cars in a given year, which year more than 100 cars? 
   
SELECT 
    year, COUNT(*) AS car_count
FROM
    car
GROUP BY year
HAVING car_count > 100;

# 10) The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.

SELECT 
    year AS YEAR, fuel AS FUEL_TYPE, COUNT(name) AS CAR_COUNT
FROM
    car
WHERE
    year BETWEEN 2015 AND 2023
GROUP BY year , fuel
ORDER BY year , fuel;


# 11) The manager said to the employee All cars details between 2015 to 2023 we need complete list


SELECT 
    *
FROM
    car
WHERE
    year BETWEEN 2015 AND 2023;

