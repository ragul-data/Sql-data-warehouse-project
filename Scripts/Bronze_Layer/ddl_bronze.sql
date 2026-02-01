/*============================================================================
  Project      : Data Warehouse ETL
  Layer        : Bronze Layer
  Script Name  : 01_bronze_schema_tables.sql
  Author       : Rahul C
  Description  : Creates Bronze schema and all raw source tables
  Created Date : 2026-02-01
============================================================================*/

USE DataWare_House_ETL;
GO

/*============================================================================
  STEP 1 — Create Bronze Schema
============================================================================*/
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'bronze')
BEGIN
    EXEC('CREATE SCHEMA bronze');
END
GO

/*============================================================================
  STEP 2 — CRM Tables (Source System: CRM)
============================================================================*/

-- Customer Information
IF OBJECT_ID('bronze.crm_cust_info') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
GO

CREATE TABLE bronze.crm_cust_info (
    cst_id              INT,
    cst_key             NVARCHAR(50),
    cst_firstname       NVARCHAR(50),
    cst_lastname        NVARCHAR(50),
    cst_marital_status  NVARCHAR(50),
    cst_gndr            NVARCHAR(50),
    cst_create_date     DATE
);
GO

-- Product Information
IF OBJECT_ID('bronze.crm_prd_info') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
GO

CREATE TABLE bronze.crm_prd_info (
    prd_id      INT,
    prd_key     NVARCHAR(50),
    prd_nm      NVARCHAR(50),
    prd_cost    INT,
    prd_line    NVARCHAR(50),
    prd_start_dt DATE,
    prd_end_dt   DATE
);
GO

-- Sales Details
IF OBJECT_ID('bronze.crm_sales_details') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
GO

CREATE TABLE bronze.crm_sales_details (
    sls_ord_num     NVARCHAR(50),
    sls_prd_key     NVARCHAR(50),
    sls_cust_id     INT,
    sls_order_dt    INT,
    sls_ship_dt     INT,
    sls_due_dt      INT,
    sls_sales       INT,
    sls_quantity    INT,
    sls_price       INT
);
GO

/*============================================================================
  STEP 3 — ERP Tables (Source System: ERP)
============================================================================*/

-- Customer Additional Data
IF OBJECT_ID('bronze.erp_cust_az12') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
GO

CREATE TABLE bronze.erp_cust_az12 (
    CID     NVARCHAR(50),
    BDATE   DATE,
    GEN     NVARCHAR(50)
);
GO

-- Customer Location
IF OBJECT_ID('bronze.erp_loc_a101') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
GO

CREATE TABLE bronze.erp_loc_a101 (
    CID     NVARCHAR(50),
    CNTRY   NVARCHAR(50)
);
GO

-- Product Category
IF OBJECT_ID('bronze.erp_px_cat_giv2') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_giv2;
GO

CREATE TABLE bronze.erp_px_cat_giv2 (
    ID           NVARCHAR(50),
    CAT          NVARCHAR(50),
    SUBCAT       NVARCHAR(50),
    MAINTENANCE  NVARCHAR(50)
);
GO

/*============================================================================
  VERIFICATION — Check Table Structures
============================================================================*/
-- Use this to view table metadata
-- EXEC sp_help 'bronze.crm_cust_info';
-- EXEC sp_help 'bronze.crm_prd_info';
-- EXEC sp_help 'bronze.crm_sales_details';

