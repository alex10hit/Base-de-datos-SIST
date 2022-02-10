USE SIST
create table seg_usuarios(
id int identity(1,1) not null,
folio varchar(100) not null,
claveUsuario varchar(200) not null,
contraseña varchar(200) not null,
nombre varchar(200) not null,
apellidoPaterno varchar(200) not null,
apellidoMaterno varchar(200) not null,
nombreCompleto varchar(600) not null,
estatus bit not null,
nombreCorto varchar(400) not null,
email varchar(500)not null,
fechaCreacion Datetime not null constraint df_seg_us_fc default getdate(),
fechaModificacion datetime not null constraint df_seg_us_fm default getdate(),
usuarioCreacion int not null,
usuarioModificacion int not null,
rolid int not null ,
departamentoid int not null,
plazaid int not null
constraint pk_seg_us_id primary key(id)
)
insert into seg_usuarios(folio,claveUsuario,contraseña,nombre,apellidoPaterno,apellidoMaterno,nombreCompleto,estatus,nombreCorto,
email,fechaCreacion,fechaModificacion,usuarioCreacion,usuarioModificacion,rolid,departamentoid,plazaid)
values('tp-mex','123d','123','alejandro','menoa','mat','alexis',1,'jdj','hhd',07/02/2022,07/02/2022,1,1,1,1,1);


-- en esta seccion de relacionan las llaves foreneas de la tabla usuarios_sistema
alter table seg_usuarios add constraint fk_seg_us_seg_us_idc
foreign key(usuarioCreacion) references seg_usuarios(id)
alter table seg_usuarios add constraint fk_seg_us_seg_us_idm
foreign key(usuarioModificacion) references seg_usuarios(id)
alter table seg_usuarios add constraint fk_seg_us_seg_rol_id
foreign key(rolid) references seg_roles(id)
alter table seg_usuarios add constraint fk_seg_us_cat_dp_id
foreign key(departamentoid) references cat_departamentos(id)
alter table seg_usuarios add constraint fk_seg_us_cat_pz_id
foreign key(plazaid) references cat_plazas(id)
