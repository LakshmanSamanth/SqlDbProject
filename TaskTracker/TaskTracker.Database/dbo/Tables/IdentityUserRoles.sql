CREATE TABLE [dbo].[IdentityUserRoles] (
    [RoleId] NVARCHAR (128) NOT NULL,
    [UserId] NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_dbo.IdentityUserRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC, [UserId] ASC),
    CONSTRAINT [FK_dbo.IdentityUserRoles_dbo.IdentityRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[IdentityRoles] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.IdentityUserRoles_dbo.IdentityUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[IdentityUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RoleId]
    ON [dbo].[IdentityUserRoles]([RoleId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [dbo].[IdentityUserRoles]([UserId] ASC);

