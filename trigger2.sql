USE [ridwan]
GO

/****** Object:  Trigger [dbo].[my_trigger1]    Script Date: 22-Jan-23 6:38:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[my_trigger1] 
ON [dbo].[employee]
AFTER INSERT
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO trigger_test SELECT TOP 1 first_name FROM employee ORDER BY emp_id DESC
END
GO

ALTER TABLE [dbo].[employee] ENABLE TRIGGER [my_trigger1]
GO

