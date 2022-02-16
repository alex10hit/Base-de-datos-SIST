CREATE OR ALTER procedure categoria_isp
@folio varchar(100)='',
@area varchar(100)='',
@categoria varchar(100)='',
@usuarioCreacion int=0,
@usuarioModificacion int=0
as
begin
insert into categoria(
folio,
area,
categoria,
fechaCreacion,
fechaModificacion,
usuarioCreacion,
usuarioModificacion
)
values(
@folio,
@area,
@categoria,
getdate(),
getdate(),
@usuarioCreacion,
@usuarioModificacion
)
end
go

CREATE OR ALTER procedure categoria_usp
@id int=0,
@folio varchar(100)='',
@area varchar(100)='',
@categoria varchar(100)='',
@usuarioModificacion int=0
as
begin
update categoria set
folio=@folio,
area=@area,
categoria=@categoria,
usuarioModificacion=@usuarioModificacion,
fechaModificacion=getdate()
where id=@id
end
go

CREATE OR ALTER procedure categoria_dsp
@id int=0
as
begin
delete from categoria where id=@id
end
go

CREATE OR ALTER procedure categoria_ssp
@id int=0
as
begin
select *from categoria where id=@id
end
go
