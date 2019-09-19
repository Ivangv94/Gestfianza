-- AuxiliarM10 [ent47]
create table "EXPEDIENTE"."AUXILIARM10" (
   "OID"  number(10,0)  not null,
   "ANTECEDENTES"  varchar2(255 char),
   "DATOSNOTARIO_OID"  varchar2(255 char),
   "RFCNOTARIO"  varchar2(255 char),
   "FOLIOMERCANTIL"  varchar2(255 char),
   "RFCPM"  varchar2(255 char),
  primary key ("OID")
);


-- apoderado [ent49]
create table "EXPEDIENTE"."APODERADO" (
   "OID"  number(10,0)  not null,
   "FACULTADESAPODERADO"  varchar2(255 char),
   "TOTALPARCIAL"  varchar2(255 char),
   "ESTATUS"  varchar2(255 char),
   "CARGO"  varchar2(255 char),
   "CURP"  varchar2(255 char),
   "RFC"  varchar2(255 char),
  primary key ("OID")
);


-- apoderado_AuxiliarM10 [rel29]
alter table "EXPEDIENTE"."APODERADO"  add  "AUXILIARM10_OID"  number(10,0);
alter table "EXPEDIENTE"."APODERADO"   add constraint FK_APODERADO_AUXILIARM10 foreign key ("AUXILIARM10_OID") references "EXPEDIENTE"."AUXILIARM10" ("OID");


