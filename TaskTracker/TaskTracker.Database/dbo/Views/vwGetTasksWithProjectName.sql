CREATE VIEW [dbo].[vwGetTasksWithProjectName]
	AS 
	Select 
		t.Name as TaskName, 
		p.Name as ProjectName
	FROM TaskTracker.dbo.Tasks t
	inner join dbo.Projects p
		on t.ProjectId = p.Id
	left join [CRM].dbo.Users u
	on t.AssignedUserId = u.Id