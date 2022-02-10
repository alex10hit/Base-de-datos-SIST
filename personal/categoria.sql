use SIST
create table categoria(
id int identity(1,1) not null,
folio varchar(100) not null,
area varchar(100) not null,
categoria varchar(100) not null,
fechaCreacion Datetime not null constraint df_categ_fc default getdate(),
fechaModificacion datetime not null constraint df_categ_fm default getdate(),
usuarioCreacion int not null constraint fk_categoria_seg_us_idc references seg_usuarios(id),
usuarioModificacion int not null constraint fk_categoria_seg_us_idm references seg_usuarios(id)
constraint pk_categoria_id primary key(id)
)
insert into categoria(folio,area,categoria,fechaCreacion,fechaModificacion,usuarioCreacion,usuarioModificacion)
values('tp-ex','desarrollo','hdgg1',07/02/2022,07/02/2022,1,1);