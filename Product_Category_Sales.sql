SELECT 
	[Order Details].ProductId,
	Products.ProductName,
	SUM([Order Details].UnitPrice * Quantity) - SUM(CASE 
			WHEN Discount <> 0
				THEN ([Order Details].UnitPrice  * Quantity) * DISCOUNT
				ELSE 0
			END
	) as Subtotal,
	SUM(Quantity) AS TotalUnitsSold
FROM [Order Details]
JOIN Products
	ON Products.ProductID = [Order Details].ProductID
JOIN Categories
	ON Categories.CategoryID = Products.CategoryID
GROUP BY [Order Details].ProductId, Products.ProductName
