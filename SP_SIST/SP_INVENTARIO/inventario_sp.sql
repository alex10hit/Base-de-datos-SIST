
CREATE OR ALTER procedure inventario_isp
@folio varchar(100)='',
@descripcion_tecnica varchar(max)='',
@descripcion_fisica varchar(max)='',
@microsoft bit=0,                   --esta seccion de microsoft hace relacion aque si cuenta con una licencia
@factura varchar(max)='',
@costo decimal(19,2)=0,
@fecha_adquisicion datetime='',
@observaciones varchar(max)='',
@usuarioCreacion int=0,
@usuarioModificacion int=0,
@tipo_Inventario int=0,
@estatus_Inventario int=0
as
begin
insert into inventario(
folio,
descripcion_tecnica,
descripcion_fisica,
microsoft,
factura,
costo,
fecha_adquisicion,
observaciones,
fecha_creacion,
fecha_modificacion,
usuarioCreacion,
usuarioModificacion
)
values(
@folio,
@descripcion_tecnica,
@descripcion_fisica ,
@microsoft,                   --esta seccion de microsoft hace relacion aque si cuenta con una licencia
@factura,
@costo,
@fecha_adquisicion ,
@observaciones,
getdate(),
getdate(),
@usuarioCreacion,
@usuarioModificacion,
@tipo_Inventario ,
@estatus_Inventario
)
end 
go


CREATE OR ALTER procedure inventario_usp
@id int=0,
@folio varchar(100)='',
@descripcion_tecnica varchar(max)='',
@descripcion_fisica varchar(max)='',
@microsoft bit=0,                   --esta seccion de microsoft hace relacion aque si cuenta con una licencia
@factura varchar(max)='',
@costo decimal(19,2)=0,
@fecha_adquisicion datetime='',
@observaciones varchar(max)='',
@usuarioModificacion int=0,
@tipo_Inventario int=0,
@estatus_Inventario int=0
as
begin
update inventario set
folio=@folio,
descripcion_tecnica=@descripcion_tecnica,
descripcion_fisica=@descripcion_fisica,
microsoft=@microsoft,
factura=@factura,
costo=@costo,
fecha_adquisicion=@fecha_adquisicion,
observaciones=@observaciones,
fecha_modificacion=getdate(),
usuarioModificacion=@usuarioModificacion,
tipo_Inventario=@tipo_Inventario,
estatus_Inventario=@estatus_Inventario
where id_inventario=@id
end
go

CREATE OR ALTER procedure inventario_dsp
@id int=0
as
begin
delete from inventario where id_inventario=@id
end
go

CREATE OR ALTER procedure inventario_ssp
@id int=0
as
begin
select *from inventario where id_inventario=@id
end
go