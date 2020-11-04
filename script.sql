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

-- object: categoria | type: TABLE --
-- DROP TABLE IF EXISTS public.categoria CASCADE;
CREATE TABLE categoria (
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
CREATE TABLE producto (
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
ALTER TABLE producto ADD CONSTRAINT categoria_fk FOREIGN KEY (id_categoria_categoria)
REFERENCES categoria (id_categoria) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.administrador | type: TABLE --
-- DROP TABLE IF EXISTS public.administrador CASCADE;
CREATE TABLE administrador (
	id_administrador serial NOT NULL,
	direccion_correo varchar(45),
	CONSTRAINT administrador_pk PRIMARY KEY (id_administrador)

);
-- ddl-end --
-- ALTER TABLE public.administrador OWNER TO postgres;
-- ddl-end --

-- object: public.carrito | type: TABLE --
-- DROP TABLE IF EXISTS public.carrito CASCADE;
CREATE TABLE carrito (
	id_carrito serial NOT NULL,
	id_cliente_cliente integer,
	CONSTRAINT carrito_pk PRIMARY KEY (id_carrito)

);
-- ddl-end --
-- ALTER TABLE public.carrito OWNER TO postgres;
-- ddl-end --

-- object: public.factura | type: TABLE --
-- DROP TABLE IF EXISTS public.factura CASCADE;
CREATE TABLE factura (
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
CREATE TABLE repartidor (
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
CREATE TABLE metodo_pago (
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
CREATE TABLE cliente (
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
CREATE TABLE telefono (
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
CREATE TABLE direccion (
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
CREATE TABLE ciudad (
	id_ciudad serial NOT NULL,
	nombre_ciudad varchar(45),
	CONSTRAINT ciudad_pk PRIMARY KEY (id_ciudad)

);
-- ddl-end --
-- ALTER TABLE public.ciudad OWNER TO postgres;
-- ddl-end --

-- object: administrador_fk | type: CONSTRAINT --
-- ALTER TABLE public.producto DROP CONSTRAINT IF EXISTS administrador_fk CASCADE;
ALTER TABLE producto ADD CONSTRAINT administrador_fk FOREIGN KEY (id_administrador_administrador)
REFERENCES administrador (id_administrador) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: ciudad_fk | type: CONSTRAINT --
-- ALTER TABLE public.direccion DROP CONSTRAINT IF EXISTS ciudad_fk CASCADE;
ALTER TABLE direccion ADD CONSTRAINT ciudad_fk FOREIGN KEY (id_ciudad_ciudad)
REFERENCES ciudad (id_ciudad) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.cliente_direccion | type: TABLE --
-- DROP TABLE IF EXISTS public.cliente_direccion CASCADE;
CREATE TABLE cliente_direccion (
	id_cliente_cliente integer NOT NULL,
	id_direccion_direccion integer NOT NULL,
	CONSTRAI

-- SQL code purposely truncated at this point in demo version!