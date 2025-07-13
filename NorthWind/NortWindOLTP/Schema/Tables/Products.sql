CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[SupplierID] [int] CONSTRAINT fk_products_supplier FOREIGN KEY REFERENCES [Suppliers] ([SupplierID]),
	[CategoryID] [int] CONSTRAINT fk_products_categories FOREIGN KEY REFERENCES [Categories] ([CategoryID]),
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL,
	[rowversion] [timestamp] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC))