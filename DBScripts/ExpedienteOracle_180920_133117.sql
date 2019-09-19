-- verificacionIdentificacion [ent53]
create table "EXPEDIENTE"."VERIFICACIONIDENTIFICACION" (
   "OID"  number(10,0)  not null,
   "PROCESO"  varchar2(255 char),
   "CADENAORIGINAL"  varchar2(255 char),
   "USEROID"  varchar2(255 char),
   "CADENA"  varchar2(255 char),
  primary key ("OID")
);


