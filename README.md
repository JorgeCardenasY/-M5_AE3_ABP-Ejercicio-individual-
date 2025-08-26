# M5_AE3_ABP-Ejercicio individual

>Desarrollado por Jorge Cárdenas Yañez
>Fecha: 25-08-25

## Objetivos

Practicar queries.
Requerimientos

* Crear el siguiente modelo ERD para una base de datos de clientes y pedidos:

+-------------------+         +-------------------+
|      clientes     |         |      pedidos      |
+-------------------+         +-------------------+
| id (PK)           |         | id (PK)           |
| nombre            |         | cliente_id (FK)   |
| direccion         |         | fecha             |
| telefono          |         | total             |
+-------------------+         +-------------------+

* Inserta al menos cinco nuevos clientes en la tabla "clientes".
* Inserta al menos diez nuevos pedidos en la tabla "pedidos". Asegúrate de asignar correctamente el cliente correspondiente a cada pedido utilizando la columna "cliente_id".
* Proyecta todos los clientes de la tabla "clientes" y sus respectivos pedidos.
* Proyecta todos los pedidos realizados por un cliente específico, utilizando su ID.
* Calcula el total de todos los pedidos para cada cliente.
* Actualiza la dirección de un cliente dado su "id".
* Elimina un cliente específico de la tabla "clientes" y todos sus pedidos asociados de la tabla "pedidos".
* Proyecta los tres clientes que han realizado más pedidos, ordenados de forma descendente por el número de pedidos.
* Entrega un archivo .sql que contenga todas las consultas que ejecutaste en el entorno de trabajo.