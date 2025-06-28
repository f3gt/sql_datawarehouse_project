/*

The scripts create database datawarehouse checking with by if statement if database exists it drops and create database
and created three schemas bronze,silver and gold

*/



use master

if exists (select * from sys.databases where name = 'datawarehouse')
begin
	alter database datawarehouse set SINGLE_USER with rollback immediate;
	drop database datawarehouse
end

create database datawarehouse

use datawarehouse;
go
create schema bronze;
go
create schema silver;
go
create schema gold;

