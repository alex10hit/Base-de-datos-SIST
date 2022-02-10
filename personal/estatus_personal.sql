use SIST
create table estatus_personal(
id int identity(1,1) not null ,
estatus varchar(45) not null,
Clave varchar(5),
fechaCreacion Datetime not null constraint df_est_pers_fc default getdate(),
fechaModificacion datetime not null constraint df_est_pers_fm default getdate(),
usuarioCreacion int not null constraint fk_est_pers_seg_us_idc references seg_usuarios(id),
usuarioModificacion int not null constraint fk_est_pers_seg_us_idm references seg_usuarios(id)
constraint pk_estatusp_id primary key(id)
)

insert into estatus_personal(estatus,clave,fechaCreacion,fechaModificacion,usuarioCreacion,usuarioModificacion)
values('activo','jdw',07/03/2022,07/03/2022,1,1)