SELECT
	[Order Details].OrderID,
	SUM(UnitPrice * Quantity) as [Undiscounted Price]
FROM [Order Details]
JOIN Orders
	ON Orders.OrderID = [Order Details].OrderID
GROUP BY [Order Details].OrderID