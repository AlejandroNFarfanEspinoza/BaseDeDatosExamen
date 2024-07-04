drop database Ventaropa;

create database Ventaropa;

use Ventaropa;
-- tables
-- Table: categories
CREATE TABLE categories (
    id int  NOT NULL,
    name varchar(200)  NOT NULL,
    description longtext  NOT NULL,
    CONSTRAINT categorias_pk PRIMARY KEY (id)
) COMMENT 'aca estaran los productos segun su categoria';

-- Table: customer
CREATE TABLE customer (
    DNI char(8)  NOT NULL,
    name varchar(250)  NOT NULL,
    address text  NOT NULL,
    phone char(9)  NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (DNI)
) COMMENT 'Aca estaran los datos del cliente';

-- Table: product
CREATE TABLE product (
    Id int  NOT NULL,
    name varchar(200)  NOT NULL,
    price int  NOT NULL,
    stock char(20)  NOT NULL,
    supplier_RUC char(10)  NOT NULL,
    categories_id int  NOT NULL,
    CONSTRAINT producto_pk PRIMARY KEY (Id)
) COMMENT 'datos del producto';

-- Table: sale
CREATE TABLE sale (
    id int  NOT NULL,
    date date  NOT NULL,
    customer_DNI char(8)  NOT NULL,
    product_Id int  NOT NULL,
    CONSTRAINT venta_pk PRIMARY KEY (id)
) COMMENT 'aca estaran los datos de una venta';

-- Table: supplier
CREATE TABLE supplier (
    RUC char(10)  NOT NULL,
    name varchar(250)  NOT NULL,
    address text  NOT NULL,
    phone char(9)  NOT NULL,
    Webpage int  NOT NULL,
    CONSTRAINT proveedor_pk PRIMARY KEY (RUC)
) COMMENT 'Aca estaran los datos del proveedor';

-- foreign keys
-- Reference: product_categories (table: product)
ALTER TABLE product ADD CONSTRAINT product_categories FOREIGN KEY product_categories (categories_id)
    REFERENCES categories (id);

-- Reference: product_supplier (table: product)
ALTER TABLE product ADD CONSTRAINT product_supplier FOREIGN KEY product_supplier (supplier_RUC)
    REFERENCES supplier (RUC);

-- Reference: sale_customer (table: sale)
ALTER TABLE sale ADD CONSTRAINT sale_customer FOREIGN KEY sale_customer (customer_DNI)
    REFERENCES customer (DNI);

-- Reference: sale_product (table: sale)
ALTER TABLE sale ADD CONSTRAINT sale_product FOREIGN KEY sale_product (product_Id)
    REFERENCES product (Id);

-- End of file.

