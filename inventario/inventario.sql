use SIST
create table inventario(
id_inventario int identity(1,1) not null,
folio varchar(100) not null,
descripcion_tecnica varchar(max)not null,
descripcion_fisica varchar(max) not null,
microsoft bit not null,                   --esta seccion de microsoft hace relacion aque si cuenta con una licencia
factura varchar(max) null,
costo decimal(19,2) not  null,
fecha_adquisicion datetime not null,
observaciones varchar(max) null,
fecha_creacion Datetime not null constraint fk_inv_fc default getdate(),
fecha_modificacion datetime not  null constraint fk_inv_fm default getdate(),
usuarioCreacion int not null constraint  fk_inv_seg_us_idc references seg_usuarios(id),
usuarioModificacion int  not null constraint fk_inv_seg_us_idm references seg_usuarios(id),
tipo_Inventario int not null constraint fk_inv_tipInv_id references tipo_inventario(id_tipo),
estatus_Inventario int not null constraint fk_inv_estInv_id references estatus_inventario(id_estatus)
constraint pk_inv_id primary key(id_inventario)
)
insert into inventario(folio,descripcion_tecnica,descripcion_fisica,microsoft,factura,costo,fecha_adquisicion,observaciones,
fecha_creacion,fecha_modificacion,usuarioCreacion,usuarioModificacion,tipo_Inventario,estatus_Inventario)
values('tp-mex','mantenimiento','soplador',1,'123',12.34,07/09/2022,'detalles n',07/09/2022,07/09/2022,1,1,1,1);

