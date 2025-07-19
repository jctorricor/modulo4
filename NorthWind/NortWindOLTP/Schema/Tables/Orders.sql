CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nchar](5) NULL CONSTRAINT [FK_Orders_Customers] FOREIGN KEY REFERENCES [Customers] ([CustomerID]),
	[EmployeeID] [int] NULL CONSTRAINT [FK_Orders_Employees] FOREIGN KEY REFERENCES [Employees] ([EmployeeID]),	
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY REFERENCES [Shippers] ([ShipperID]),
	[Freight] [money] NULL,
	[ShipName] [nvarchar](40) NULL,
	[ShipAddress] [nvarchar](60) NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipRegion] [nvarchar](15) NULL,
	[ShipPostalCode] [nvarchar](10) NULL,
	[ShipCountry] [nvarchar](15) NULL,
	[rowversion] [timestamp] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC))