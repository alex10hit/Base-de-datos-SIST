CREATE OR ALTER procedure estatus_inventario_isp
@estatus varchar(45)='',
@clave varchar(5)='',
@usuarioCreacion int=0,
@usuarioModificacion int=0
as
begin
insert into estatus_inventario(
estatus,
clave,
fechaCreacion,
fechaModificacion,
usuarioCreacion,
usuarioModificacion
)
values(
@estatus,
@clave,
getdate(),
getdate(),
@usuarioCreacion,
@usuarioModificacion
)
end
go

CREATE OR ALTER procedure estatus_inventario_usp
@id int=0,
@estatus varchar(45)='',
@clave varchar(5)='',
@usuarioModificacion int=0
as
begin
update estatus_inventario set
estatus=@estatus,
clave=@clave,
fechaModificacion=getdate(),
usuarioModificacion=@usuarioModificacion
 where id_estatus=@id
end
go

CREATE OR ALTER procedure estatus_inventario_dsp
@id int=0
as
begin
delete from estatus_inventario where id_estatus=@id
end
go

CREATE OR ALTER procedure estatus_inventario_ssp
@id int=0
as
begin
select *from estatus_inventario where id_estatus=@id
end
go