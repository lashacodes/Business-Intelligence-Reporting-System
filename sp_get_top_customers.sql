CREATE PROCEDURE sp_get_top_customers
    @TopN INT = 5
AS
BEGIN
    SELECT TOP(@TopN) c.FullName, SUM(s.Amount) AS TotalSpent
    FROM Customers c
    JOIN Sales s ON c.CustomerID = s.CustomerID
    GROUP BY c.FullName
    ORDER BY TotalSpent DESC;
END;
