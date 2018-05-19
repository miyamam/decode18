IF NOT EXISTS(
    SELECT name
    FROM sys.databases
    WHERE name=N'TutorialDB'
)
CREATE Database [TutorialDB]
GO

alter DATABASE [TutorialDB] SET QUERY_STORE=ON
GO
