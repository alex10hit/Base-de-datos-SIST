use SIST
create table tipo_inventario(
id_tipo int identity(1,1) not null ,
tipo varchar(max) not null,
clave varchar(5) not null,
fechaCreacion datetime not null constraint df_tipo_inv_fc default getdate(),
fechaModificacion datetime not null constraint df_tipo_inv_fm default getdate(),
usuarioCreacion int not null constraint fk_tipo_inv_seg_us_idc references seg_usuarios(id),
usuarioModificacion int not null constraint fk_tipo_inv_seg_us_idm references seg_usuarios(id)
constraint pk_tip_inv_id primary key(id_tipo)
)
insert into tipo_inventario(tipo,clave,fechaCreacion,fechaModificacion,usuarioCreacion,usuarioModificacion) values('accesorios energia','AE',07/02/2022,07/02/2022,1,1)