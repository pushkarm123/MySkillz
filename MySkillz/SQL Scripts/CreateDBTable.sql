USE master;
GO
if db_id('MySQLDB') is null
	CREATE DATABASE MySQLDB;
ELSE
	PRINT 'DB already exists'
GO

USE MySQLDB;
GO
if object_id('TuMesa', 'U') is null
	CREATE TABLE TuMesa(
		TuMesaId int IDENTITY(1,1),
		TuMesaDescription varchar(50)
	);
ELSE
	PRINT 'Table already exists'
GO
