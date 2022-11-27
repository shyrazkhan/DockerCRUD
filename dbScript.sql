USE [master]
GO

IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE [name] = N'MovieDB') 
BEGIN
	PRINT N'Creating MovieDB Database...';
	CREATE DATABASE [MovieDB]
END
GO

USE [MovieDB]
GO


IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE [TABLE_NAME] = N'Movie' AND [TABLE_TYPE] = N'BASE TABLE') 
BEGIN
	PRINT N'Creating [Movie]...';
	CREATE TABLE [dbo].[Movie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Actors] [nvarchar](400) NOT NULL
) ON [PRIMARY]
	
END
GO