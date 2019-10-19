create database Hackathon_project;
use Hackathon_project;

create table MUNICIPIO(
ID int auto_increment primary key, 
Municipio_nombre varchar(100)
);

create table CATEGORIA(
ID int auto_increment primary key,
Nombre_categoria varchar(100)
);

create table USUARIO_REGISTRADO(
ID int auto_increment primary key,
Correo varchar(150)
);

create table SECTOR(
ID int auto_increment primary key,
Sector varchar(45)
);

create table ACTO_JURIDICO(
ID int auto_increment primary key,
Nombre_tipo_licencia varchar(150)
);

create table INSTITUCION(
ID int auto_increment primary key,
Nombre_institucion varchar(100)
);

create table USUARIO_CATEGORIA(
ID int auto_increment primary key,
ID_categoria int,
ID_usuario int,
foreign key (ID_categoria) references CATEGORIA (ID),
foreign key (ID_usuario) references USUARIO_REGISTRADO (ID)
);

create table REGISTROS(
ID int auto_increment primary key,
Ejercicio int,
Fecha_inicio varchar(45), 
Fecha_fin varchar(45),
Monto decimal,
Persona varchar(100),
ID_sector int,
ID_acto_juridico int, 
ID_institucion_responsable int, 
foreign key (ID_sector) references SECTOR (ID),
foreign key (ID_acto_juridico) references ACTO_JURIDICO (ID),
foreign key (ID_institucion_responsable) references INSTITUCION (ID)
);

insert into CATEGORIA values (NULL, 'Educación');
insert into CATEGORIA values (NULL, 'Seguridad');
insert into CATEGORIA values (NULL, 'Construcciones');
insert into CATEGORIA values (NULL, 'Salud');
insert into CATEGORIA values (NULL, 'Programas de apoyo');
insert into CATEGORIA values (NULL, 'Transporte');
insert into CATEGORIA values (NULL, 'Obras públicas');

-- educacion, seguridad, construcciones, salud, programas de apoyo, transporte, obras publicas