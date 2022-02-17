
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
fechaCreacion,
usuarioCreacion,
usuarioModificacion
)
values
(
@estatus,
@clave,
getdate(),
getdate(),
@usuarioCreacion,
@usuarioModificacion
)
end
go