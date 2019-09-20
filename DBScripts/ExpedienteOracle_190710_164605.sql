-- REL FK: FedatariosToEstados [rel77#role153]
alter table "EXPEDIENTE"."FEDATARIOS"   add constraint FK_ESTADOS_FEDATARIOS foreign key ("OIDESTADO") references "EXPEDIENTE"."FEDATARIOS" ("OIDFEDATARIO");


-- REL FK: EstadosToFedatarios [rel77#role154]
alter table "EXPEDIENTE"."FEDATARIOS"   add constraint FK_FEDATARIOS_ESTADOS foreign key ("OIDESTADO") references "EXPEDIENTE"."ESTADOS" ("OIDESTADO");


