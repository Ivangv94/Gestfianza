-- Parametros [ent82]
create table "EXPEDIENTE"."PARAMETROS" (
   "OIDPARAMETRO"  number(10,0)  not null,
   "OIDESTADO"  number(10,0),
   "MONTOPARAMETRO"  varchar2(255 char),
   "FECHAINICIO"  timestamp,
   "FECHAACTUALIZACION"  timestamp,
  primary key ("OIDPARAMETRO")
);


