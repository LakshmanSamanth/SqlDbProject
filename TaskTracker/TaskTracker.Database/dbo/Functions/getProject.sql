CREATE FUNCTION [dbo].[getProject]
(
	@ProjectId int
)
RETURNS @returntable TABLE
(
	Name nvarchar(max),
	Descriptino nvarchar(max)
)
AS
BEGIN
	INSERT @returntable
	SELECT p.Name, p.Description
	From dbo.Projects p
	where p.Id = @ProjectId
	RETURN
END