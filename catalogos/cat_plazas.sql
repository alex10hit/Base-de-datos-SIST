use SIST
create table cat_plazas(
id int identity(1,1) not null ,
folio varchar(100) not null,
descripcion varchar(100)null,
clave varchar(5) not null,
fechaCreacion Datetime not null constraint df_cat_pz_fc default getdate(),
fechaModificacion datetime not null constraint df_cat_pz_fm default getdate(),
usuarioCreacion int not null constraint fk_cat_pz_seg_us_idc references seg_usuarios(id),
usuarioModificacion int not null constraint fk_cat_pz_seg_us_idm references seg_usuarios(id)
constraint pk_cat_pz_id primary key(id)
)

insert into cat_plazas(folio,descripcion,clave,fechaCreacion,fechaModificacion,usuarioCreacion,usuarioModificacion)
values('tp-ex','desarrollo','hdgg1',06/02/2022,06/02/2022,1,1);