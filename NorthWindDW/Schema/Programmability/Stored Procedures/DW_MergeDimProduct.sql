CREATE PROCEDURE [dbo].[DW_MergeDimProduct]
AS
BEGIN

	UPDATE dp
	SET 
	    [ProductID]      = sp.[ProductID],
        [ProductName]    = sp.[ProductName],
        [QuantityPerUnit]= sp.[QuantityPerUnit],
        [UnitPrice]      = sp.[UnitPrice],
        [UnitsInStock]   = sp.[UnitsInStock],
        [UnitsOnOrder]   = sp.[UnitsOnOrder],
        [ReorderLevel]   = sp.[ReorderLevel],
        [Discontinued]   = sp.[Discontinued],
        [CategoryName]   = sp.[CategoryName],
        [Description]    = sp.[Description],
        [Picture]        = sp.[Picture],
        [CompanyName]    = sp.[CompanyName],
        [ContactName]    = sp.[ContactName],
        [ContactTitle]   = sp.[ContactTitle],
        [Address]        = sp.[Address],
        [City]           = sp.[City],
        [Region]         = sp.[Region],
        [PostalCode]     = sp.[PostalCode],
        [Country]        = sp.[Country],
        [Phone]          = sp.[Phone],
        [Fax]            = sp.[Fax],
        [HomePage]       = sp.[HomePage]
	FROM [dbo].[DimProduct] dp
    INNER JOIN [staging].[Product] sp ON dp.[ProductSK] = sp.[ProductSK];
END
GO