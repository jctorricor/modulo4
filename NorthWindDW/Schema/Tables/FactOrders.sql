CREATE TABLE [dbo].[FactOrders](
	[OrderID] [int]  NOT NULL,
	[ProductID] [int]  NOT NULL,
	[CustomerSK] [int] NOT NULL CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerSK]) REFERENCES [dbo].[DimCustomers] ([CustomerSK]),
	[EmployeeSK] [int] NOT NULL CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeSK]) REFERENCES [dbo].[DimEmployees] ([EmployeeSK]),
	[OrderDateKey] [int] NOT NULL CONSTRAINT [FK_Orders_OrderDate] FOREIGN KEY([OrderDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
	[RequiredDateKey] [int] NOT NULL CONSTRAINT [FK_Orders_[RequiredDate] FOREIGN KEY(RequiredDateKey) REFERENCES [dbo].[DimDate] ([DateKey]),
	[ShippedDateKey] [int] NOT NULL CONSTRAINT [FK_Orders_ShippedDate] FOREIGN KEY([ShippedDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
	--[ShipperSK] [int] NOT NULL CONSTRAINT [FK_Orders_Shipper] FOREIGN KEY(ShipperSK) REFERENCES [dbo].[DimShippers] ([ShipperSK]),	
	[ProductSK] [int] NOT NULL CONSTRAINT [FK_Orders_Product] FOREIGN KEY(ProductSK) REFERENCES [dbo].[DimProducts] ([ProductSK]),
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
	[Freight] [money] NULL,	
	CONSTRAINT PK_FactOrders PRIMARY KEY(OrderID,ProductID)
)
GO