/*
==============================================================
Create a new database and schemas for data organization
==============================================================

Script Description:
* This script creates a new database named 'DataWarehouse' and defines three schemas:

* bronze, silver, and gold. These  schemas can be used to organize data based on its processing stage or quality level.

Warning:
	-- Running this script will drop the 'DataWarehouse' database if it already exists.
	all data in that database will be lost. Make sure to back up any important data before executing this script.
*/

use master;
go
-- Drop and recreate 'DataWarehouse' database if it already exists
if exists (select 1 from sys.databases where name = 'DataWarehouse')
begin
	alter database DataWarehouse set single_user with rollback immediate;
	drop database DataWarehouse;
end

create database DataWarehouse;
go
USE DataWarehouse;
go

create schema bronze;
go
create schema silver;
go
create schema gold;
