-- PersonaFisica [ent8]
create table "public"."personafisica" (
   "user_oid"  int4  not null,
   "anionac"  varchar(255),
   "mesnac"  varchar(255),
   "dianac"  varchar(255),
   "pfactivo"  bool,
   "fechacaducidad"  timestamp,
   "fechainscripcion"  timestamp,
   "pfnacionalidad"  varchar(255),
   "entidadnac"  varchar(255),
   "pfsexo"  varchar(255),
   "rfc"  varchar(255),
   "nombrecompleto"  varchar(255),
   "apellido2"  varchar(255),
   "apellido1"  varchar(255),
   "nombres"  varchar(255),
   "pftelefono"  varchar(255),
   "lasturl"  varchar(255),
  primary key ("user_oid")
);


-- GEN FK: PersonaFisica --> User
alter table "public"."personafisica"   add constraint fk_personafisica_user foreign key ("user_oid") references "public"."user" ("oid");


