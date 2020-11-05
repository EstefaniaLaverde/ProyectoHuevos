-- Se crean 11 clientes
insert into cliente
values ('100','Tony','Stark','iron.man@avengers.com');

insert into cliente
values ('200','Steve','Rogers','captain.america@avengers.com');

insert into cliente
values ('300','Thor','Odinson','thor@avengers.com');

insert into cliente
values ('400','Natasha','Romanoff','black.widow@avengers.com');

insert into cliente
values ('500','Bruce','Banner','hulk@avengers.com');

insert into cliente
values ('600','Peter','Parker','spider.man@avengers.com');

insert into cliente
values ('700','Stephen','Strange','doctor.strange@avengers.com');

insert into cliente
values ('800','Wanda','Maximoff','scarlet.witch@avengers.com');

insert into cliente
values ('900','Carol','Danvers','captain.marvel@avengers.com');

insert into cliente
values ('1000','Sam','Wilson','falcon@avengers.com');

insert into cliente
values ('1100','Scott','Lang','ant.man@avengers.com');

-- Se crean los respectivos telefonos

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('1','1111111','100');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('2','2222222','200');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('3','3333333','300');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('4','4444444','400');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('5','5555555','500');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('6','6666666','600');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('7','7777777','700');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('8','8888888','800');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('9','9999999','900');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('10','1010101','1000');

insert into telefono (id_telefono,num_telefono,id_cliente_cliente)
values ('11','1110111','1100');
