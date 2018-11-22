-- Step1: Drop the table if Organization already exists
DROP TABLE IF EXISTS REGION;

-- Step2: Create Organiation table
CREATE TABLE REGION
(
   REGIONID INTEGER PRIMARY KEY,
   REGIONNAME VARCHAR(225)
);

-- Step3: Insert few sample records
UPSERT INTO REGION VALUES (1000001, 'England');
UPSERT INTO REGION VALUES (1000002, 'Scotland');
UPSERT INTO REGION VALUES (1000003, 'Wales');
UPSERT INTO REGION VALUES (1000004, 'North Ireland');

-- Step4: List all recrods from REGION table
SELECT * FROM REGION;
