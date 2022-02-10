create table estatus_inventario(
id_estatus int identity(1,1) not null,
estatus varchar(45) not null,
clave varchar(5) not null,
fechaCreacion Datetime not null constraint df_est_inv_fc default getdate(),
fechaModificacion datetime not null constraint df_est_inv_fm default getdate(),
usuarioCreacion int not null constraint fk_est_inv_seg_us_idc references seg_usuarios(id),
usuarioModificacion int not null constraint fk_est_inv_seg_us_idm references seg_usuarios(id)
constraint pk_estatusInv_id primary key(id_estatus)
)
insert into estatus_inventario(estatus,clave,fechaCreacion,fechaModificacion,usuarioCreacion,usuarioModificacion)
values('Malo','dj2',07/02/2022,07/02/2022,1,1)