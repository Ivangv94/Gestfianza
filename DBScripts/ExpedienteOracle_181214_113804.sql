-- NombramientoOCargo [ent77]
create table "EXPEDIENTE"."NOMBRAMIENTOOCARGO" (
   "OID"  number(10,0)  not null,
   "NOMBRAMIENTO"  varchar2(255 char),
   "TIPO"  varchar2(255 char),
   "CARGO"  varchar2(255 char),
  primary key ("OID")
);


-- Administracion_NombramientoOCargo [rel60]
alter table "EXPEDIENTE"."NOMBRAMIENTOOCARGO"  add  "ADMINISTRACION_OID"  number(19,0);
alter table "EXPEDIENTE"."NOMBRAMIENTOOCARGO"   add constraint FK_NOMBRAMIENTOOCARGO_ADMINIST foreign key ("ADMINISTRACION_OID") references "EXPEDIENTE"."ADMINISTRACION" ("OID");


-- Nombramientos_NombramientoOCargo [rel61]
alter table "EXPEDIENTE"."NOMBRAMIENTOOCARGO"  add  "NOMBRAMIENTOS_OID"  number(19,0);
alter table "EXPEDIENTE"."NOMBRAMIENTOOCARGO"   add constraint FK_NOMBRAMIENTOOCARGO_NOMBRAMI foreign key ("NOMBRAMIENTOS_OID") references "EXPEDIENTE"."NOMBRAMIENTOS" ("OID");


