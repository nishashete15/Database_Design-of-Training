CREATE TABLE [dbo].[Reg_Training]
(
	[Training_Id] INT NOT NULL PRIMARY KEY, 
    [Training_name] NVARCHAR(50) NULL, 
    [Training_type] NVARCHAR(50) NULL, 
    [Start_date] DATE NULL, 
    [End_date] DATE NULL 
)
