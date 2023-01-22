USE [ridwan]
GO

/****** Object:  Trigger [dbo].[my_trigger]    Script Date: 22-Jan-23 6:38:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[my_trigger] 
ON [dbo].[employee]
AFTER INSERT
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO trigger_test VALUES('new employee added')
END
GO

ALTER TABLE [dbo].[employee] ENABLE TRIGGER [my_trigger]
GO

