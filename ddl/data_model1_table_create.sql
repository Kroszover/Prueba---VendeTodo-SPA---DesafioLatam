CREATE TABLE empleados (
    id_empleado numeric(10) NOT NULL,
    nombre varchar(15) NOT NULL,
    apellido varchar(15) NOT NULL,
    fecha_nacimiento date NOT NULL,
    direccion varchar(50) NOT NULL,
    region varchar(50) NOT NULL,
    ciudad varchar(50) NOT NULL,
    pais varchar(20) NOT NULL,
    telefono numeric(30) NOT NULL,
    cargo varchar(50) NOT NULL,
    PRIMARY KEY (id_empleado)
);


CREATE TABLE clientes (
    id_cliente numeric(10) NOT NULL,
    nombre_empresa varchar(50) NOT NULL,
    nombre_contacto varchar(50) NOT NULL,
    email varchar(30) NOT NULL,
    direccion varchar(30) NOT NULL,
    region varchar(25) NOT NULL,
    ciudad varchar(30) NOT NULL,
    pais varchar(30) NOT NULL,
    codigo_postal numeric(30) NOT NULL,
    telefono numeric(30) NOT NULL,
    PRIMARY KEY (id_cliente)
);


CREATE TABLE despachadores (
    id_despachador numeric NOT NULL,
    nombre varchar(40) NOT NULL,
    telefono_empresa numeric(30) NOT NULL,
    PRIMARY KEY (id_despachador)
);


CREATE TABLE categoria (
    id_categoria numeric NOT NULL,
    nombre_categoria varchar(50) NOT NULL,
    PRIMARY KEY (id_categoria)
);


CREATE TABLE proveedores (
    id_proveedor numeric(30) NOT NULL,
    nombre_compania varchar(50) NOT NULL,
    nombre_contacto varchar(50) NOT NULL,
    direccion varchar(50) NOT NULL,
    region varchar(50) NOT NULL,
    ciudad varchar(50) NOT NULL,
    telefono numeric(30) NOT NULL,
    PRIMARY KEY (id_proveedor)
);


CREATE TABLE productos (
    id_producto numeric(30) NOT NULL,
    precio integer NOT NULL,
    stock numeric(30) NOT NULL,
    descontinuado varchar(15) NOT NULL,
    id_categoria numeric(30) NOT NULL,
    id_proveedor numeric(30) NOT NULL,
    PRIMARY KEY (id_producto)
);

CREATE TABLE compras (
    id_compra numeric(30) NOT NULL,
    valor_compra integer NOT NULL,
    cantidad_productos numeric(30) NOT NULL,
    descuentos integer NOT NULL,
    PRIMARY KEY (id_compra)
);


CREATE TABLE orden_de_compra (
    cantidad numeric(30) NOT NULL,
    id_producto numeric(30) NOT NULL,
    id_orden numeric(30) NOT NULL
);



CREATE TABLE ordenes (
    id_orden numeric(30) NOT NULL,
    fecha_requerimiento date NOT NULL,
    fecha_envio date NOT NULL,
    nombre_receptor varchar(30) NOT NULL,
    direccion varchar(50) NOT NULL,
    codigo_postal numeric(30) NOT NULL,
    ciudad varchar(30) NOT NULL,
    region varchar(30) NOT NULL,
    pais varchar(30) NOT NULL,
    metodo_envio varchar(30) NOT NULL,
    id_compra numeric(30) NOT NULL,
    id_empleado numeric(30) NOT NULL,
    id_cliente numeric(30) NOT NULL,
    id_despachador numeric(30) NOT NULL,
    PRIMARY KEY (id_orden)
);

ALTER TABLE productos ADD CONSTRAINT FK_productos__id_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);
ALTER TABLE productos ADD CONSTRAINT FK_productos__id_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor);
ALTER TABLE orden_de_compra ADD CONSTRAINT FK_orden_de_compra__id_producto FOREIGN KEY (id_producto) REFERENCES productos(id_producto);
ALTER TABLE ordenes ADD CONSTRAINT FK_ordenes__id_compra FOREIGN KEY (id_compra) REFERENCES compras(id_compra);
ALTER TABLE ordenes ADD CONSTRAINT FK_ordenes__id_empleado FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado);
ALTER TABLE ordenes ADD CONSTRAINT FK_ordenes__id_despachador FOREIGN KEY (id_despachador) REFERENCES despachadores(id_despachador);