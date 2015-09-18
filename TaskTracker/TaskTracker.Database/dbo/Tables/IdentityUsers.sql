CREATE TABLE [dbo].[IdentityUsers] (
    [Id]            NVARCHAR (128) NOT NULL,
    [UserName]      NVARCHAR (MAX) NULL,
    [PasswordHash]  NVARCHAR (MAX) NULL,
    [SecurityStamp] NVARCHAR (MAX) NULL,
    [EmailAddress]  NVARCHAR (MAX) NULL,
    [Phone]         NVARCHAR (MAX) NULL,
    [Discriminator] NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_dbo.IdentityUsers] PRIMARY KEY CLUSTERED ([Id] ASC)
);

