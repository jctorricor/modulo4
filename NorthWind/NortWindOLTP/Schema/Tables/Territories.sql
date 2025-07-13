﻿CREATE TABLE [dbo].[Territories](
	[TerritoryID] [nvarchar](20) NOT NULL,
	[TerritoryDescription] [nchar](50) NOT NULL,
	[RegionID] [int] NOT NULL CONSTRAINT FK_Territories_Region FOREIGN KEY REFERENCES [Region]([RegionID]),
	[rowversion] [timestamp] NULL,
 CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED 
(
	[TerritoryID] ASC))