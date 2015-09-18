CREATE TABLE [dbo].[Tasks] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (MAX) NULL,
    [Description]    NVARCHAR (MAX) NULL,
    [Complete]       BIT            NOT NULL,
    [ProjectId]      INT            NOT NULL,
    [AssignedUserId] INT            NULL,
    CONSTRAINT [PK_dbo.Tasks] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Tasks_dbo.Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ProjectId]
    ON [dbo].[Tasks]([ProjectId] ASC);


GO
CREATE TRIGGER [Trigger]
	ON [dbo].[Tasks]
	FOR  INSERT
	AS
	BEGIN
		SET NOCOUNT ON
		INSERT INTO shoppingCart.Items(Name,Description)
		Select i.Name,i.Description
		FROM inserted i
	END