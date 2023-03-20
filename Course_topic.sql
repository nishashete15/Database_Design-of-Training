CREATE TABLE [dbo].[Course_topic]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NCHAR(10) NULL, 
    [Description] NVARCHAR(50) NULL, 
    [Content] NVARCHAR(50) NULL, 
    [Duration] DATETIME NULL
)
