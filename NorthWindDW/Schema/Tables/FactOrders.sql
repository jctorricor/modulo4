CREATE TABLE [dbo].[FactOrders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerSK] [int] NOT NULL CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerSK]) REFERENCES [dbo].[DimCustomers] ([CustomerSK]),
	[EmployeeSK] [int] NOT NULL CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeSK]) REFERENCES [dbo].[DimEmployees] ([EmployeeSK]),
	[OrderDateSK] [int] NOT NULL CONSTRAINT [FK_Orders_OrderDate] FOREIGN KEY([OrderDateSK]) REFERENCES [dbo].[DimDate] ([DateKey]),
	[RequiredDateSK] [int] NOT NULL CONSTRAINT [FK_Orders_[RequiredDate] FOREIGN KEY(RequiredDateSK) REFERENCES [dbo].[DimDate] ([DateKey]),
	[ShippedDateSK] [int] NOT NULL CONSTRAINT [FK_Orders_ShippedDate] FOREIGN KEY([ShippedDateSK]) REFERENCES [dbo].[DimDate] ([DateKey]),
	--[ShipperSK] [int] NOT NULL CONSTRAINT [FK_Orders_Shipper] FOREIGN KEY(ShipperSK) REFERENCES [dbo].[DimShippers] ([ShipperSK]),	
	[ProductSK] [int] NOT NULL CONSTRAINT [FK_Orders_Product] FOREIGN KEY(ProductSK) REFERENCES [dbo].[DimProducts] ([ProductSK]),
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
	[Freight] [money] NULL 
)
GO