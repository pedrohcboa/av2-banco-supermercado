
USE master;
GO


IF DB_ID('Supermercado') IS NOT NULL
BEGIN
    ALTER DATABASE Supermercado SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Supermercado;
END
GO


CREATE DATABASE Supermercado;
GO


PRINT 'Banco "Supermercado" criado com sucesso!';
GO