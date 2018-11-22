-- Demonstration 2: To Peform Exploratory Data Analysis using Hive
-- Task02: Data Exploration on hivesampletableORC table

-- Step 1: Perform basic data exploration
-- View the tables in default schema
-- Count the number of rows in the table
-- Fetch 10 rows to familiarize yourself with data
show tables;
select count(*) from hivesampletableORC;
select * from hivesampletableORC LIMIT 10;

-- Step 2: Identify the countries this e-commerce platform operating
select distinct country from hivesampletableORC;

-- Step 3: Identify the countries with highest web traffic to this site
select country, 
count(distinct clientid) traffic 
from hivesampletableorc 
group by country
order by count(distinct clientid) desc;

-- Step 4: Identify the most commonly used device platforms
select deviceplatform, 
       country,       
       count(*) as platformcount 
from hivesampletableorc 
group by deviceplatform,
         country
order by platformcount desc;

-- Step 5: Identify the users from different countries, who visited this site more than 6 times
select clientid, 
       country,
       count(*) as no_of_visits 
from hivesampletableorc
group by clientid,
         country
having no_of_visits > 6
order by no_of_visits desc;