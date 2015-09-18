CREATE PROCEDURE [dbo].[TasksGetAll]
AS
	SELECT t.Name,t.Description,t.Complete,t.ProjectId
	FROM dbo.Tasks t
RETURN 0