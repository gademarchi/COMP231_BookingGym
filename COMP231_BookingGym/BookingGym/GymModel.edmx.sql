
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/24/2018 00:47:22
-- Generated from EDMX file: C:\Users\gadem\IBT\BookingGym\COMP231_BookingGym\BookingGym\GymModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [GymDb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Classes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Classes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL,
    [Password] nvarchar(max)  NULL,
    [Address] nvarchar(max)  NULL,
    [City] nvarchar(max)  NULL,
    [PostalCode] nvarchar(max)  NULL,
    [Province] nvarchar(max)  NULL,
    [Admin] nvarchar(max)  NULL
);
GO

-- Creating table 'Classes'
CREATE TABLE [dbo].[Classes] (
    [ClassId] int IDENTITY(1,1) NOT NULL,
    [ClassName] nvarchar(max)  NULL,
    [Professor] nvarchar(max)  NULL,
    [Starts] nvarchar(max)  NULL,
    [Finish] nvarchar(max)  NULL
);
GO

-- Creating table 'Messages'
CREATE TABLE [dbo].[Messages] (
    [MessageId] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [DescMessage] nvarchar(max)  NULL,
    [From] nvarchar(max)  NULL,
    [Posted] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UserId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [ClassId] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [PK_Classes]
    PRIMARY KEY CLUSTERED ([ClassId] ASC);
GO

-- Creating primary key on [MessageId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [PK_Messages]
    PRIMARY KEY CLUSTERED ([MessageId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------