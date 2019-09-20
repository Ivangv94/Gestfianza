-- GEN FK: TipoFianza --> EstatusTipoFianza
alter table "EXPEDIENTE"."TIPOFIANZA"   add constraint FK_TIPOFIANZA_ESTATUSTIPOFIANZ foreign key ("OIDTIPOFIANZA") references "EXPEDIENTE"."ESTATUSTIPOFIANZA" ("OIDTIPOFIANZA");


