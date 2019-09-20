-- Mandato_DatosFedatario [rel28]
alter table "EXPEDIENTE"."MANDATO"  add  "DATOSNOTARIO_OID"  number(19,0);
alter table "EXPEDIENTE"."MANDATO"   add constraint FK_MANDATO_DATOSNOTARIO foreign key ("DATOSNOTARIO_OID") references "EXPEDIENTE"."DATOSNOTARIO" ("OID");


