/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    Initializes the 'DataWarehouse' database from scratch. If a database
    with this name already exists, it is dropped and rebuilt to guarantee
    a clean slate. The script then creates the three schemas that make up
    the Medallion Architecture used throughout this project: 'bronze',
    'silver', and 'gold'.
   */

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
