CREATE TABLE [dbo].[Courses]
(
	[Course_Id] INT NOT NULL PRIMARY KEY, 
    [Course_name] NVARCHAR(50) NULL, 
    [Duration] DATETIME NULL, 
    [Syllabus] NVARCHAR(MAX) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [Learning_outcome] NVARCHAR(MAX) NULL, 
    [Software_requirement] NVARCHAR(MAX) NULL, 
    [Picture] IMAGE NULL, 
    [Abstract] NVARCHAR(50) NULL
)
