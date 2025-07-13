CREATE TABLE [dbo].[CustomerCustomerDemo](
	[CustomerID] [nchar](5) NOT NULL CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY REFERENCES [Customers] ([CustomerID]),
	[CustomerTypeID] [nchar](10) NOT NULL CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY REFERENCES [CustomerDemographics] ([CustomerTypeID]),	
	[rowversion] [timestamp] NULL,
 CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY NONCLUSTERED 
(
	[CustomerID] ASC,
	[CustomerTypeID] ASC))