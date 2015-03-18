CREATE TABLE [shoppingCart].[Items] (
    [Id]          INT        IDENTITY (1, 1) NOT NULL,
    [Name]        NCHAR (10) NULL,
    [Description] NCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

