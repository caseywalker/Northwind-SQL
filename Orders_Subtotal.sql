SELECT OrderID,
	SUM(UnitPrice * Quantity) as [Undiscounted Price],
	SUM(CASE 
			WHEN Discount <> 0
				THEN (UnitPrice * Quantity) * DISCOUNT
				ELSE 0
			END
	) as Discount,
	SUM(UnitPrice * Quantity) - SUM(CASE 
			WHEN Discount <> 0
				THEN (UnitPrice * Quantity) * DISCOUNT
				ELSE 0
			END
	) as Subtotal
FROM [Order Details]
GROUP BY OrderID