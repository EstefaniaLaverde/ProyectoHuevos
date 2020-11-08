-- Se crean 11 clientes
insert into cliente_cliente
values (100,'Tony','Stark','iron.man@avengers.com');

insert into cliente_cliente
values (200,'Steve','Rogers','captain.america@avengers.com');

insert into cliente_cliente
values (300,'Thor','Odinson','thor@avengers.com');

insert into cliente_cliente
values (400,'Natasha','Romanoff','black.widow@avengers.com');

insert into cliente_cliente
values (500,'Bruce','Banner','hulk@avengers.com');

insert into cliente_cliente
values (600,'Peter','Parker','spider.man@avengers.com');

insert into cliente_cliente
values (700,'Stephen','Strange','doctor.strange@avengers.com');

insert into cliente_cliente
values (800,'Wanda','Maximoff','scarlet.witch@avengers.com');

insert into cliente_cliente
values (900,'Carol','Danvers','captain.marvel@avengers.com');

insert into cliente_cliente
values (1000,'Sam','Wilson','falcon@avengers.com');

insert into cliente_cliente
values (1100,'Scott','Lang','ant.man@avengers.com');



-- Se crean los respectivos telefonos

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (1,'1111111',100);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (2,'2222222',200);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (3,'3333333',300);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (4,'4444444',400);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (5,'5555555',500);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (6,'6666666',600);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (7,'7777777',700);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (8,'8888888',800);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (9,'9999999',900);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (10,'1010101',1000);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente)
values (11,'1110111',1100);

--Domiciliarios

insert into cliente_repartidor
values (100,'Oliver','Queen');

insert into cliente_repartidor
values (200,'Barry','Allen');

insert into cliente_repartidor
values (300,'Arthur','Curry');

insert into cliente_repartidor
values (400,'Harleen','Quinzel');

insert into cliente_repartidor
values (500,'Floyd','Lawton');

--Se crean ciudades para las direcciones

insert into cliente_ciudad (id_ciudad,nombre_ciudad)
values (100,"New York");

insert into cliente_ciudad (id_ciudad,nombre_ciudad)
  values (200,"Central City");

insert into cliente_ciudad (id_ciudad,nombre_ciudad)
values (300,"Gotham");

--Se crean las direcciones

-- en tipo va calle, carrera, avenida, transversal o diagonal

insert into cliente_direccion (id_direccion, via, num_principal, sufijo, num_secundario, otro, id_ciudad_ciudad)
values (100,'carrera',127,'A',70,'Torre 2 Apto 408',100);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo, num_secundario, otro, id_ciudad_ciudad)
values (200,'carrera',100,'A',10,'Torre 5 Apto 102',100);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo, num_secundario, otro, id_ciudad_ciudad)
values (300,'carrera',90,'A',20,'Torre 1 Apto 303',100);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo, num_secundario, otro, id_ciudad_ciudad)
values (400,'calle',85,'B',30,'Torre 3 Apto 104',100);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo, num_secundario, otro, id_ciudad_ciudad)
values (500,'calle',155,'B',40,'Casa 5',200);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo, num_secundario, otro, id_ciudad_ciudad)
values (600,'calle',1,'A',50,'Casa 15',200);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo, num_secundario, otro, id_ciudad_ciudad)
values (700,'calle',26,'Bis',60,'Casa 1',200);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo, num_secundario, otro, id_ciudad_ciudad)
values (800,'avenida',11,'B',70,'Torre 6 Apto 608',300);

insert into cliente_direccion (id_direccion, via, num_principal, num_secundario, otro, id_ciudad_ciudad)
values (900,'avenida',30,80,'Torre 4 Apto 408',300);

insert into cliente_direccion (id_direccion, via, num_principal, num_secundario, otro, id_ciudad_ciudad)
values (1000,'diagonal',116,90,'Casa 7',300);

insert into cliente_direccion (id_direccion, via, num_principal, num_secundario, otro, id_ciudad_ciudad)
values (1100,'diagonal',100,10,'Torre 3 Apto 408',200);