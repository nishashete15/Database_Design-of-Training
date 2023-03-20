CREATE TABLE [dbo].[Employees]
(
	[Emp_Id] INT NOT NULL PRIMARY KEY, 
    [First_name] NCHAR(10) NULL, 
    [Last_name] NCHAR(10) NULL, 
    [Mob_no] BIGINT NULL, 
    [Address] NVARCHAR(50) NULL, 
    [Birth_date] DATE NULL, 
    [Gender] NCHAR(10) NULL, 
    [Email_id] NCHAR(10) NULL 
)
