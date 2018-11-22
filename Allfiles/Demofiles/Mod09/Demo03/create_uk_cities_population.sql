-- Demo 3 -- Create table scripts for bulk ingest and futher analysis

-- Step 1: Drop uk_cities_population table, if it already exists
DROP TABLE IF EXISTS UK_CITIES_POPULATION;

-- Step 2: Create uk_cities_population table
CREATE TABLE UK_CITIES_POPULATION
(
   REGIONID INTEGER NOT NULl,
   CITYNAME VARCHAR(225) NOT NULL,
   POPULATION BIGINT
   CONSTRAINT CITY_PK PRIMARY KEY(REGIONID,CITYNAME)
);

-- Step 3: Drop uk_cities_population table, if it already exists
DROP TABLE IF EXISTS UK_CITIES_POPULATION_MR;

-- Step 4: Create uk_cities_population table
CREATE TABLE UK_CITIES_POPULATION_MR 
(
   REGIONID INTEGER NOT NULl,
   CITYNAME VARCHAR(225) NOT NULL,
   POPULATION BIGINT
   CONSTRAINT CITY_MR_PK PRIMARY KEY(REGIONID,CITYNAME)
);


