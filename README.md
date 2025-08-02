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

## Modelo Dimensional - NorthWind
<img width="698" height="774" alt="image" src="https://github.com/user-attachments/assets/3ac32474-55c6-4df6-b0bb-3b96d199d3d8" />

## Reportes de Business Intelligence

Este proyecto, presenta un dashboard interactivo de Power BI responde a los siguientes requerimientos estratégicos:

### Sales Performance
Gerencia desea analizar el rendimiento de ventas por sucursal durante las gestiones 2016 y 2017, con el objetivo de identificar patrones de crecimiento o caída en el volumen de ventas.
<img width="2577" height="1180" alt="image" src="https://github.com/user-attachments/assets/6cc95ec5-50e0-443f-a850-c4f18bf35abb" />


### Product Performance
Gerencia requiere una visualización que visibilice los productos con mayor demanda, permitiendole ajustar su disponibilidad en stock y optimizar la logística de inventarios.

<img width="600" height="800" alt="image" src="https://github.com/user-attachments/assets/ff6d2c77-a8f1-4870-9bcf-a2360bf05086" />


### Staff Review
El departamento de Recursos Humanos necesita evaluar el desempeño de los empleados de forma objetiva, visualizando las ventas que generan.
<img width="2060" height="981" alt="image" src="https://github.com/user-attachments/assets/7ffc7dce-08b5-4ecb-9da6-cbcfedbe3077" />

### Customer Preference
El equipo de marketing desea conocer la recurrencia de compras de clientes por sucursal a lo largo de la gestión, con el propósito de gestionar campañas.
<img width="2616" height="1480" alt="image" src="https://github.com/user-attachments/assets/68d08006-5371-4b25-8eb4-91b64e896db6" />


## Proceso ETL

1. **Extracción** de datos desde la base `NorthWind`
2. **Transformación** y mapeo a formato de Data Warehouse
3. **Carga** en tablas dimensionales y tabla de hechos

<img width="600" height="800" alt="image" src="https://github.com/user-attachments/assets/13655aaa-f487-417a-9ea3-c491953f0707" />


## Instrucciones para ejecución local

1. Restaurar base de datos OLTP en SQL Server:
   - Restaurar el archivo de base de datos `NorthWind.bak`
2. Abrir `NorthWind.sln` en Visual Studio 2022
3. Compilar y Publicar el proyecto `NorthWind`
4. Crear base de datos NorthWindDW en SQL Server
5. Compilar y publicar desde `NorthWindDW.sqlproj`
6. Ejecutar paquetes ETL:
   - Abrir `RunETL.dtsx` y presionar **Iniciar depuración**
7. Visualizar el reporte en PowerBI:
   - Abrir el archivo `NorthWind.pbix`

## Autores
* Juan Carlos Torrico Rios  
* Carlos Marcelo Cruz Cruz  
* Rene Guillermo Pacheco Camacho
* Christian Marcelo Tola Pacheco  
* Pablo Baldiviezo Colque
