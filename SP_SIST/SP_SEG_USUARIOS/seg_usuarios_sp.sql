use SIST
CREATE OR ALTER procedure seg_usuarios_isp
@folio varchar(100)='',
@claveUsuario varchar(200)='',
@contraseña varchar(200)='',
@nombre varchar(200)='',
@apellidoPaterno varchar(max)='',
@apellidoMaterno varchar(max)='',
@nombreCompleto varchar(max)='',
@estatus bit=0,
@nombreCorto varchar(400),
@email varchar(500) = '',
@usuarioCreacion int=0,
@usuarioModificacion int=0,
@rolid int=0,
@departamentoid int =0,
@plazaid int =0
as 
begin
insert into seg_usuarios(
folio,
claveUsuario,
contraseña,
nombre,
apellidoPaterno,
apellidoMaterno,
nombreCompleto,
estatus,
nombreCorto,
email,
fechaCreacion,
fechaModificacion,
usuarioCreacion,
usuarioModificacion,
rolid,
departamentoid,
plazaid

)
values (
@folio,
@claveUsuario,
@contraseña,
@nombre,
@apellidoPaterno,
@apellidoMaterno,
rtrim(@nombre +' '+ @apellidoPaterno +' '+ @apellidoMaterno),
@estatus,
rtrim(@nombre +' '+ @apellidoPaterno),
@email,
getdate(),
getdate(),
@usuarioCreacion,
@usuarioModificacion,
@rolid,
@departamentoid,
@plazaid
)
end
go





CREATE OR ALTER procedure seg_usuarios_usp
@id int=0,
@folio varchar(100)='',
@claveUsuario varchar(200)='',
@contraseña varchar(200)='',
@nombre varchar(200)='',
@apellidoPaterno varchar(max)='',
@apellidoMaterno varchar(max)='',
@nombreCompleto varchar(max)='',
@estatus bit=0,
@nombreCorto varchar(400),
@email varchar(500) = '',
@usuarioCreacion int=0,
@usuarioModificacion int=0,
@rolid int=0,
@departamentoid int =0,
@plazaid int =0
as begin
update seg_usuarios set
folio=@folio,
claveUsuario=@claveUsuario,
contraseña=@contraseña,
nombre=@nombre,
apellidoPaterno=@apellidoPaterno,
apellidoMaterno=@apellidoMaterno,
nombreCompleto=rtrim(@nombre +' '+ @apellidoPaterno +' '+ @apellidoMaterno),
estatus=@estatus,
nombreCorto=rtrim(@nombre +' '+ @apellidoPaterno),
email=@email,
usuarioModificacion=@usuarioModificacion,
fechaModificacion=getdate(),
rolId=@rolId,
departamentoId=@departamentoId,
plazaid=@plazaid
where id=@id;
end
go


create or alter procedure seg_usuarios_dsp
@id int=0
as begin
delete from seg_usuarios where id=@id
end
go

create or alter procedure seg_usuarios_ssp
@id int=0
as 
begin
select * from seg_usuarios where id=@id
end