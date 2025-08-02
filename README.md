# MODULO 4
# NorthWind Business Intelligence Project

Este proyecto presenta una solución de inteligencia de negocios (BI) en base al modelo de datos NorthWind.

La estructura del proyecto contiene:
- **Data Warehouse (DW):** Estructurado
- **ETL:** Incluye Integration Services (SSIS)
- **Modelo multidimensional OLAP:** Incluye Analysis Services (SSAS)
- **Dashboard interactivo:** Para la exploración y análisis de datos de ventas, productos, clientes y empleados


## Tecnologías utilizadas

- Microsoft SQL Server Management Studio (SSMS) v21.4.8
- Microsoft SQL Server (OLTP y DW)
- SQL Server Integration Services (SSIS)
- SQL Server Analysis Services (SSAS)
- Microsoft Power BI Desktop
- Microsoft Visual Studio 2022 Community v17.14.8
- SQL Server Data Tools (SSDT)

## Estructura del Proyecto

NorthWind Business Intelligence Project  
├── .gitignore  
├── NorthWind  # Estructuración de la solución  
│   ├── NorthWindOLTP  
│   │   ├── Schema  
│   │   │   ├── Programmability  
│   │   │   │   └── Stored Procedures  
│   │   │   │       ├── GetCustomerChangesByRowVersion.sql  
│   │   │   │       ├── GetDatabaseRowVersion.sql  
│   │   │   │       ├── GetEmployeeChangesByRowVersion.sql  
│   │   │   │       ├── GetOrdersChangesByRowVersion.sql  
│   │   │   │       ├── GetProductChangesByRowVersion.sql  
│   │   │   │       └── GetShipperChangesByRowVersion.sql  
│   │   │   └── Tables  
│   │   │       ├── Categories.sql  
│   │   │       ├── CustomerCustomerDemo.sql  
│   │   │       ├── CustomerDemographics.sql  
│   │   │       ├── Customers.sql  
│   │   │       ├── EmployeeTerritories.sql  
│   │   │       ├── Employees.sql  
│   │   │       ├── OrderDetails.sql  
│   │   │       ├── Orders.sql  
│   │   │       ├── Products.sql  
│   │   │       ├── Region.sql  
│   │   │       ├── Shippers.sql  
│   │   │       ├── Suppliers.sql  
│   │   │       └── Territories.sql  
│   ├── NorthWind.sln  
│   └── NorthWind.sqlproj  
├── NorthWindDW  # Data Warehouse de SQL Server  
│   ├── NorthWindDW.sqlproj  
│   ├── Schema  
│   │   ├── Programmability  
│   │   │   └── Stored Procedures  
│   │   │       ├── DW_MergeDimCustomer.sql  
│   │   │       ├── DW_MergeDimEmployee.sql  
│   │   │       ├── DW_MergeDimProduct.sql  
│   │   │       ├── DW_MergeDimShipper.sql  
│   │   │       ├── DW_MergeFactOrders.sql  
│   │   │       ├── GetLastPackageRowVersion.sql  
│   │   │       └── UpdateLastPackageRowVersion.sql  
│   │   └── Security  
│   │       └── schemas  
│   │           └── staging.sql  
│   └── Scripts  # Scripts de carga de datos  
│       ├── DimDate.data.sql  
│       ├── PackageConfig.data.sql  
│       ├── PatchDimDate.data.sql  
│       ├── Script.PostDeployment.sql  
│       └── FactOrders.sql  
├── NorthwindETL  # Contiene los paquetes SSIS (.dtsx)  
│   ├── DimCustomer.dtsx  
│   ├── DimEmployee.dtsx  
│   ├── DimProduct.dtsx  
│   ├── DimShipper.dtsx  
│   ├── FactOrders.dtsx  
│   └── RunETL.dtsx  
├── NorthwindOLAP  # Contiene el modelo OLAP (.bim)  
│   └── NorthwindCube.bim  
├── PowerBI/  # Reporte de visualización interactiva (.pbix)  
│   └── NorthWind.pbix  
└── README.md


## Tablas en el Data Warehouse

| Tabla          | Tipo        | Descripción                                             |
|----------------|-------------|---------------------------------------------------------|
| DimCustomer    | Dimensión   | Información detallada de clientes                       |
| DimEmployee    | Dimensión   | Información de empleados                                |
| DimProduct     | Dimensión   | Catálogo de productos                                   |
| DimShipper     | Dimensión   | Compañías de envío                                      |
| DimDate        | Dimensión   | Calendario detallado con claves de fecha                |
| FactOrders     | Hechos      | Ventas realizadas con claves foráneas a las dimensiones |
| PackageConfig  | Config      | Gestión de versiones para control incremental           |


## Reportes de Business Intelligence

Este proyecto, presenta un dashboard interactivo de Power BI responde a los siguientes requerimientos estratégicos:

### Sales Performance
Gerencia desea analizar el rendimiento de ventas por sucursal durante las gestiones 2016 y 2017, con el objetivo de identificar patrones de crecimiento o caída en el volumen de ventas.

### Product Performance
Gerencia requiere una visualización que visibilice los productos con mayor demanda, permitiendole ajustar su disponibilidad en stock y optimizar la logística de inventarios.

### Staff Review
El departamento de Recursos Humanos necesita evaluar el desempeño de los empleados de forma objetiva, visualizando las ventas que generan.

### Customer Preference
El equipo de marketing desea conocer la recurrencia de compras de clientes por sucursal a lo largo de la gestión, con el propósito de gestionar campañas.


## Proceso ETL

1. **Extracción** de datos desde la base `NorthWind`
2. **Transformación** y mapeo a formato de Data Warehouse
3. **Carga** en tablas dimensionales y tabla de hechos

## Instrucciones para ejecución local

1. Abrir `NorthWind.sln` en Visual Studio 2022
2. Restaurar base de datos OLTP:
   - Ejecutar los scripts de la carpeta `NorthWindOLTP/Schema/Tables`
3. Crear base de datos DW:
   - Compilar y publicar desde `NorthWindDW.sqlproj`
4. Ejecutar scripts:
   - `Scripts/DimDate.data.sql`
   - `Scripts/PackageConfig.data.sql`
5. Ejecutar paquetes ETL:
   - Abrir `RunETL.dtsx` y presionar **Iniciar depuración**
6. Visualizar el reporte en:
   - `NorthWind.pbix`

## Autores

## Autores

Juan Carlos Torrico Rios  
Carlos Marcelo Cruz Cruz  
Rene Pacheco  
Christian Marcelo Tola Pacheco  
Pablo Baldiviezo Colque
