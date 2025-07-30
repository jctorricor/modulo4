CREATE PROCEDURE [dbo].[DW_MergeFactOrders]
AS
BEGIN

	UPDATE dc
	SET [OrderDateKey]    = sc.[OrderDateKey]
	   ,[RequiredDateKey] = sc.[RequiredDateKey]
	   ,[ShippedDateKey]  = sc.[ShippedDateKey]
       ,[CustomerSK]      = sc.[CustomerSK]
	   ,[ShipperSK]         = sc.[ShipperSK]
	   ,[ProductSK]       = sc.[ProductSK]
	   ,[Quantity]        = sc.[Quantity]
	   ,[Discount]        = sc.[Discount]
	   ,[Freight]         = sc.[Freight]
	   ,[OrderDate]       = sc.[OrderDate] 
	   ,[RequiredDate]    = sc.[RequiredDate]
	   ,[ShippedDate]     = sc.[ShippedDate]
	   ,[UnitPrice]	      = sc.[UnitPrice]
	FROM [dbo].[FactOrders]         dc
	INNER JOIN [staging].[Orders] sc ON (dc.[OrderID] = sc.[OrderID] AND dc.ProductID = sc.[ProductID])
END
GO

    
