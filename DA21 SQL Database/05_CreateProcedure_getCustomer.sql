-- Create a new stored procedure called 'getCustomer' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
AND SPECIFIC_NAME = N'getCustomer'
)
DROP PROCEDURE dbo.getCustomer
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.getCustomer
@ID int
-- add more stored procedure parameters here
AS
-- body of the stored procedure
SELECT  c.CustomerId, 
c.Name, 
c.Location, 
c.Email
FROM dbo.Customers c
WHERE c.CustomerId = @ID
FOR JSON PATH

GO
-- example to execute the stored procedure we just created
EXECUTE dbo.getCustomer 1
GO
