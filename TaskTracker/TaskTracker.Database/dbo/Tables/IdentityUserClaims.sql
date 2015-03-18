CREATE TABLE [dbo].[IdentityUserClaims] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [ClaimType]  NVARCHAR (MAX) NULL,
    [ClaimValue] NVARCHAR (MAX) NULL,
    [User_Id]    NVARCHAR (128) NULL,
    CONSTRAINT [PK_dbo.IdentityUserClaims] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.IdentityUserClaims_dbo.IdentityUsers_User_Id] FOREIGN KEY ([User_Id]) REFERENCES [dbo].[IdentityUsers] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_User_Id]
    ON [dbo].[IdentityUserClaims]([User_Id] ASC);

