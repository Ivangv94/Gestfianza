-- AuxiliarInstrumento [ent50]
create table "EXPEDIENTE"."AUXILIARINSTRUMENTO" (
   "OID"  number(10,0)  not null,
   "FECHAINSTRUMENTO"  varchar2(255 char),
   "LIBRO"  varchar2(255 char),
   "VOLUMEN"  varchar2(255 char),
   "NUMERO"  varchar2(255 char),
  primary key ("OID")
);


-- AuxiliarM10_AuxiliarInstrumento [rel30]
alter table "EXPEDIENTE"."AUXILIARINSTRUMENTO"  add  "AUXILIARM10_OID"  number(19,0);
alter table "EXPEDIENTE"."AUXILIARINSTRUMENTO"   add constraint FK_AUXILIARINSTRUMENTO_AUXILIA foreign key ("AUXILIARM10_OID") references "EXPEDIENTE"."AUXILIARM10" ("OID");


