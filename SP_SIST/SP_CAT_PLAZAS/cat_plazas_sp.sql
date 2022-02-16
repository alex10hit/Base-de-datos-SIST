
CREATE OR ALTER procedure cat_plazas_isp
@folio varchar(100)='',
@descripcion varchar(100)='',
@clave varchar(5)='',
@usuarioCreacion int=0,
@usuarioModificacion int=0 
as
begin

insert into cat_plazas(
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

CREATE OR ALTER procedure cat_plazas_usp
@id int=0,
@folio varchar(100)='',
@descripcion varchar(100)='',
@clave varchar(5)='',
@usuarioModificacion int=0 
as
begin
update cat_plazas set 
folio=@folio,
descripcion=@descripcion,
clave=@clave,
usuarioModificacion=@usuarioModificacion,
fechaModificacion=getdate()
where id=@id
end
go


CREATE OR ALTER procedure cat_plazas_dsp
@id int=0
as
begin
delete from cat_plazas where id=@id
end
go

CREATE OR ALTER procedure cat_plazas_ssp
@id int=0
as
begin
select *from cat_plazas where id=@id
end
go