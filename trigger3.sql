USE [ridwan]
GO

/****** Object:  Trigger [dbo].[my_trigger2]    Script Date: 22-Jan-23 6:38:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[my_trigger2] 
ON [dbo].[employee]
AFTER INSERT
AS
BEGIN
SET NOCOUNT ON;
DECLARE @SEX nvarchar(5);
SET @SEX = (SELECT TOP 1 sex FROM employee ORDER BY emp_id DESC)

IF @SEX = 'M'
INSERT INTO trigger_test VALUES ('Male employee added')
ELSE
INSERT INTO trigger_test VALUES ('Female employee added')

END
GO

ALTER TABLE [dbo].[employee] ENABLE TRIGGER [my_trigger2]
GO

