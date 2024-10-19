--baitap1
SELECT name FROM city 
WHERE countrycode='USA' AND population>120000
--baitap2
SELECT * FROM city 
WHERE countrycode ='JPN'
--baitap3
SELECT city,state FROM station
--baitap4
SELECT DISTINCT city FROM station
WHERE LEFT(city, 1) IN ('A', 'E', 'U', 'I', 'O')
--baitap5
SELECT DISTINCT city FROM station 
WHERE RIGHT(city, 1) IN ('A', 'E', 'U', 'I', 'O')
--baitap6
SELECT DISTINCT city FROM station 
WHERE LEFT(city, 1) NOT IN ('A', 'E', 'U', 'I', 'O')
--baitap7
SELECT name FROM employee
ORDER BY name ASC
--baitap8
SELECT name FROM employee
WHERE salary >2000 AND months <10
ORDER BY EMPLOYEE_ID
--baitap9
SELECT product_id FROM Products
WHERE low_fats = 'Y' 
AND recyclable = 'Y'
--baitap10
SELECT NAME FROM CUSTOMER
WHERE REFEREE_ID !=2 OR REFEREE IS NULL
--baitap11
SELECT NAME, POPULATION, AREA FROM WORLD
WHERE AREA>=3000000 OR POPULATION>=25000000
--baitap12
SELECT DISTINCT (AUTHOR_ID) AS ID FROM VIEWS
WHERE AUTHOR_ID = VIEWER_ID 
ORDER BY AUTHOR_ID 
--baitap13
SELECT PART,ASSEMBLY_STEP
FROM PARTS_ASSEMBLY
WHERE FINISH_DATE IS NULL
--baitap14
SELECT * FROM LYFT_DRIVERS 
WHERE YEARLY_SALARY NOT BETWEEN 30001 AND 69999
--baitap15
SELECT advertising_channel
FROM uber_advertising
WHERE year = 2019
AND money_spent > 100000

