-- Demo 3 -- Query interactively
-- In order to do this demo use SQLLine utility as below and run the below queries one by one
-- python /user/hdp/{HDP version}/phoenix/bin/sqlline.py {zookeepernode name}:2181:/hbase-unsecure
-- e.g: python /usr/hdp/2.6.0.2-76/phoenix/bin/sqlline.py zk0-hbaset.54s0yw42dlcutc3lptdbi5nvug.fx.internal.cloudapp.net:2181:/hbase-unsecure
-- We will be using UK_CITIES_POPULATION and REGION tables for the demo
-- In this dataset region id means - 1000001-England;1000002-Scotland;1000003-Wales;1000004-North Ireland;

-- Step 1: Count the number rows in UK_CITIES_POPULATION table
SELECT COUNT(*) 
FROM UK_CITIES_POPULATION;

-- Step 2: Fetch the cities from UK_CITIES_POPULATION table
SELECT CITYNAME 
FROM UK_CITIES_POPULATION;

-- Step 3: What's the Population in London and also fetch region and cityname?
SELECT REGIONID, 
       CITYNAME, 
       POPULATION 
FROM UK_CITIES_POPULATION 
WHERE CITYNAME='London'; 

-- Step 4: Count the number of cities in each region 
SELECT REGIONID, 
       COUNT(*) 
FROM UK_CITIES_POPULATION 
GROUP BY REGIONID;

-- Step 5: Count the Total Population in England 
SELECT REGIONID, 
       SUM(POPULATION) 
FROM UK_CITIES_POPULATION 
WHERE REGIONID=1000001
GROUP BY REGIONID;

-- Step 6: Fetch from highest to lowest countries in UK in terms of population, along with the number of cities in each country 
-- and also get the country/region name, 
SELECT B.REGIONNAME AS "Country", COUNT(A.CITYNAME) AS "City Count", SUM(A.POPULATION) as "Total Population"
FROM UK_CITIES_POPULATION A
INNER JOIN
REGION B
ON A.REGIONID = B.REGIONID 
GROUP BY B.REGIONNAME
ORDER BY SUM(A.POPULATION) DESC;