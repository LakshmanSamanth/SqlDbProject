
SET IDENTITY_INSERT [dbo].[Projects] ON
INSERT INTO [dbo].[Projects] ([Id], [Name], [Description], [ManagerUserId]) VALUES (1, N'Project 1', N'Test Project', NULL)
INSERT INTO [dbo].[Projects] ([Id], [Name], [Description], [ManagerUserId]) VALUES (2, N'Project 2', N'Test Project 2', NULL)
SET IDENTITY_INSERT [dbo].[Projects] OFF
