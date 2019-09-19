-- REL FK: FedatariosToEstados [rel77#role153]
alter table "EXPEDIENTE"."FEDATARIOS"   add constraint FK_ESTADOS_FEDATARIOS foreign key ("OIDESTADO") references "EXPEDIENTE"."FEDATARIOS" ("OIDFEDATARIO");


