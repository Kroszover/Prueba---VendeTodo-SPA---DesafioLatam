SELECT * FROM empleados ;


SELECT * FROM clientes;


SELECT * FROM despachadores ;


SELECT * FROM categoria  ;


SELECT * FROM proveedores  ;


SELECT * FROM productos ;

 

SELECT * FROM compras ;

 

 


ALTER * FROM productos ADD CONSTRAINT FK_productos__id_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);
ALTER * FROM productos ADD CONSTRAINT FK_productos__id_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor);
ALTER * FROM orden_de_compra ADD CONSTRAINT FK_orden_de_compra__id_producto FOREIGN KEY (id_producto) REFERENCES productos(id_producto);
ALTER * FROM ordenes ADD CONSTRAINT FK_ordenes__id_compra FOREIGN KEY (id_compra) REFERENCES compras(id_compra);
ALTER * FROM ordenes ADD CONSTRAINT FK_ordenes__id_empleado FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado);
ALTER * FROM ordenes ADD CONSTRAINT FK_ordenes__id_despachador FOREIGN KEY (id_despachador) REFERENCES despachadores(id_despachador);