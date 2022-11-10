create database Cuestionario

use Cuestionario

create table Persona
(
Cedula varchar(15) primary key,
Nombre varchar(50) not null,
Genero char(1) constraint chf_Genero Check(Genero = 'F' or Genero = 'M'),
Fecha date constraint Def_Fecha Default Getdate()
)

create table Respuestas 
(
  Id int identity (1,1),
  CedulaR varchar(15),
  R1 char(1),
  R2 char(2),
  R3 char(3),
  constraint PK_id primary key(Id),
  constraint FK_cedula Foreign key(CedulaR) references Persona (Cedula)
  )
  --Comandos de busqueda utilizados
  select r.Id,Persona.Nombre, r.CedulaR, r.R1,r.R2,r.R3 from Respuestas r inner join Persona on r.CedulaR= Persona.Cedula
  select r.Id,Persona.Nombre, r.CedulaR, r.R1,r.R2,r.R3 from Respuestas r inner join Persona on r.CedulaR= Persona.Cedula  where Cedula = @cedula
