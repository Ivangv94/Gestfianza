-- Instrumento [ent45]
create table "EXPEDIENTE"."INSTRUMENTO" (
   "OID"  number(10,0)  not null,
   "FOJA"  varchar2(255 char),
   "LIBRO"  varchar2(255 char),
   "VOLUMEN"  varchar2(255 char),
   "NUMERO"  varchar2(255 char),
   "ISESCRITURA"  varchar2(255 char),
   "FECHA"  varchar2(255 char),
  primary key ("OID")
);


-- Instrumento_Mandato [rel27]
alter table "EXPEDIENTE"."MANDATO"  add  "INSTRUMENTO_OID"  number(10,0);
alter table "EXPEDIENTE"."MANDATO"   add constraint FK_MANDATO_INSTRUMENTO foreign key ("INSTRUMENTO_OID") references "EXPEDIENTE"."INSTRUMENTO" ("OID");


