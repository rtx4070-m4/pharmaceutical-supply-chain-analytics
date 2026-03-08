
-- Pharmaceutical Supply Chain Database Schema

CREATE DATABASE pharma_supply_chain;

USE pharma_supply_chain;

-- Suppliers Table
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_type VARCHAR(100) NOT NULL,
    manufacturing_site VARCHAR(100)
);

-- Warehouses Table
CREATE TABLE warehouses (
    warehouse_id INT PRIMARY KEY AUTO_INCREMENT,
    warehouse_location VARCHAR(100)
);

-- Transport Modes Table
CREATE TABLE transport_modes (
    transport_id INT PRIMARY KEY AUTO_INCREMENT,
    transport_mode VARCHAR(50)
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    supplier_id INT,
    product_id INT,
    warehouse_id INT,
    transport_id INT,
    order_quantity INT,
    inventory_level INT,
    price_per_unit DECIMAL(10,2),
    order_date DATE,
    delivery_date DATE,
    lead_time_days INT,

    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id),
    FOREIGN KEY (transport_id) REFERENCES transport_modes(transport_id)
);
