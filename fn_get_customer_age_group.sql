CREATE FUNCTION fn_get_customer_age_group (@DateOfBirth DATE)
RETURNS NVARCHAR(20)
AS
BEGIN
    DECLARE @Age INT = DATEDIFF(YEAR, @DateOfBirth, GETDATE());
    RETURN 
        CASE 
            WHEN @Age < 25 THEN 'Youth'
            WHEN @Age BETWEEN 25 AND 45 THEN 'Adult'
            ELSE 'Senior'
        END
END;
