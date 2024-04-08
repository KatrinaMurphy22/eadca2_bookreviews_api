IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240327151226_InitialCreate'
)
BEGIN
    CREATE TABLE [Book] (
        [BookId] int NOT NULL IDENTITY,
        [Title] nvarchar(max) NOT NULL,
        [Author] nvarchar(max) NOT NULL,
        [Description] nvarchar(250) NOT NULL,
        CONSTRAINT [PK_Book] PRIMARY KEY ([BookId])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240327151226_InitialCreate'
)
BEGIN
    CREATE TABLE [Review] (
        [ReviewId] int NOT NULL IDENTITY,
        [BookId] int NOT NULL,
        [Rating] int NOT NULL,
        [Comment] nvarchar(250) NOT NULL,
        [Reviewer] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_Review] PRIMARY KEY ([ReviewId]),
        CONSTRAINT [FK_Book] FOREIGN KEY ([BookId]) REFERENCES [Book] ([BookId]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240327151226_InitialCreate'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240327151226_InitialCreate', N'8.0.3');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240328113731_AzureCreate'
)
BEGIN
    CREATE TABLE [Book] (
        [BookId] int NOT NULL IDENTITY,
        [Title] nvarchar(max) NOT NULL,
        [Author] nvarchar(max) NOT NULL,
        [Description] nvarchar(250) NOT NULL,
        CONSTRAINT [PK_Book] PRIMARY KEY ([BookId])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240328113731_AzureCreate'
)
BEGIN
    CREATE TABLE [Review] (
        [ReviewId] int NOT NULL IDENTITY,
        [BookId] int NOT NULL,
        [Rating] int NOT NULL,
        [Comment] nvarchar(250) NOT NULL,
        [Reviewer] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_Review] PRIMARY KEY ([ReviewId]),
        CONSTRAINT [FK_Book] FOREIGN KEY ([BookId]) REFERENCES [Book] ([BookId]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20240328113731_AzureCreate'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240328113731_AzureCreate', N'8.0.3');
END;
GO

COMMIT;
GO

