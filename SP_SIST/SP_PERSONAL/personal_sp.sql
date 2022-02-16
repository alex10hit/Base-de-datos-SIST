CREATE OR ALTER procedure personal_isp
@folio varchar(100)='',
@apellido_paterno varchar(max)='',
@apellido_materno varchar(max)='',
@nombre varchar(max)='',
@fecha_nacimiento date=0,
@telefono varchar(10)='',
@celular varchar(10)='',
@nss varchar(11)='',
@rfc varchar(13)='',
@curp varchar(max)='',
@correo varchar(max)='',
@contacto_nombre varchar(max)='',
@contacto_telefono varchar(10)='',
@usuarioCreacion int=0,
@usuarioModificacion int=0,
@id_plaza int=0,
@id_categoria int=0,
@id_estatus int=0

as
begin
insert into personal(
folio,
apellido_paterno,
apellido_materno,
nombre,
fecha_nacimiento,
telefono,
celular,
nss,
rfc ,
curp ,
correo ,
contacto_nombre ,
contacto_telefono ,
fecha_creacion,
fecha_modificacion,
usuarioCreacion,
usuarioModificacion ,
id_plaza ,
id_categoria ,
id_estatus 
)
values(
@folio,
@apellido_paterno,
@apellido_materno,
@nombre,
@fecha_nacimiento,
@telefono,
@celular,
@nss,
@rfc ,
@curp ,
@correo ,
@contacto_nombre ,
@contacto_telefono ,
getdate(),
getdate(),
@usuarioCreacion,
@usuarioModificacion ,
@id_plaza ,
@id_categoria ,
@id_estatus 
)
end
go

CREATE OR ALTER procedure personal_usp
@id int=0,
@folio varchar(100)='',
@apellido_paterno varchar(max)='',
@apellido_materno varchar(max)='',
@nombre varchar(max)='',
@fecha_nacimiento date=0,
@telefono varchar(10)='',
@celular varchar(10)='',
@nss varchar(11)='',
@rfc varchar(13)='',
@curp varchar(max)='',
@correo varchar(max)='',
@contacto_nombre varchar(max)='',
@contacto_telefono varchar(10)='',
@usuarioModificacion int=0,
@id_plaza int=0,
@id_categoria int=0,
@id_estatus int=0
as
begin
update personal set
folio=@folio,
apellido_paterno=@apellido_paterno,
apellido_materno=@apellido_materno,
nombre=@nombre,
fecha_nacimiento=@fecha_nacimiento,
telefono=@telefono,
celular=@celular,
nss=@nss,
rfc=@rfc,
curp=@curp,
correo=@correo,
contacto_nombre=@contacto_nombre,
contacto_telefono=@contacto_telefono,
usuarioModificacion=@usuarioModificacion,
fecha_modificacion=getdate(),
id_plaza=@id_plaza,
id_categoria=@id_categoria,
id_estatus=@id_estatus
where id_personal=@id
end
go

CREATE OR ALTER procedure personal_dsp
@id int=0
as
begin
delete from personal where id_personal=@id
end
go

CREATE OR ALTER procedure personal_ssp
@id int=0
as
begin
select *from personal where id_personal=@id
end
go
