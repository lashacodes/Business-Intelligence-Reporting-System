INSERT INTO Customers (FullName, Email, DateOfBirth)
VALUES 
('Nino Beridze', 'nino@example.com', '1990-05-15'),
('Giorgi Tsiklauri', 'giorgi@example.com', '1985-11-02');

INSERT INTO Sales (CustomerID, Amount, SaleDate)
VALUES
(1, 250.00, '2024-06-01'),
(2, 150.50, '2024-06-02'),
(1, 320.00, '2024-06-03');
