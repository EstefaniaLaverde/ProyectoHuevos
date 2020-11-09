-- Categorias
insert into producto_categoria
values ('1','Blanco','6');

insert into producto_categoria
values ('2','Blanco','12');

insert into producto_categoria
values ('3','Blanco','15');

insert into producto_categoria
values ('4','Blanco','30');

insert into producto_categoria
values ('5','Amarillo','6');

insert into producto_categoria
values ('6','Amarillo','12');

insert into producto_categoria
values ('7','Amarillo','15');

insert into producto_categoria
values ('8','Amarillo','30');

-- Administradores

insert into producto_administrador (id_administrador,nombre,apellido,correo)
values ('1','Juan Luis','Avila','juanl.avila@urosario.edu.co');

insert into producto_administrador (id_administrador,nombre,apellido,correo)
values ('2','Juan Jose','Caballero','juanj.caballero@urosario.edu.co');

insert into producto_administrador (id_administrador,nombre,apellido,correo)
values ('3','Estefania','Laverde','estefania.laverde@urosario.edu.co');

insert into producto_administrador (id_administrador,nombre,apellido,correo)
values ('4','Sebastian','Suarez','sebastian.suarezg@urosario.edu.co');

--Productos

insert into producto_producto
values('1','BlancoAx6','1500','300','20',1,1);

insert into producto_producto
values('2','BlancoAx12','3000','300','20',1,2);

insert into producto_producto
values('3','BlancoAx15','3750','300','20',1,3);

insert into producto_producto
values('4','BlancoAx30','7500','300','20',1,4);

insert into producto_producto
values('5','BlancoAAx6','1800','300','20',2,1);

insert into producto_producto
values('6','BlancoAAx12','3600','300','20',2,2);

insert into producto_producto
values('7','BlancoAAx15','4500','300','20',2,3);

insert into producto_producto
values('8','BlancoAAx30','9000','300','20',2,4);

insert into producto_producto
values('9','BlancoAAAx6','2100','300','20',3,1);

insert into producto_producto
values('10','BlancoAAAx12','4200','300','20',3,2);

insert into producto_producto
values('11','BlancoAAAx15','4900','300','20',3,3);

insert into producto_producto
values('12','BlancoAAAx30','9800','300','20',3,4);

insert into producto_producto
values('13','BlancoJumbox6','2400','300','20',4,1);

insert into producto_producto
values('14','BlancoJumbox12','4800','300','20',4,2);

insert into producto_producto
values('15','BlancoJumbox15','6000','300','20',4,3);

insert into producto_producto
values('16','BlancoJumbox30','12000','300','20',4,4);

insert into producto_producto
values('17','AmarilloAx6','1500','300','20',1,5);

insert into producto_producto
values('18','AmarilloAx12','3000','300','20',1,6);

insert into producto_producto
values('19','AmarilloAx15','3750','300','20',1,7);

insert into producto_producto
values('20','AmarilloAx30','7500','300','20',1,8);

insert into producto_producto
values('21','AmarilloAAx6','1800','300','20',2,5);

insert into producto_producto
values('22','AmarilloAAx12','3600','300','20',2,6);

insert into producto_producto
values('23','AmarilloAAx15','4500','300','20',2,7);

insert into producto_producto
values('24','AmarilloAAx30','9000','300','20',2,8);

insert into producto_producto
values('25','AmarilloAAAx6','2100','300','20',3,5);

insert into producto_producto
values('26','AmarilloAAAx12','4200','300','20',3,6);

insert into producto_producto
values('27','AmarilloAAAx15','4900','300','20',3,7);

insert into producto_producto
values('28','AmarilloAAAx30','9800','300','20',3,8);

insert into producto_producto
values('29','AmarilloJumbox6','2400','300','20',4,5);

insert into producto_producto
values('30','AmarilloJumbox12','4800','300','20',4,6);

insert into producto_producto
values('31','AmarilloJumbox15','6000','300','20',4,7);

insert into producto_producto
values('32','AmarilloJumbox30','12000','300','20',4,8);
