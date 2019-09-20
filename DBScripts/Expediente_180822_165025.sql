-- Bitacora [ent44]
create table "public"."bitacora" (
   "oid"  int4  not null,
   "oiduser"  varchar(255),
   "response"  varchar(255),
   "request"  varchar(255),
   "uri"  varchar(255),
  primary key ("oid")
);


-- Garantias [ent40]
alter table "public"."fianza"  add column  "tipo"  varchar(255);
alter table "public"."fianza"  add column  "fechaorotgamiento"  timestamp;
alter table "public"."fianza"  add column  "fechatermino"  timestamp;
alter table "public"."fianza"  add column  "monto"  varchar(255);
alter table "public"."fianza"  add column  "esadicional"  varchar(255);


-- DatosNotario [ent8]
alter table "public"."datosnotario"  add column  "estatus"  varchar(255);


