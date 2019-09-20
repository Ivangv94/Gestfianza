-- CalidadFedatario [ent40]
create table "EXPEDIENTE"."CALIDADFEDATARIO" (
   "OIDCALIDADFED"  number(10,0)  not null,
   "NOMBRECALIDADFED"  varchar2(255 char),
  primary key ("OIDCALIDADFED")
);


-- EstatusFedatario [ent98]
create table "EXPEDIENTE"."ESTATUSFEDATARIO" (
   "OIDESTATUSFED"  number(10,0)  not null,
   "NOMBREESTATUSFED"  varchar2(255 char),
  primary key ("OIDESTATUSFED")
);


