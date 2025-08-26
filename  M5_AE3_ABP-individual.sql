-- creación de la DDBB y tablas
DROP DATABASE IF EXISTS tiendita_db;
CREATE DATABASE tiendita_db;

use tiendita_db;

CREATE TABLE clientes
(
    cliente_id INT NOT NULL AUTO_INCREMENT,
    nombre     VARCHAR(250) NOT NULL,
    direccion  VARCHAR(250) NOT NULL,
    telefono   VARCHAR(15) NULL,
    PRIMARY KEY (cliente_id)
);

CREATE TABLE pedidos
(
    pedido_id  INT NOT NULL AUTO_INCREMENT,
    fecha      DATE NOT NULL,
    total      DOUBLE NULL,
    cliente_id INT NOT NULL,
    PRIMARY KEY (pedido_id)
);

ALTER TABLE pedidos
    ADD CONSTRAINT FK_clientes_TO_pedidos
        FOREIGN KEY (cliente_id)
        REFERENCES clientes (cliente_id);

-- RESOLUCIÓN DE EJERCICIOS:

use tiendita_db;
-- 1.-
INSERT INTO clientes (nombre, direccion, telefono) VALUES
('Bill Gates', 'Calle Contoso 123', '987654321'),
('Steve Jobs', 'Avenida Dax  742', '918273645'),
('Richard Stallman', 'Plaza PIVOT 10', '9911223344'),
('Linus Torvalds', 'Calle Linux 456', '9988776655'),
('Steve Wozniak', 'Avenida Apple 1', '912345678'),
('Saint Ignucius', 'Boulevard Central 456', NULL);

-- 2.-

INSERT INTO pedidos (fecha, total, cliente_id) VALUES
('2022-01-01', 100, 1),
('2022-01-02', 200, 5),
('2022-01-03', 300, 3),
('2022-01-04', 400, 4),
('2022-01-05', 500, 5),
('2022-01-06', 600, 6),
('2022-01-07', 700, 1),
('2022-01-08', 800, 5),
('2022-01-09', 900, 3),
('2022-01-10', 1000, 4),
('2022-01-11', 1100, 5),
('2022-01-07', 700, 1),
('2022-01-08', 800,1),
('2022-01-09', 900, 5),
('2022-01-10', 1000, 2),
('2022-01-07', 700, 1),
('2022-01-08', 800, 2),
('2022-01-09', 900, 3),
('2022-01-10', 1000, 4),
('2022-01-07', 700, 4),
('2022-01-08', 800, 4),
('2022-01-09', 900, 4),
('2022-01-10', 1000, 4),
('2022-01-12', 1200, 6),
('2022-01-09', 1200, 6),
('2022-01-09', 1200, 6),
('2022-01-09', 1900, 6),
('2022-01-09', 3900, 6),
('2022-01-09', 4900, 6),
('2022-01-10', 1000, 5),
('2022-01-10', 1000, 5),
('2022-01-10', 1000, 5),
('2022-01-10', 1000, 6),
('2022-01-10', 1000, 4),
('2022-01-10', 1000, 5),
('2022-01-10', 1000, 5),
('2022-01-10', 1000, 6),
('2022-01-10', 1000, 4),
('2022-01-10', 1000, 5),
('2022-01-12', 1200, 5);

-- 3.-
SELECT c.nombre, p.pedido_id
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.nombre, p.pedido_id
ORDER BY p.pedido_id DESC;

-- 4.-
SELECT c.cliente_id, c.nombre, p.pedido_id, p.total
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
where c.cliente_id = 4;

-- 5.-
SELECT c.cliente_id, c.nombre, COUNT(p.pedido_id) AS N_pedidos, SUM(p.total) AS TotalPedidos
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id, c.nombre;

-- 6.-
UPDATE clientes
SET clientes.direccion = 'Error de Redundancia Cíclica 255'
WHERE clientes.cliente_id = 1;

select * from pedidos;

-- 7.-
DELETE FROM pedidos 
WHERE pedidos.cliente_id = 1;

DELETE FROM clientes
WHERE clientes.cliente_id = 1;
select * from pedidos;
select * from clientes;


-- 8.-
SELECT c.cliente_id, c.nombre, COUNT(p.pedido_id) AS N_pedidos, SUM(p.total) AS TotalPedidos
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id, c.nombre
ORDER BY N_pedidos DESC
LIMIT 3;


-- Gracias por todo, le había hecho el quite a aprender SQL y Ustedes lo han facilitado mucho.
-- eof --