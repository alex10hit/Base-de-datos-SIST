use SIST
create table seg_roles(
id int identity(1,1) not null,
folio varchar(100) not null,
descripcion varchar(100)null,
clave varchar(5) not null,
fechaCreacion Datetime not null constraint df_seg_rol_fc default getdate(),
fechaModificacion datetime not null constraint df_seg_rol_fm default getdate() ,
usuarioCreacion int not null constraint fk_seg_rol_seg_us_idc references seg_usuarios(id),
usuarioModificacion int not null constraint fk_seg_rol_seg_us_idm references seg_usuarios(id)
constraint pk_seg_rol_id primary key(id)
)
insert into seg_roles(folio,descripcion,clave,fechaCreacion,fechaModificacion,usuarioCreacion,usuarioModificacion)
values('tp-mex','hhdh','123',07/02/2022,07/02/2022,1,1)