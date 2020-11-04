-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.2
-- PostgreSQL version: 12.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: "HuevosAM" | type: DATABASE --
-- -- DROP DATABASE IF EXISTS "HuevosAM";
-- CREATE DATABASE "HuevosAM";
-- -- ddl-end --
-- 

-- object: public.categoria | type: TABLE --
-- DROP TABLE IF EXISTS public.categoria CASCADE;
CREATE TABLE public.categoria (
	id_categoria serial NOT NULL,
	tipo varchar(45),
	tamanio smallint,
	cantidad smallint,
	CONSTRAINT categoria_pk PRIMARY KEY (id_categoria)

);
-- ddl-end --
-- ALTER TABLE public.categoria OWNER TO postgres;
-- ddl-end --

-- object: public.producto | type: TABLE --
-- DROP TABLE IF EXISTS public.producto CASCADE;
CREATE TABLE public.producto (
	id_producto serial NOT NULL,
	nombre varchar(45),
	precio integer,
	stock smallint,
	cantidad_venta serial,
	id_categoria_categoria integer,
	id_administrador_administrador integer,
	CONSTRAINT producto_pk PRIMARY KEY (id_producto)

);
-- ddl-end --
-- ALTER TABLE public.producto OWNER TO postgres;
-- ddl-end --

-- object: categoria_fk | type: CONSTRAINT --
-- ALTER TABLE public.producto DROP CONSTRAINT IF EXISTS categoria_fk CASCADE;
ALTER TABLE public.producto ADD CONSTRAINT categoria_fk FOREIGN KEY (id_categoria_categoria)
REFERENCES public.categoria (id_categoria) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.administrador | type: TABLE --
-- DROP TABLE IF EXISTS public.administrador CASCADE;
CREATE TABLE public.administrador (
	id_administrador serial NOT NULL,
	direccion_correo varchar(45),
	CONSTRAINT administrador_pk PRIMARY KEY (id_administrador)

);
-- ddl-end --
-- ALTER TABLE public.administrador OWNER TO postgres;
-- ddl-end --

-- object: public.carrito | type: TABLE --
-- DROP TABLE IF EXISTS public.carrito CASCADE;
CREATE TABLE public.carrito (
	id_carrito serial NOT NULL,
	id_cliente_cliente integer,
	CONSTRAINT carrito_pk PRIMARY KEY (id_carrito)

);
-- ddl-end --
-- ALTER TABLE public.carrito OWNER TO postgres;
-- ddl-end --

-- object: public.factura | type: TABLE --
-- DROP TABLE IF EXISTS public.factura CASCADE;
CREATE TABLE public.factura (
	id_factura serial NOT NULL,
	precio_total serial,
	id_repartidor_repartidor integer,
	id_carrito_carrito integer,
	CONSTRAINT factura_pk PRIMARY KEY (id_factura)

);
-- ddl-end --
-- ALTER TABLE public.factura OWNER TO postgres;
-- ddl-end --

-- object: public.repartidor | type: TABLE --
-- DROP TABLE IF EXISTS public.repartidor CASCADE;
CREATE TABLE public.repartidor (
	id_repartidor serial NOT NULL,
	nombre varchar(45),
	apellido varchar(45),
	CONSTRAINT repartidor_pk PRIMARY KEY (id_repartidor)

);
-- ddl-end --
-- ALTER TABLE public.repartidor OWNER TO postgres;
-- ddl-end --

-- object: public.metodo_pago | type: TABLE --
-- DROP TABLE IF EXISTS public.metodo_pago CASCADE;
CREATE TABLE public.metodo_pago (
	id_metodo serial NOT NULL,
	nombre_metodo varchar(45),
	id_factura_factura integer,
	CONSTRAINT metodo_pago_pk PRIMARY KEY (id_metodo)

);
-- ddl-end --
-- ALTER TABLE public.metodo_pago OWNER TO postgres;
-- ddl-end --

-- object: public.cliente | type: TABLE --
-- DROP TABLE IF EXISTS public.cliente CASCADE;
CREATE TABLE public.cliente (
	id_cliente serial NOT NULL,
	nombre varchar(45),
	apellido varchar(45),
	direccion_correo varchar(45),
	CONSTRAINT cliente_pk PRIMARY KEY (id_cliente)

);
-- ddl-end --
-- ALTER TABLE public.cliente OWNER TO postgres;
-- ddl-end --

-- object: public.telefono | type: TABLE --
-- DROP TABLE IF EXISTS public.telefono CASCADE;
CREATE TABLE public.telefono (
	id_telefono serial NOT NULL,
	num_telefono integer,
	id_cliente_cliente integer,
	CONSTRAINT telefono_pk PRIMARY KEY (id_telefono)

);
-- ddl-end --
-- ALTER TABLE public.telefono OWNER TO postgres;
-- ddl-end --

-- object: public.direccion | type: TABLE --
-- DROP TABLE IF EXISTS public.direccion CASCADE;
CREATE TABLE public.direccion (
	id_direccion serial NOT NULL,
	calle smallint,
	torre smallint,
	num_secundario smallint,
	apartamento_casa smallint,
	tipo varchar(45),
	id_ciudad_ciudad integer,
	CONSTRAINT direccion_pk PRIMARY KEY (id_direccion)

);
-- ddl-end --
-- ALTER TABLE public.direccion OWNER TO postgres;
-- ddl-end --

-- object: public.ciudad | type: TABLE --
-- DROP TABLE IF EXISTS public.ciudad CASCADE;
CREATE TABLE public.ciudad (
	id_ciudad serial NOT NULL,
	nombre_ciudad varchar(45),
	CONSTRAINT ciudad_pk PRIMARY KEY (id_ciudad)

);
-- ddl-end --
-- ALTER TABLE public.ciudad OWNER TO postgres;
-- ddl-end --

-- object: administrador_fk | type: CONSTRAINT --
-- ALTER TABLE public.producto DROP CONSTRAINT IF EXISTS administrador_fk CASCADE;
ALTER TABLE public.producto ADD CONSTRAINT administrador_fk FOREIGN KEY (id_administrador_administrador)
REFERENCES public.administrador (id_administrador) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: ciudad_fk | type: CONSTRAINT --
-- ALTER TABLE public.direccion DROP CONSTRAINT IF EXISTS ciudad_fk CASCADE;
ALTER TABLE public.direccion ADD CONSTRAINT ciudad_fk FOREIGN KEY (id_ciudad_ciudad)
REFERENCES public.ciudad (id_ciudad) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.cliente_direccion | type: TABLE --
-- DROP TABLE IF EXISTS public.cliente_direccion CASCADE;
CREATE TABLE public.cliente_direccion (
	id_cliente_cliente integer NOT NULL,
	id_direccion_direccion integer NOT NULL,
	CONSTRAINT cliente_direccion_pk PRIMARY KEY (id_cliente_cliente,id_direccion_direccion)

);
-- ddl-end --
-- ALTER TABLE public.cliente_direccion OWNER TO postgres;
-- ddl-end --

-- object: cliente_fk | type: CONSTRAINT --
-- ALTER TABLE public.cliente_direccion DROP CONSTRAINT IF EXISTS cliente_fk CASCADE;
ALTER TABLE public.cliente_direccion ADD CONSTRAINT cliente_fk FOREIGN KEY (id_cliente_cliente)
REFERENCES public.cliente (id_cliente) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: direccion_fk | type: CONSTRAINT --
-- ALTER TABLE public.cliente_direccion DROP CONSTRAINT IF EXISTS direccion_fk CASCADE;
ALTER TABLE public.cliente_direccion ADD CONSTRAINT direccion_fk FOREIGN KEY (id_direccion_direccion)
REFERENCES public.direccion (id_direccion) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: cliente_fk | type: CONSTRAINT --
-- ALTER TABLE public.telefono DROP CONSTRAINT IF EXISTS cliente_fk CASCADE;
ALTER TABLE public.telefono ADD CONSTRAINT cliente_fk FOREIGN KEY (id_cliente_cliente)
REFERENCES public.cliente (id_cliente) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: repartidor_fk | type: CONSTRAINT --
-- ALTER TABLE public.factura DROP CONSTRAINT IF EXISTS repartidor_fk CASCADE;
ALTER TABLE public.factura ADD CONSTRAINT repartidor_fk FOREIGN KEY (id_repartidor_repartidor)
REFERENCES public.repartidor (id_repartidor) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: factura_fk | type: CONSTRAINT --
-- ALTER TABLE public.metodo_pago DROP CONSTRAINT IF EXISTS factura_fk CASCADE;
ALTER TABLE public.metodo_pago ADD CONSTRAINT factura_fk FOREIGN KEY (id_factura_factura)
REFERENCES public.factura (id_factura) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: cliente_fk | type: CONSTRAINT --
-- ALTER TABLE public.carrito DROP CONSTRAINT IF EXISTS cliente_fk CASCADE;
ALTER TABLE public.carrito ADD CONSTRAINT cliente_fk FOREIGN KEY (id_cliente_cliente)
REFERENCES public.cliente (id_cliente) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: carrito_fk | type: CONSTRAINT --
-- ALTER TABLE public.factura DROP CONSTRAINT IF EXISTS carrito_fk CASCADE;
ALTER TABLE public.factura ADD CONSTRAINT carrito_fk FOREIGN KEY (id_carrito_carrito)
REFERENCES public.carrito (id_carrito) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: factura_uq | type: CONSTRAINT --
-- ALTER TABLE public.factura DROP CONSTRAINT IF EXISTS factura_uq CASCADE;
ALTER TABLE public.factura ADD CONSTRAINT factura_uq UNIQUE (id_carrito_carrito);
-- ddl-end --

-- object: public.carrito_producto | type: TABLE --
-- DROP TABLE IF EXISTS public.carrito_producto CASCADE;
CREATE TABLE public.carrito_producto (

);
-- ddl-end --

-- object: id_carrito_carrito | type: COLUMN --
-- ALTER TABLE public.carrito_producto DROP COLUMN IF EXISTS id_carrito_carrito CASCADE;
ALTER TABLE public.carrito_producto ADD COLUMN id_carrito_carrito integer NOT NULL;
-- ddl-end --


-- object: id_producto_producto | type: COLUMN --
-- ALTER TABLE public.carrito_producto DROP COLUMN IF EXISTS id_producto_producto CASCADE;
ALTER TABLE public.carrito_producto ADD COLUMN id_producto_producto integer NOT NULL;
-- ddl-end --


-- object: cantidad | type: COLUMN --
-- ALTER TABLE public.carrito_producto DROP COLUMN IF EXISTS cantidad CASCADE;
ALTER TABLE public.carrito_producto ADD COLUMN cantidad integer;
-- ddl-end --



-- object: carrito_producto_pk | type: CONSTRAINT --
-- ALTER TABLE public.carrito_producto DROP CONSTRAINT IF EXISTS carrito_producto_pk CASCADE;
ALTER TABLE public.carrito_producto ADD CONSTRAINT carrito_producto_pk PRIMARY KEY (id_carrito_carrito,id_producto_producto);
-- ddl-end --

-- ALTER TABLE public.carrito_producto OWNER TO postgres;
-- ddl-end --

-- object: carrito_fk | type: CONSTRAINT --
-- ALTER TABLE public.carrito_producto DROP CONSTRAINT IF EXISTS carrito_fk CASCADE;
ALTER TABLE public.carrito_producto ADD CONSTRAINT carrito_fk FOREIGN KEY (id_carrito_carrito)
REFERENCES public.carrito (id_carrito) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: producto_fk | type: CONSTRAINT --
-- ALTER TABLE public.carrito_producto DROP CONSTRAINT IF EXISTS producto_fk CASCADE;
ALTER TABLE public.carrito_producto ADD CONSTRAINT producto_fk FOREIGN KEY (id_producto_producto)
REFERENCES public.producto (id_producto) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.factura_producto | type: TABLE --
-- DROP TABLE IF EXISTS public.factura_producto CASCADE;
CREATE TABLE public.factura_producto (
	id_factura_factura integer NOT NULL,
	id_producto_producto integer NOT NULL,
	cantidad integer,
	precio_total integer,
	CONSTRAINT factura_producto_pk PRIMARY KEY (id_factura_factura,id_producto_producto)

);
-- ddl-end --
-- ALTER TABLE public.factura_producto OWNER TO postgres;
-- ddl-end --

-- object: factura_fk | type: CONSTRAINT --
-- ALTER TABLE public.factura_producto DROP CONSTRAINT IF EXISTS factura_fk CASCADE;
ALTER TABLE public.factura_producto ADD CONSTRAINT factura_fk FOREIGN KEY (id_factura_factura)
REFERENCES public.factura (id_factura) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: producto_fk | type: CONSTRAINT --
-- ALTER TABLE public.factura_producto DROP CONSTRAINT IF EXISTS producto_fk CASCADE;
ALTER TABLE public.factura_producto ADD CONSTRAINT producto_fk FOREIGN KEY (id_producto_producto)
REFERENCES public.producto (id_producto) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --
