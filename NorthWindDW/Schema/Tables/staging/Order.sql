CREATE TABLE [staging].[Orders]
(
	[OrderID] [int]  NOT NULL,
	[ProductID] [int]  NOT NULL,
	[CustomerSK] [int] NOT NULL,
	[EmployeeSK] [int] NOT NULL,
	[OrderDateKey] [int] NOT NULL,
	[RequiredDateKey] [int] NOT NULL,
	[ShippedDateKey] [int] NOT NULL,
	[ShipperSK] [int] NOT NULL,	
	[ProductSK] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
	[Freight] [money] NULL,	
	
)
GO