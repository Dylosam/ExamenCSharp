
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/23/2022 12:22:40
-- Generated from EDMX file: C:\Users\SBS\Downloads\ExamenCSharp\ExamenCSharp\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [examenBailaWane];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClientCompte]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Compte] DROP CONSTRAINT [FK_ClientCompte];
GO
IF OBJECT_ID(N'[dbo].[FK_Checque_inherits_Compte]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Compte_Checque] DROP CONSTRAINT [FK_Checque_inherits_Compte];
GO
IF OBJECT_ID(N'[dbo].[FK_Epargne_inherits_Compte]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Compte_Epargne] DROP CONSTRAINT [FK_Epargne_inherits_Compte];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Compte]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Compte];
GO
IF OBJECT_ID(N'[dbo].[Client]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Client];
GO
IF OBJECT_ID(N'[dbo].[Compte_Checque]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Compte_Checque];
GO
IF OBJECT_ID(N'[dbo].[Compte_Epargne]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Compte_Epargne];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Compte'
CREATE TABLE [dbo].[Compte] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [numero] int  NOT NULL,
    [solde] int  NOT NULL,
    [Client_Id] int  NOT NULL
);
GO

-- Creating table 'Client'
CREATE TABLE [dbo].[Client] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [prenom] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Compte_Checque'
CREATE TABLE [dbo].[Compte_Checque] (
    [frais] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Compte_Epargne'
CREATE TABLE [dbo].[Compte_Epargne] (
    [dateDbBlockage] nvarchar(max)  NOT NULL,
    [dateFinBlockage] nvarchar(max)  NOT NULL,
    [taux] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Compte'
ALTER TABLE [dbo].[Compte]
ADD CONSTRAINT [PK_Compte]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Client'
ALTER TABLE [dbo].[Client]
ADD CONSTRAINT [PK_Client]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Compte_Checque'
ALTER TABLE [dbo].[Compte_Checque]
ADD CONSTRAINT [PK_Compte_Checque]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Compte_Epargne'
ALTER TABLE [dbo].[Compte_Epargne]
ADD CONSTRAINT [PK_Compte_Epargne]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Client_Id] in table 'Compte'
ALTER TABLE [dbo].[Compte]
ADD CONSTRAINT [FK_ClientCompte]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Client]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientCompte'
CREATE INDEX [IX_FK_ClientCompte]
ON [dbo].[Compte]
    ([Client_Id]);
GO

-- Creating foreign key on [Id] in table 'Compte_Checque'
ALTER TABLE [dbo].[Compte_Checque]
ADD CONSTRAINT [FK_Checque_inherits_Compte]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Compte]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Compte_Epargne'
ALTER TABLE [dbo].[Compte_Epargne]
ADD CONSTRAINT [FK_Epargne_inherits_Compte]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Compte]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------