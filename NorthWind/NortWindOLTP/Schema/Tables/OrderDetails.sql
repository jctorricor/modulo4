 CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL CONSTRAINT [FK_Orders_Details] FOREIGN KEY REFERENCES [Orders] ([OrderID]),
	[ProductID] [int] NOT NULL CONSTRAINT [FK_OrdersDetails_Products] FOREIGN KEY REFERENCES [Products] ([ProductID]),
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
	[rowversion] [timestamp] NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC)
)
