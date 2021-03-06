CREATE OR ALTER procedure seg_roles_isp
@folio varchar(100)='',
@descripcion varchar(100)='',
@clave varchar(5)='',
@usuarioCreacion int=0,
@usuarioModificacion int=0
as
begin
insert into seg_roles(
folio,
descripcion,
clave,
fechaCreacion,
fechaModificacion,
usuarioCreacion,
usuarioModificacion
)
values(
@folio,
@descripcion,
@clave,
getdate(),
getdate(),
@usuarioCreacion,
@usuarioModificacion
)
end
go

CREATE OR ALTER procedure seg_roles_usp
@id int=0,
@folio varchar(100)='',
@descripcion varchar(100)='',
@clave varchar(5)='',
@usuarioModificacion int=0
as
begin
update seg_roles set
folio=@folio,
descripcion=@descripcion,
clave=@clave,
usuarioModificacion=@usuarioModificacion,
fechaModificacion=getdate()
where id=@id
end
go

CREATE OR ALTER procedure seg_roles_dsp
@id int=0
as
begin
delete from seg_roles where id=@id
end
go

CREATE OR ALTER procedure seg_roles_ssp
@id int=0
as
begin
select *from seg_roles where id=@id
end
go