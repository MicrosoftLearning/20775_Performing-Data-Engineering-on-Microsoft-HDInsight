-- Demonstration 2: To Peform Exploratory Data Analysis using Hive
-- Task01: Create ORC formatted Tables
-- Step 1: Switch to default schema
USE default;

-- Step 2: Drop hivesampletableORC table, if it already exists
DROP TABLE IF EXISTS hivesampletableorc;

-- Step 3: Populate hivesampletableORC
CREATE TABLE hivesampletableorc
(
   clientid              string,
   querytime             string,
   market                string,
   deviceplatform        string,
   devicemake            string,
   devicemodel           string,
   state                 string,
   country               string,
   querydwelltime        double,
   sessionid             bigint,
   sessionpagevieworder  bigint
)
STORED AS ORC;

-- Step 4: Populate hivesampletableORC
INSERT OVERWRITE TABLE hivesampletableORC
SELECT  clientid,
        querytime,
        market,
        deviceplatform,
        devicemake,
        devicemodel,
        state,
        country,
        querydwelltime,
        sessionid,
        sessionpagevieworder
FROM hivesampletable;