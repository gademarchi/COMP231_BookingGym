
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/24/2018 16:55:32
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

IF OBJECT_ID(N'[dbo].[FK_TimetableUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_TimetableUser];
GO
IF OBJECT_ID(N'[dbo].[FK_TimetableClass_Timetable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TimetableClass] DROP CONSTRAINT [FK_TimetableClass_Timetable];
GO
IF OBJECT_ID(N'[dbo].[FK_TimetableClass_Class]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TimetableClass] DROP CONSTRAINT [FK_TimetableClass_Class];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Classes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Classes];
GO
IF OBJECT_ID(N'[dbo].[Messages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Messages];
GO
IF OBJECT_ID(N'[dbo].[Timetables]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Timetables];
GO
IF OBJECT_ID(N'[dbo].[TimetableClass]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TimetableClass];
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
    [Admin] nvarchar(max)  NULL,
    [TimetableTimetableId] int  NOT NULL,
    [Weight] nvarchar(max)  NULL,
    [Height] nvarchar(max)  NULL,
    [Age] nvarchar(max)  NULL
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

-- Creating table 'Timetables'
CREATE TABLE [dbo].[Timetables] (
    [TimetableId] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(max)  NOT NULL,
    [ClassId] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TimetableClass'
CREATE TABLE [dbo].[TimetableClass] (
    [Timetables_TimetableId] int  NOT NULL,
    [Classes_ClassId] int  NOT NULL
);
GO

-- Creating table 'TimetableUser'
CREATE TABLE [dbo].[TimetableUser] (
    [Timetables_TimetableId] int  NOT NULL,
    [Users_UserId] int  NOT NULL
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

-- Creating primary key on [TimetableId] in table 'Timetables'
ALTER TABLE [dbo].[Timetables]
ADD CONSTRAINT [PK_Timetables]
    PRIMARY KEY CLUSTERED ([TimetableId] ASC);
GO

-- Creating primary key on [Timetables_TimetableId], [Classes_ClassId] in table 'TimetableClass'
ALTER TABLE [dbo].[TimetableClass]
ADD CONSTRAINT [PK_TimetableClass]
    PRIMARY KEY CLUSTERED ([Timetables_TimetableId], [Classes_ClassId] ASC);
GO

-- Creating primary key on [Timetables_TimetableId], [Users_UserId] in table 'TimetableUser'
ALTER TABLE [dbo].[TimetableUser]
ADD CONSTRAINT [PK_TimetableUser]
    PRIMARY KEY CLUSTERED ([Timetables_TimetableId], [Users_UserId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Timetables_TimetableId] in table 'TimetableClass'
ALTER TABLE [dbo].[TimetableClass]
ADD CONSTRAINT [FK_TimetableClass_Timetable]
    FOREIGN KEY ([Timetables_TimetableId])
    REFERENCES [dbo].[Timetables]
        ([TimetableId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Classes_ClassId] in table 'TimetableClass'
ALTER TABLE [dbo].[TimetableClass]
ADD CONSTRAINT [FK_TimetableClass_Class]
    FOREIGN KEY ([Classes_ClassId])
    REFERENCES [dbo].[Classes]
        ([ClassId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TimetableClass_Class'
CREATE INDEX [IX_FK_TimetableClass_Class]
ON [dbo].[TimetableClass]
    ([Classes_ClassId]);
GO

-- Creating foreign key on [Timetables_TimetableId] in table 'TimetableUser'
ALTER TABLE [dbo].[TimetableUser]
ADD CONSTRAINT [FK_TimetableUser_Timetable]
    FOREIGN KEY ([Timetables_TimetableId])
    REFERENCES [dbo].[Timetables]
        ([TimetableId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Users_UserId] in table 'TimetableUser'
ALTER TABLE [dbo].[TimetableUser]
ADD CONSTRAINT [FK_TimetableUser_User]
    FOREIGN KEY ([Users_UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TimetableUser_User'
CREATE INDEX [IX_FK_TimetableUser_User]
ON [dbo].[TimetableUser]
    ([Users_UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------