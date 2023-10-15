-- Хаб "Поставщики"
CREATE TABLE Suppliers_Hub (
    hub_id serial PRIMARY KEY,
    supplier_id INT NOT NULL
);

-- Хаб "Продукты"
CREATE TABLE Products_Hub (
    hub_id serial PRIMARY KEY,
    product_id INT NOT NULL
);

-- Связь "Заявки на поставку"
CREATE TABLE PurchaseOrders_Link (
    link_id serial PRIMARY KEY,
    order_id INT NOT NULL,
    supplier_id INT NOT NULL,
    order_date DATE NOT NULL
);

-- Связь "Состав заявки на поставку"
CREATE TABLE PurchaseOrderItems_Link (
    link_id serial PRIMARY KEY,
    order_item_id INT NOT NULL,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);

-- Структура для хаба "Поставщики"
CREATE TABLE Suppliers_Satellite (
    hub_id INT NOT NULL,
    satellite_data_type VARCHAR(50) NOT NULL,
    satellite_data_value TEXT,
    load_date TIMESTAMP DEFAULT current_timestamp,
    record_source VARCHAR(255) 

-- Структура для хаба "Продукты"
CREATE TABLE Products_Satellite (
    hub_id INT NOT NULL,
    satellite_data_type VARCHAR(50) NOT NULL,
    satellite_data_value TEXT,
    load_date TIMESTAMP DEFAULT current_timestamp, 
    record_source VARCHAR(255)
);

-- Структура для связи "Заявки на поставку"
CREATE TABLE PurchaseOrders_Satellite (
    link_id INT NOT NULL,
    satellite_data_type VARCHAR(50) NOT NULL,
    satellite_data_value TEXT,
    load_date TIMESTAMP DEFAULT current_timestamp,
    record_source VARCHAR(255)
);

-- Структура для связи "Состав заявки на поставку"
CREATE TABLE PurchaseOrderItems_Satellite (
    link_id INT NOT NULL,
    satellite_data_type VARCHAR(50) NOT NULL,
    satellite_data_value TEXT,
    load_date TIMESTAMP DEFAULT current_timestamp,
    record_source VARCHAR(255)
);
