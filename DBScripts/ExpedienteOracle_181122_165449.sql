-- Administracion [ent64]
create table "EXPEDIENTE"."ADMINISTRACION" (
   "OID"  number(10,0)  not null,
   "NOMBRAMIENTO"  varchar2(255 char),
   "DESCRIPCION"  clob,
   "FACULTAD"  varchar2(255 char),
   "TIPO"  varchar2(255 char),
  primary key ("OID")
);


-- Nombramientos [ent65]
create table "EXPEDIENTE"."NOMBRAMIENTOS" (
   "OID"  number(10,0)  not null,
   "CARGO"  varchar2(255 char),
   "DESCRIPCIONFACULTAD"  clob,
   "FACULTAD"  varchar2(255 char),
  primary key ("OID")
);


-- Apoderados [ent66]
create table "EXPEDIENTE"."APODERADOS" (
   "OID"  number(10,0)  not null,
   "DESCRIPCIONFACULTAD"  clob,
   "FACULTAD"  varchar2(255 char),
  primary key ("OID")
);


-- PersonaFisica_Administracion [rel34]
alter table "EXPEDIENTE"."ADMINISTRACION"  add  "PERSONAFISICA_OID"  number(19,0);
alter table "EXPEDIENTE"."ADMINISTRACION"   add constraint FK_ADMINISTRACION_PERSONAFISIC foreign key ("PERSONAFISICA_OID") references "EXPEDIENTE"."PERSONAFISICA" ("USER_OID");


-- Nombramientos_PersonaFisica [rel38]
alter table "EXPEDIENTE"."NOMBRAMIENTOS"  add  "PERSONAFISICA_OID"  number(19,0);
alter table "EXPEDIENTE"."NOMBRAMIENTOS"   add constraint FK_NOMBRAMIENTOS_PERSONAFISICA foreign key ("PERSONAFISICA_OID") references "EXPEDIENTE"."PERSONAFISICA" ("USER_OID");


-- Apoderados_PersonaFisica [rel39]
alter table "EXPEDIENTE"."APODERADOS"  add  "PERSONAFISICA_OID"  number(19,0);
alter table "EXPEDIENTE"."APODERADOS"   add constraint FK_APODERADOS_PERSONAFISICA foreign key ("PERSONAFISICA_OID") references "EXPEDIENTE"."PERSONAFISICA" ("USER_OID");


