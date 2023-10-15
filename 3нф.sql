-- Создание таблицы "Поставщики"
CREATE TABLE Suppliers (
    supplier_id serial PRIMARY KEY,
    supplier_name VARCHAR(255) NOT NULL,
    supplier_contact VARCHAR(255)
);

-- Создание таблицы "Продукты"
CREATE TABLE Products (
    product_id serial PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    product_description TEXT
);

-- Создание таблицы "Заявки на поставку"
CREATE TABLE PurchaseOrders (
    order_id serial PRIMARY KEY,
    supplier_id INT REFERENCES Suppliers(supplier_id),
    order_date DATE NOT NULL
);

-- Создание таблицы "Состав заявки на поставку"
CREATE TABLE PurchaseOrderItems (
    order_item_id serial PRIMARY KEY,
    order_id INT REFERENCES PurchaseOrders(order_id),
    product_id INT REFERENCES Products(product_id),
    quantity INT NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);
