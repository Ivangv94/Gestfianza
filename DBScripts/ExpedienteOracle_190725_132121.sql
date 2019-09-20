-- REL FK: CtrlfiaToTipoGarantia [rel64#role127]
alter table "EXPEDIENTE"."CTRLFIA"   add constraint FK_TIPOGARANTIA_CTRLFIA foreign key ("OIDTIPOGAR") references "EXPEDIENTE"."CTRLFIA" ("OIDCTRLFIA");


-- REL FK: TipoGarantiaToCtrlfia [rel64#role128]
alter table "EXPEDIENTE"."CTRLFIA"   add constraint FK_CTRLFIA_TIPOGARANTIA foreign key ("OIDTIPOGAR") references "EXPEDIENTE"."TIPOGARANTIA" ("OIDTIPOGAR");


