USE tienda;

create view ventas as select id_usuario, id_producto from compras where fecha >= CURRENT_DATE - INTERVAL 1 MONTH;

create view ventas_cliente as select usuarios.nombre_usuario, compras.fecha from compras

inner join usuarios on compras.id_usuario = usuarios.id_usuario where usuarios.id_usuario = 1;

create view ventas_detalle as 
select compras.fecha, usuarios.nombre_usuario, productos.nombre_producto, productos.precio

from compras

inner join usuarios on compras.id_usuario = usuarios.id_usuario
inner join productos on compras.id_producto = productos.id_producto;
