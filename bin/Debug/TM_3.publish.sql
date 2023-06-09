﻿/*
Deployment script for TM

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "TM"
:setvar DefaultFilePrefix "TM"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Creating Table [dbo].[Teacher]...';


GO
CREATE TABLE [dbo].[Teacher] (
    [Id]         INT           NOT NULL,
    [Name]       NCHAR (10)    NULL,
    [Email_id]   TEXT          NULL,
    [Mob_no]     BIGINT        NULL,
    [Profession] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creating Table [dbo].[Test]...';


GO
CREATE TABLE [dbo].[Test] (
    [Test_Id]    INT        NOT NULL,
    [Name]       NCHAR (10) NULL,
    [Duration]   DATETIME   NULL,
    [Start_time] TIME (7)   NULL,
    [End_time]   TIME (7)   NULL,
    PRIMARY KEY CLUSTERED ([Test_Id] ASC)
);


GO
PRINT N'Update complete.';


GO
