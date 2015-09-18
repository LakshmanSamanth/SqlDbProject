CREATE TABLE [dbo].[Comments] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [CommentText]     NVARCHAR (MAX) NULL,
    [UserId]          NVARCHAR (MAX) NULL,
    [CommentDateTime] DATETIME       NOT NULL,
    [ProjectId]       INT            NOT NULL,
    CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Comments_dbo.Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ProjectId]
    ON [dbo].[Comments]([ProjectId] ASC);

