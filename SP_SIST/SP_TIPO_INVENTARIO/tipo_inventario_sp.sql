CREATE OR ALTER procedure tipo_inventario_isp
@tipo varchar(max)='',
@clave varchar(5)='',
@usuarioCreacion int=0,
@usuarioModificacion int=0

as
begin
insert into tipo_inventario(
tipo,
clave,
fechaCreacion,
fechaModificacion,
fechaCreacion,
usuarioModificacion
)
values(
@tipo,
@clave,
getdate(),
getdate(),
@usuarioCreacion,
@usuarioModificacion
)
end
go

CREATE OR ALTER procedure tipo_inventario_usp
@id int=0,
@tipo varchar(max)='',
@clave varchar(5)='',
@usuarioModificacion int=0
as
begin
update tipo_inventario set
tipo=@tipo,
clave=@clave,
fechaModificacion=getdate(),
usuarioModificacion=@usuarioModificacion
where id_tipo=@id
end 
go

CREATE OR ALTER procedure tipo_inventario_dsp
@id int=0
as
begin
delete from tipo_inventario where id_tipo=@id
end
go

CREATE OR ALTER procedure tipo_inventario_ssp
@id int=0
as
begin
select *from tipo_inventario where id_tipo=@id
end
go