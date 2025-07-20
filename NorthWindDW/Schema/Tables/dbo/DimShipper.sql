CREATE TABLE [dbo].[DimShipper]
(
	[ShipperSK] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimShipper PRIMARY KEY,
    [ShipperID] [int] NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](24) NULL,
)

GO
