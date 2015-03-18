SET IDENTITY_INSERT [dbo].[Tasks] ON
INSERT INTO [dbo].[Tasks] ([Id], [Name], [Description], [Complete], [ProjectId]) VALUES (1, N'Task1', N'Task for project 1', 0, 1)
INSERT INTO [dbo].[Tasks] ([Id], [Name], [Description], [Complete], [ProjectId]) VALUES (2, N'Task2', N'Task 2', 1, 1)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
