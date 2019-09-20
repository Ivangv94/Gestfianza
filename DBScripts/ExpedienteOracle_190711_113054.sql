-- ControlFianzas [ent80]
create table "EXPEDIENTE"."CONTROFIANZAS" (
   "OIDCONTROLFIANZAS"  number(10,0)  not null,
   "OIDTIPOFIANZA"  number(10,0),
   "OIDAFIANZADORA"  number(10,0),
   "NUMEROPOLIZA"  varchar2(255 char),
   "FECHAINICIO"  timestamp,
   "FECHATERMINO"  timestamp,
   "MONTOFIANZA"  varchar2(255 char),
   "OIDESTATUSCTRLFIA"  number(10,0),
   "OIDTIPOGAR"  number(10,0),
  primary key ("OIDCONTROLFIANZAS")
);


-- ControfianzasCalidadfedatario [rel53]
alter table "EXPEDIENTE"."CONTROFIANZAS"  add  "OIDCALIDADFED"  number(19,0);
alter table "EXPEDIENTE"."CONTROFIANZAS"   add constraint FK_CONTROFIANZAS_CALIDADFEDATA foreign key ("OIDCALIDADFED") references "EXPEDIENTE"."CALIDADFEDATARIO" ("OIDCALIDADFED");


-- ControfianzasEstados [rel57]
alter table "EXPEDIENTE"."CONTROFIANZAS"  add  "OIDESTADO"  number(19,0);
alter table "EXPEDIENTE"."CONTROFIANZAS"   add constraint FK_CONTROFIANZAS_ESTADOS foreign key ("OIDESTADO") references "EXPEDIENTE"."ESTADOS" ("OIDESTADO");


-- ControfianzasFedatarios [rel58]
alter table "EXPEDIENTE"."CONTROFIANZAS"  add  "OIDFEDATARIO"  number(19,0);
alter table "EXPEDIENTE"."CONTROFIANZAS"   add constraint FK_CONTROFIANZAS_FEDATARIOS foreign key ("OIDFEDATARIO") references "EXPEDIENTE"."FEDATARIOS" ("OIDFEDATARIO");


-- ControfianzasMunicipios [rel64]
alter table "EXPEDIENTE"."CONTROFIANZAS"  add  "OIDMUNICIPIO"  number(19,0);
alter table "EXPEDIENTE"."CONTROFIANZAS"   add constraint FK_CONTROFIANZAS_MUNICIPIOS foreign key ("OIDMUNICIPIO") references "EXPEDIENTE"."MUNICIPIOS" ("OIDMUNICIPIO");


