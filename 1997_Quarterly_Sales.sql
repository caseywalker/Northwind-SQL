SELECT
	SUM(CASE
		WHEN MONTH(OrderDate) = 1
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
		WHEN MONTH(OrderDate) = 2
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
		WHEN MONTH(OrderDate) = 3
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
	ELSE 0
	END
	) AS Q1,
	SUM(CASE
		WHEN MONTH(OrderDate) = 4
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
		WHEN MONTH(OrderDate) = 5
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
		WHEN MONTH(OrderDate) = 6
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
	ELSE 0
	END
	) AS Q2,
	SUM(CASE
		WHEN MONTH(OrderDate) = 7
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
		WHEN MONTH(OrderDate) = 8
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
		WHEN MONTH(OrderDate) = 9
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
	ELSE 0
	END
	) AS Q3,
	SUM(CASE
		WHEN MONTH(OrderDate) = 10
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
		WHEN MONTH(OrderDate) = 11
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
		WHEN MONTH(OrderDate) = 12
		THEN [Order Details].Quantity * ([Order Details].UnitPrice * (1 - [Order Details].Discount))
	ELSE 0
	END
	) AS Q4
FROM [Order Details]
JOIN Orders 
	ON Orders.OrderID = [Order Details].OrderID
WHERE Year(OrderDate) = 1997