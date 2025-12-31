CREATE TABLE fornecedores (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE clientes_recorrentes (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100),
    total_orders INT
);

CREATE TABLE produtos (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    supplier_id INT,
    unit_price DECIMAL(10,2),
    CONSTRAINT fk_produtos_fornecedor 
        FOREIGN KEY (supplier_id) REFERENCES fornecedores(supplier_id)
);

CREATE TABLE pedidos (
    order_id INT PRIMARY KEY,
    client_id INT,
    product_id INT,
    quantity INT,
    total_value DECIMAL(10,2),
    order_date DATE,
    CONSTRAINT fk_pedidos_cliente 
        FOREIGN KEY (client_id) REFERENCES clientes_recorrentes(client_id),
    CONSTRAINT fk_pedidos_produto 
        FOREIGN KEY (product_id) REFERENCES produtos(product_id)
);