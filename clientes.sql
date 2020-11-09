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

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (1,'1111111',100);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (2,'2222222',200);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (3,'3333333',300);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (4,'4444444',400);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (5,'5555555',500);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (6,'6666666',600);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (7,'7777777',700);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (8,'8888888',800);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (9,'9999999',900);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (10,'1010101',1000);

insert into cliente_telefono (id_telefono,num_telefono,id_cliente_id)
values (11,'1110111',1100);

--Domiciliarios

insert into factura_repartidor
values (100,'Oliver','Queen');

insert into factura_repartidor
values (200,'Barry','Allen');

insert into factura_repartidor
values (300,'Arthur','Curry');

insert into factura_repartidor
values (400,'Harleen','Quinzel');

insert into factura_repartidor
values (500,'Floyd','Lawton');

--Se crean ciudades para las direcciones

insert into cliente_ciudad (id_ciudad,nombre_ciudad)
values (100,'New York');

insert into cliente_ciudad (id_ciudad,nombre_ciudad)
  values (200,'Central City');

insert into cliente_ciudad (id_ciudad,nombre_ciudad)
values (300,'Gotham');

--Se crean las direcciones

-- en tipo va calle, carrera, avenida, transversal o diagonal

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario, otro, id_ciudad_ciudad_id)
values (100,'carrera',127,'A',70,'H',38,'Torre 2 Apto 408',100);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario,  otro, id_ciudad_ciudad_id)
values (200,'carrera',100,'A',10,'H',78,'Torre 5 Apto 102',100);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario,  otro, id_ciudad_ciudad_id)
values (300,'carrera',90,'A',20,'H',25,'Torre 1 Apto 303',100);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario,  otro, id_ciudad_ciudad_id)
values (400,'calle',85,'B',30,'H',63,'Torre 3 Apto 104',100);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario, otro, id_ciudad_ciudad_id)
values (500,'calle',155,'B',40,'H',78,'Casa 5',200);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario, otro, id_ciudad_ciudad_id)
values (600,'calle',1,'A',50,'H',45,'Casa 15',200);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario, otro, id_ciudad_ciudad_id)
values (700,'calle',26,'Bis',60,'H',12,'Casa 1',200);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario, otro, id_ciudad_ciudad_id)
values (800,'avenida',11,'B',70,'H',7,'Torre 6 Apto 608',300);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario, otro, id_ciudad_ciudad_id)
values (900,'avenida',30,'Bis',80,'H',9,'Torre 4 Apto 408',300);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario, otro, id_ciudad_ciudad_id)
values (1000,'diagonal',116,'B',90,'H',5,'Casa 7',300);

insert into cliente_direccion (id_direccion, via, num_principal, sufijo1, num_secundario, sufijo2,num_terciario, otro, id_ciudad_ciudad_id)
values (1100,'diagonal',100,'A',10,'H',2,'Torre 3 Apto 408',200);
