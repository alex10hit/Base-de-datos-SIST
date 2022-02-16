CREATE OR ALTER procedure estatus_personal_isp
@estatus varchar(45)='',
@Clave varchar(5)='',
@usuarioCreacion int=0,
@usuarioModificacion int=0
as
begin
insert into estatus_personal(
estatus,
Clave,
fechaCreacion,
fechaModificacion,
usuarioCreacion,
usuarioModificacion
)
values(
@estatus,
@Clave,
@usuarioCreacion,
@usuarioModificacion,
getdate(),
getdate(),
@usuarioCreacion,
@usuarioModificacion
)
end
go

CREATE OR ALTER procedure estatus_personal_usp
@id int =0,
@estatus varchar(45)='',
@Clave varchar(5)='',
@usuarioModificacion int=0
as
begin
update estatus_personal set
estatus=@estatus,
Clave=@Clave,
usuarioModificacion=@usuarioModificacion,
fechaModificacion=getdate()
where id=@id 
end
go

CREATE OR ALTER procedure estatus_personal_dsp
@id int=0
as
begin
delete from estatus_personal where id=@id
end
go

CREATE OR ALTER procedure estatus_personal_ssp
@id int=0
as
begin
select *from estatus_personal where id=@id
end
go
