-- DatosNotario [ent8]
create table "public"."datosnotario" (
   "oid"  int4  not null,
   "vigenciafianza"  varchar(255),
   "fianza"  varchar(255),
   "municipio"  varchar(255),
   "entidad"  varchar(255),
   "nombrecompleto"  varchar(255),
  primary key ("oid")
);


-- DatosNotario_PersonaFisica [rel25]
alter table "public"."datosnotario"  add column  "personafisica_oid"  int4;
alter table "public"."datosnotario"   add constraint fk_datosnotario_personafisica foreign key ("personafisica_oid") references "public"."personafisica" ("user_oid");


