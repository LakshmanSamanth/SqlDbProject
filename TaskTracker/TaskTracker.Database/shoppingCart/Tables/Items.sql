CREATE TABLE [shoppingCart].[Items] (
    [Id]          INT        IDENTITY (1, 1) NOT NULL,
    [Name]        NCHAR (50) NULL,
    [Description] NCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

