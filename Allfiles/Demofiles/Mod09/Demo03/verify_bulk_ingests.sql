-- This script is to verify the bulk ingests into UK_CITIES_POPULATION and UK_CITIES_POPULATION_MR
-- you may also run as below
-- python sqlline.py <ZOOKEEPER_NAME>:2181:/hbase-unsecure
-- !run verify_bulk_ingests.sql

-- count the number of records in the table
SELECT COUNT(*) FROM UK_CITIES_POPULATION;
SELECT COUNT(*) FROM UK_CITIES_POPULATION_MR;

-- Fetch 10 recrods from eacch of the table
SELECT * FROM UK_CITIES_POPULATION LIMIT 10;
SELECT * FROM UK_CITIES_POPULATION_MR LIMIT 10;



