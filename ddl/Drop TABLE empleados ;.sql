Drop TABLE empleados ;


Drop TABLE clientes;


Drop TABLE despachadores ;


Drop TABLE categoria  ;


Drop TABLE proveedores  ;


Drop TABLE productos ;

 

Drop TABLE compras ;

 

 


ALTER TABLE productos ADD CONSTRAINT FK_productos__id_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);
ALTER TABLE productos ADD CONSTRAINT FK_productos__id_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor);
ALTER TABLE orden_de_compra ADD CONSTRAINT FK_orden_de_compra__id_producto FOREIGN KEY (id_producto) REFERENCES productos(id_producto);
ALTER TABLE ordenes ADD CONSTRAINT FK_ordenes__id_compra FOREIGN KEY (id_compra) REFERENCES compras(id_compra);
ALTER TABLE ordenes ADD CONSTRAINT FK_ordenes__id_empleado FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado);
ALTER TABLE ordenes ADD CONSTRAINT FK_ordenes__id_despachador FOREIGN KEY (id_despachador) REFERENCES despachadores(id_despachador);