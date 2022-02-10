use SIST
create table asignaciones(
id int identity(1,1) not null,
folio varchar(100) not null,
acuse varchar(max) not null,
fecha_entrega datetime not null,
fecha_devolucion datetime not null,
observaciones varchar(max)not null,
fecha_creacion datetime not null constraint df_asig_fc default getdate(),
fecha_modificacion datetime not null constraint df_asig_fm default getdate(),
usuarioCreacion int not null constraint fk_asig_seg_us_idc references seg_usuarios(id),
usuarioModificacion int not null constraint fk_asig_seg_us_idm references seg_usuarios(id),
id_inventario int not null constraint fk_asig_inv_id references inventario(id_inventario),
id_personal int not null constraint fk_asig_pers_id references personal(id_personal),
constraint pk_asig_id primary key(id)
)
