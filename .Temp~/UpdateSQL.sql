-- REL FK: AfianzadoraToCtrlfia [rel72#role144]
alter table "EXPEDIENTE"."CTRLFIA"   add constraint FK_CTRLFIA_AFIANZADORA foreign key ("OIDAFIANZADORA") references "EXPEDIENTE"."AFIANZADORA" ("OIDAFIANZADORA");


