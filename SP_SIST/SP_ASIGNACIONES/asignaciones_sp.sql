CREATE OR ALTER procedure asignaciones_isp
@folio varchar(100)='',
@acuse varchar(max)='',
@fecha_entrega datetime='',
@fecha_devolucion datetime='',
@observaciones varchar(max)='',
@usuarioCreacion int=0,
@usuarioModificacion int=0,
@id_inventario int=0,
@id_personal int=0
as
begin
insert into asignaciones(
folio,
acuse,
fecha_entrega,
fecha_devolucion,
observaciones,
usuarioCreacion,
usuarioModificacion,
fecha_creacion,
fecha_modificacion,
id_inventario,
id_personal
)
values(
@folio,
@acuse,
@fecha_entrega,
@fecha_devolucion,
@observaciones,
@usuarioCreacion,
@usuarioModificacion,
getdate(),
getdate(),
@id_inventario,
@id_personal
)
end 
go

CREATE OR ALTER procedure asignaciones_usp
@id int=0,
@folio varchar(100)='',
@acuse varchar(max)='',
@fecha_entrega datetime='',
@fecha_devolucion datetime='',
@observaciones varchar(max)='',
@usuarioModificacion int=0,
@id_inventario int=0,
@id_personal int=0
as
begin

update asignaciones set
folio=@folio,
acuse=@acuse,
fecha_entrega=@fecha_entrega,
fecha_devolucion=@fecha_devolucion,
observaciones=@observaciones,
usuarioModificacion=@usuarioModificacion,
fecha_modificacion=getdate(),
id_inventario=@id_inventario,
id_personal=@id_personal
where id=@id
end
go

CREATE OR ALTER procedure asignaciones_dsp
@id int=0
as
begin
delete from asignaciones where id=@id
end
go

CREATE OR ALTER procedure asignaciones_ssp
@id int=0
as
begin
select *from asignaciones where id=@id
end
go
