-- ControFianzas [ent80]
create table "EXPEDIENTE"."CONTROFIANZAS" (
   "OIDCONTROLFIANZAS"  number(10,0)  not null,
   "OIDFEDATARIO"  number(10,0),
   "OIDTIPOFIANZA"  number(10,0),
   "OIDAFIANZADORA"  number(10,0),
   "NUMEROPOLIZA"  varchar2(255 char),
   "FECHAINICIO"  timestamp,
   "FECHATERMINO"  timestamp,
   "MONTOFIANZA"  varchar2(255 char),
   "OIDESTATUSCTRLFIA"  number(10,0),
   "OIDCALIDADFED"  number(10,0),
   "OIDTIPOGAR"  number(10,0),
   "OIDESTADO"  number(10,0),
   "OIDMUNICIPIO"  number(10,0),
  primary key ("OIDCONTROLFIANZAS")
);


