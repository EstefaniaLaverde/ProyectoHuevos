-- Se crean 11 clientes
insert into cliente
values (100,'Tony','Stark','iron.man@avengers.com');

insert into cliente
values (200,'Steve','Rogers','captain.america@avengers.com');

insert into cliente
values (300,'Thor','Odinson','thor@avengers.com');

insert into cliente
values (400,'Natasha','Romanoff','black.widow@avengers.com');

insert into cliente
values (500,'Bruce','Banner','hulk@avengers.com');

insert into cliente
values (600,'Peter','Parker','spider.man@avengers.com');

insert into cliente
values (700,'Stephen','Strange','doctor.strange@avengers.com');

insert into cliente
values (800,'Wanda','Maximoff','scarlet.witch@avengers.com');

insert into cliente
values (900,'Carol','Danvers','captain.marvel@avengers.com');

insert into cliente
values (1000,'Sam','Wilson','falcon@avengers.com');

insert into cliente
values (1100,'Scott','Lang','ant.man@avengers.com');



-- Se crean los respectivos telefonos

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (1,'1111111',100);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (2,'2222222',200);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (3,'3333333',300);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (4,'4444444',400);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (5,'5555555',500);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (6,'6666666',600);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (7,'7777777',700);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (8,'8888888',800);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (9,'9999999',900);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (10,'1010101',1000);

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values (11,'1110111',1100);

--Domiciliarios

insert into repartidor
values (100,'Oliver','Queen');

insert into repartidor
values (200,'Barry','Allen');

insert into repartidor
values (300,'Arthur','Curry');

insert into repartidor
values (400,'Harleen','Quinzel');

insert into repartidor
values (500,'Floyd','Lawton');

--Se crean ciudades para las direcciones

insert into ciudad (id_ciudad,nombre_ciudad)
values (100,"New York");

insert into ciudad (id_ciudad,nombre_ciudad)
  values (200,"Central City");

insert into ciudad (id_ciudad,nombre_ciudad)
values (300,"Gotham");

--Se crean las direcciones

-- en tipo va calle, carrera, avenida, transversal o diagonal

insert into direccion (id_direccion,calle,torre,apartamento_casa,tipo,id_ciudad_ciudad)
values (100,45,2,10,'calle',100);

insert into direccion (id_direccion,calle,torre,num_secundario,apartamento_casa,tipo,id_ciudad_ciudad)
values (200,100,9,29,6,'carrera',100);

insert into direccion (id_direccion,calle,apartamento_casa,tipo,id_ciudad_ciudad)
values (300,55,408,'calle',200);

insert into direccion (id_direccion,calle,torre,num_secundario,apartamento_casa,tipo,id_ciudad_ciudad)
values (400,26,2,29,10,'diagonal',300);

insert into direccion (id_direccion,calle,apartamento_casa,tipo,id_ciudad_ciudad)
values (500,127,1,'carrera',200);

insert into direccion (id_direccion,calle,torre,num_secundario,apartamento_casa,tipo,id_ciudad_ciudad)
values (600,116,3,15,6,'transversal',300);

insert into direccion (id_direccion,calle,torre,apartamento_casa,tipo,id_ciudad_ciudad)
values (700,85,1,10,'avenida',100);

insert into direccion (id_direccion,calle,torre,num_secundario,apartamento_casa,tipo,id_ciudad_ciudad)
values (800,200,4,29,206,'carrera',200);

insert into direccion (id_direccion,calle,torre,num_secundario,apartamento_casa,tipo,id_ciudad_ciudad)
values (900,26,1,2,302,'diagonal',100);

insert into direccion (id_direccion,calle,apartamento_casa,tipo,id_ciudad_ciudad)
values (1000,129,8,'avenida',300);

insert into direccion (id_direccion,calle,apartamento_casa,tipo,id_ciudad_ciudad)
values (1100,26,30,'avenida',200);
