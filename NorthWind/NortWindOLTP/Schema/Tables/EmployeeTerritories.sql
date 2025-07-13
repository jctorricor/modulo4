
CREATE TABLE [dbo].[EmployeeTerritories](
	[EmployeeID] [int] NOT NULL CONSTRAINT FK_EmployeeTerritories_Employees FOREIGN KEY REFERENCES [Employees] ([EmployeeID]),
	[TerritoryID] [nvarchar](20) NOT NULL CONSTRAINT FK_EmployeeTerritories_Territories FOREIGN KEY REFERENCES [Territories] ([TerritoryID]),
	[rowversion] [timestamp] NULL,
 CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY NONCLUSTERED 
(
	[EmployeeID] ASC,
	[TerritoryID] ASC

)
)
