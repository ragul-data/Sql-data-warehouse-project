/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWare_House_ETL' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWare_House_ETL' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


Database: DataWare_House_ETL
   ├── Schema: bronze   → raw tables
   ├── Schema: silver   → cleaned tables
   └── Schema: gold     → reporting tables
	Thise is the structure of the database
"----------------------------------------------------------------------------------------"
	
USE DataWare_House_ETL;
GO

-- Drop and recreate the 'DataWare_House_ETL' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWare_House_ETL')
BEGIN
    ALTER DATABASE DataWare_House_ETL SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWare_House_ETL;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWare_House_ETL;
GO

USE DataWare_House_ETL;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
