CREATE TABLE [dbo].[Projects] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (MAX) NULL,
    [Description]   NVARCHAR (MAX) NULL,
    [ManagerUserId] NVARCHAR (128) NULL,
    CONSTRAINT [PK_dbo.Projects] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Projects_AspNetUsers] FOREIGN KEY ([ManagerUserId]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

