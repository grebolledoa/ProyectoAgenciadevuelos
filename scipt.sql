/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     13/11/2014 22:08:23                          */
/*==============================================================*/
--DROP DATABASE Aerolinea;

--CREATE DATABASE Aerolinea;

USE Aerolinea;

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PASAJE') and o.name = 'FK_PASAJE_RELATIONS_VUELO')
alter table PASAJE
   drop constraint FK_PASAJE_RELATIONS_VUELO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PASAJE') and o.name = 'FK_PASAJE_RELATIONS_CLIENTE')
alter table PASAJE
   drop constraint FK_PASAJE_RELATIONS_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRAMO') and o.name = 'FK_TRAMO_RELATIONS_CIUDAD')
alter table TRAMO
   drop constraint FK_TRAMO_RELATIONS_CIUDAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRAMO') and o.name = 'FK_TRAMO_RELATIONS_VUELO')
alter table TRAMO
   drop constraint FK_TRAMO_RELATIONS_VUELO
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
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index PASAJE.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PASAJE')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index PASAJE.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PASAJE')
            and   type = 'U')
   drop table PASAJE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TRAMO')
            and   name  = 'RELATIONSHIP_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index TRAMO.RELATIONSHIP_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TRAMO')
            and   name  = 'RELATIONSHIP_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index TRAMO.RELATIONSHIP_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRAMO')
            and   type = 'U')
   drop table TRAMO
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
   NOMBRE               varchar(30)          not null,
   ID_CIUDAD            numeric(7)             not null,
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
   TELEFONO             numeric(8)           not null,
   EMAIL                varchar(40)          not null,
   TELEFONO_EMERGENCIA  numeric(8)           not null,
   EMAIL_EMERGENCIA     varchar(40)          not null,
   constraint PK_CLIENTE primary key nonclustered (RUT)
)
go

/*==============================================================*/
/* Table: PASAJE                                                */
/*==============================================================*/
create table PASAJE (
   RUT                  varchar(10)          not null,
   NUMERO_ASIENTO       numeric(8)           not null,
   HORA                 datetime             not null,
   FECHA                datetime             not null,
   constraint PK_PASAJE primary key nonclustered (NUMERO_ASIENTO, HORA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on PASAJE (
HORA ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on PASAJE (
RUT ASC
)
go

/*==============================================================*/
/* Table: TRAMO                                                 */
/*==============================================================*/
create table TRAMO (
   HORA                 datetime             not null,
   ID_CIUDAD            numeric(7)             not null,
   constraint PK_TRAMO primary key nonclustered (HORA, ID_CIUDAD)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on TRAMO (
ID_CIUDAD ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on TRAMO (
HORA ASC
)
go

/*==============================================================*/
/* Table: VUELO                                                 */
/*==============================================================*/
create table VUELO (
   ID_VUELO             numeric(8)           not null,
   HORA                 datetime             not null,
   VALOR                numeric(6)           not null,
   constraint PK_VUELO primary key nonclustered (HORA)
)
go

alter table PASAJE
   add constraint FK_PASAJE_RELATIONS_VUELO foreign key (HORA)
      references VUELO (HORA)
go

alter table PASAJE
   add constraint FK_PASAJE_RELATIONS_CLIENTE foreign key (RUT)
      references CLIENTE (RUT)
go

alter table TRAMO
   add constraint FK_TRAMO_RELATIONS_CIUDAD foreign key (ID_CIUDAD)
      references CIUDAD (ID_CIUDAD)
go

alter table TRAMO
   add constraint FK_TRAMO_RELATIONS_VUELO foreign key (HORA)
      references VUELO (HORA)
go

