-- Create a new stored procedure called 'setCustomer' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
    WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'setCustomer'
)
DROP PROCEDURE dbo.setCustomer
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.setCustomer
    @json_val nvarchar(max) 
AS
    -- body of the stored procedure
    INSERT INTO dbo.Customers (CustomerId, Name, Location, Email)
    SELECT CustomerId, Name, Location, Email
    FROM OPENJSON (@json_val)
    WITH(   CustomerId int, 
            Name nvarchar(50), 
            Location nvarchar(50), 
            Email nvarchar(50)
    )
GO
