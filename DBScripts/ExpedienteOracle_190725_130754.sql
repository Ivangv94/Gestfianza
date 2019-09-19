-- Ctrlfia [ent88]
create table "EXPEDIENTE"."CTRLFIA" (
   "OIDCTRLFIA"  number(10,0)  not null,
   "OIDFEDATARIO"  number(10,0),
   "OIDAFIANZADORA"  number(10,0),
   "NUMPOLIZA"  varchar2(255 char),
   "FECHAINIC"  timestamp,
   "FECHATERM"  timestamp,
   "MONTOFIA"  varchar2(255 char),
   "OIDESTATUSCTRL"  number(10,0),
   "OIDCALIDADFED"  number(10,0),
   "OIDTIPOGAR"  number(10,0),
   "OIDESTADO"  number(10,0),
   "OIDMUNICIPIO"  number(10,0),
   "OIDTIPOFIANZA"  number(10,0),
  primary key ("OIDCTRLFIA")
);


