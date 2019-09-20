-- Fianza [ent40]
create table "public"."fianza" (
   "oid"  int4  not null,
   "activa"  bool,
   "vigencia"  varchar(255),
  primary key ("oid")
);


-- Fianza_DatosNotario [rel26]
alter table "public"."fianza"  add column  "datosnotario_oid"  int4;
alter table "public"."fianza"   add constraint fk_fianza_datosnotario foreign key ("datosnotario_oid") references "public"."datosnotario" ("oid");


