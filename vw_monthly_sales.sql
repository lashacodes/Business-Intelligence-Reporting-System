CREATE VIEW vw_monthly_sales AS
SELECT 
    FORMAT(SaleDate, 'yyyy-MM') AS Month,
    SUM(Amount) AS TotalSales
FROM Sales
GROUP BY FORMAT(SaleDate, 'yyyy-MM');
