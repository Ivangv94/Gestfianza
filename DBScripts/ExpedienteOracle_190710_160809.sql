-- Fedatarios [ent96]
create table "EXPEDIENTE"."FEDATARIOS" (
   "OIDFEDATARIO"  number(10,0)  not null,
   "NOMBREFED"  varchar2(255 char),
   "PRIMAPELLIDO"  varchar2(255 char),
   "SEGUNAPELLIDO"  varchar2(255 char),
   "OIDESTADO"  number(10,0),
   "NUMFED"  number(10,0),
   "CORREOFED"  varchar2(255 char),
   "ESTATUSFED"  number(10,0),
   "NOMBRECOMFED"  varchar2(255 char),
   "OIDCALIDADFED"  number(10,0),
   "OIDTIPOFED"  number(10,0),
   "RFCFED"  varchar2(255 char),
   "CURPFED"  varchar2(255 char),
   "OIDMUNICIPIO"  number(10,0),
   "OIDOBSERVACIONES"  varchar2(255 char),
  primary key ("OIDFEDATARIO")
);


