CREATE TABLE [staging].[Orders]
(
	[OrderID] [int]  NOT NULL,
	[ProductID] [int]  NOT NULL,
	[CustomerSK] [int] NOT NULL,
	[EmployeeSK] [int] NOT NULL,
	[OrderDateKey] [int] NULL,
	[RequiredDateKey] [int] NULL,
	[ShippedDateKey] [int] NULL,
	[ShipperSK] [int] NOT NULL,	
	[ProductSK] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,	
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
	[Freight] [money] NULL,	
	
)
GO