CREATE TABLE [dbo].[IdentityUserLogins] (
    [UserId]        NVARCHAR (128) NOT NULL,
    [LoginProvider] NVARCHAR (MAX) NULL,
    [ProviderKey]   NVARCHAR (MAX) NULL,
    [User_Id]       NVARCHAR (128) NULL,
    CONSTRAINT [PK_dbo.IdentityUserLogins] PRIMARY KEY CLUSTERED ([UserId] ASC),
    CONSTRAINT [FK_dbo.IdentityUserLogins_dbo.IdentityUsers_User_Id] FOREIGN KEY ([User_Id]) REFERENCES [dbo].[IdentityUsers] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_User_Id]
    ON [dbo].[IdentityUserLogins]([User_Id] ASC);

