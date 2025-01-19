use db_store;

-- Insert para la tabla stores
INSERT INTO stores (id, store_name, adress) 
VALUES 
('store_001', 'Tienda Principal', 'Chapalita #1');

-- Insert para la tabla products
INSERT INTO products (id, price, description_product) 
VALUES 
('product_001', 40.00, 'Lata Atun 100 gr '),
('product_002', 25.00, 'Lata Maiz 120 gr '),
('product_003', 50.00, 'Lata Aceitunas 50 gr '),
('product_004', 20.00, 'Lata Chicharo 150 gr ');

-- Insert para la tabla store_products
INSERT INTO store_products (id_store, id_product) 
VALUES 
('store_001', 'product_001');

-- Insert para la tabla schedules
INSERT INTO schedules (id_store, entry_time, out_time) 
VALUES 
('store_001', '2025-01-19 08:00:00', '2025-01-19 17:00:00');

-- Insert para la tabla person
INSERT INTO person (id, f_name, l_name, btd) 
VALUES 
('person_001', 'Pancho', 'León', '18-01-2022');

Select id, f_name
From person;

Select * from person;


-- Insert para la tabla dpto
INSERT INTO dpto (id, dpto_name, id_store) 
VALUES 
('dpto_001', 'Enlatados', 'store_001');

-- Insert para la tabla employee
INSERT INTO employee (id, id_person, id_store, id_dpto, btd) 
VALUES 
('employee_001', 'person_001', 'store_001', 'dpto_001', '18-01-2022');

Select* from dpto