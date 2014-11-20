DROP DATABASE Aerolinea; 
go
CREATE DATABASE Aerolinea; 
go
USE Aerolinea;
go
/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     14/11/2014 19:03:05                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PASAJE') and o.name = 'FK_PASAJE_COMPRA_CLIENTE')
alter table PASAJE
   drop constraint FK_PASAJE_COMPRA_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PASAJE') and o.name = 'FK_PASAJE_REGISTRA_VUELO')
alter table PASAJE
   drop constraint FK_PASAJE_REGISTRA_VUELO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VUELO') and o.name = 'FK_VUELO_DESTINO_CIUDAD')
alter table VUELO
   drop constraint FK_VUELO_DESTINO_CIUDAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VUELO') and o.name = 'FK_VUELO_ORIGEN_CIUDAD')
alter table VUELO
   drop constraint FK_VUELO_ORIGEN_CIUDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CIUDAD')
            and   type = 'U')
   drop table CIUDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PASAJE')
            and   name  = 'REGISTRA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PASAJE.REGISTRA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PASAJE')
            and   name  = 'COMPRA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PASAJE.COMPRA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PASAJE')
            and   type = 'U')
   drop table PASAJE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VUELO')
            and   name  = 'ORIGEN_FK'
            and   indid > 0
            and   indid < 255)
   drop index VUELO.ORIGEN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VUELO')
            and   name  = 'DESTINO_FK'
            and   indid > 0
            and   indid < 255)
   drop index VUELO.DESTINO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VUELO')
            and   type = 'U')
   drop table VUELO
go

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   ID_CIUDAD            varchar(3)           not null,
   NOMBRE_CIUDAD        varchar(30)          not null,
   constraint PK_CIUDAD primary key nonclustered (ID_CIUDAD)
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   RUT                  varchar(10)          not null,
   NOMBRE               varchar(50)          not null,
   DIRECCION            varchar(40)          not null,
   TELEFONO             decimal(8)           not null,
   TELEFONO_EMERGENCIA  decimal(8)           not null,
   EMAIL                varchar(50)          not null,
   EMAIL_EMERGENCIA     varchar(50)          not null,
   constraint PK_CLIENTE primary key nonclustered (RUT)
)
go

/*==============================================================*/
/* Table: PASAJE                                                */
/*==============================================================*/
create table PASAJE (
   ID_VUELO             varchar(5)           not null,
   HORA                 time(7)              not null,
   N_ASIENTO            decimal(3)           not null,
   RUT                  varchar(10)          not null,
   FECHA                datetime             not null,
   constraint PK_PASAJE primary key nonclustered (ID_VUELO, HORA, N_ASIENTO)
)
go

/*==============================================================*/
/* Index: COMPRA_FK                                             */
/*==============================================================*/
create index COMPRA_FK on PASAJE (
RUT ASC
)
go

/*==============================================================*/
/* Index: REGISTRA_FK                                           */
/*==============================================================*/
create index REGISTRA_FK on PASAJE (
ID_VUELO ASC,
HORA ASC
)
go

/*==============================================================*/
/* Table: VUELO                                                 */
/*==============================================================*/
create table VUELO (
   ID_VUELO             varchar(5)           not null,
   HORA                 time(7)              not null,
   ID_CIUDAD            varchar(3)           not null,
   CIU_ID_CIUDAD        varchar(3)           not null,
   VALOR                decimal(7)           not null,
   constraint PK_VUELO primary key nonclustered (ID_VUELO, HORA)
)
go

/*==============================================================*/
/* Index: DESTINO_FK                                            */
/*==============================================================*/
create index DESTINO_FK on VUELO (
ID_CIUDAD ASC
)
go

/*==============================================================*/
/* Index: ORIGEN_FK                                             */
/*==============================================================*/
create index ORIGEN_FK on VUELO (
CIU_ID_CIUDAD ASC
)
go

alter table PASAJE
   add constraint FK_PASAJE_COMPRA_CLIENTE foreign key (RUT)
      references CLIENTE (RUT)
go

alter table PASAJE
   add constraint FK_PASAJE_REGISTRA_VUELO foreign key (ID_VUELO, HORA)
      references VUELO (ID_VUELO, HORA)
go

alter table VUELO
   add constraint FK_VUELO_DESTINO_CIUDAD foreign key (ID_CIUDAD)
      references CIUDAD (ID_CIUDAD)
go

alter table VUELO
   add constraint FK_VUELO_ORIGEN_CIUDAD foreign key (CIU_ID_CIUDAD)
      references CIUDAD (ID_CIUDAD)
go

