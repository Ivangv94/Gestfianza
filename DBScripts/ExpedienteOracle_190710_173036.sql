-- TipoFedatario [ent75]
create table "EXPEDIENTE"."TIPOFEDATARIO" (
   "OIDTIPOFEDATARIO"  number(10,0)  not null,
   "NOMBRETIPOFED"  varchar2(255 char),
  primary key ("OIDTIPOFEDATARIO")
);


-- Municipios [ent78]
create table "EXPEDIENTE"."MUNICIPIOS" (
   "OIDMUNICIPIO"  number(10,0)  not null,
   "NOMBREMUNICIPIO"  varchar2(255 char),
   "OIDESTADO"  number(10,0),
  primary key ("OIDMUNICIPIO")
);


-- Observaciones [ent79]
create table "EXPEDIENTE"."OBSERVACIONES" (
   "OIDOBSERVACIONES"  number(10,0)  not null,
   "NOMBREOBSERVACION"  varchar2(255 char),
  primary key ("OIDOBSERVACIONES")
);


-- REL FK: EstadosToFedatarios [rel78#role156]
alter table "EXPEDIENTE"."FEDATARIOS"   add constraint FK_FEDATARIOS_ESTADOS foreign key ("OIDESTADO") references "EXPEDIENTE"."ESTADOS" ("OIDESTADO");


