use SIST
create table personal(
id_personal int identity(1,1) not null ,
folio varchar(100) not null,
apellido_paterno varchar(max) not null,
apellido_materno varchar(max) not null,
nombre varchar(max) not null,
fecha_nacimiento date not null,
telefono varchar(10) not null,
celular varchar(10) not null,
nss varchar(11) not null,
rfc varchar(13)  not null,
curp varchar(max) not null,
correo varchar(max)not  null,
contacto_nombre varchar(max) not null,
contacto_telefono varchar(10) not null,
fecha_creacion Datetime not null constraint df_pers_fc default getdate(),
fecha_modificacion datetime not null constraint df_pers_fm default getdate(),
usuarioCreacion int not null constraint fk_pers_seg_us_idc references seg_usuarios(id),
usuarioModificacion int not  null constraint fk_pers_seg_us_idm references seg_usuarios(id),
id_plaza int not null constraint fk_pers_cat_pz_id references cat_plazas(id),
id_categoria int not null constraint fk_pers_ctgoria_id references categoria(id),
id_estatus int not null constraint fk_pers_estup_id references estatus_personal(id)
constraint pk_personal_id primary key(id_personal)
)
insert into personal(folio,apellido_paterno,apellido_materno,nombre,fecha_nacimiento,telefono,celular,nss,rfc,curp,
correo,contacto_nombre,contacto_telefono,fecha_creacion,fecha_modificacion,usuarioCreacion,usuarioModificacion,id_plaza,id_categoria,id_estatus)
values('tp,mex','may','uc','alex','03/02/2022','883737','27373','2ed','rfc','mema192','alex199','fatima','82882',07/02/2022,07/02/2022,1,1,1,1,1);