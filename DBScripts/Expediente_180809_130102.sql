-- Mandato [ent37]
create table "public"."mandato" (
   "oid"  int4  not null,
   "fechacaducidad"  timestamp,
   "fechainicio"  timestamp,
   "uripdf"  varchar(255),
   "urixml"  varchar(255),
  primary key ("oid")
);


-- PersonaMoral [ent38]
create table "public"."personamoral" (
   "user_oid"  int4  not null,
   "telefono"  varchar(255),
   "activo"  bool,
   "fechacaducidad"  timestamp,
   "fechainscripcion"  timestamp,
   "razonsocial"  varchar(255),
  primary key ("user_oid")
);


-- PersonaFisica [ent39]
alter table "public"."personafisica"  add column  "fechanac"  varchar(255);


-- PersonaFisica_Poder [rel19]
alter table "public"."personafisica"  add column  "mandato_oid"  int4;
alter table "public"."personafisica"   add constraint fk_personafisica_mandato foreign key ("mandato_oid") references "public"."mandato" ("oid");


-- PersonaFisica_PersonaMoral [rel20]
create table "public"."personafisica_personamoral" (
   "personafisica_oid"  int4 not null,
   "personamoral_oid"  int4 not null,
  primary key ("personafisica_oid", "personamoral_oid")
);
alter table "public"."personafisica_personamoral"   add constraint fk_personafisica_personamoral foreign key ("personafisica_oid") references "public"."personafisica" ("user_oid");
alter table "public"."personafisica_personamoral"   add constraint fk_personafisica_personamora_2 foreign key ("personamoral_oid") references "public"."personamoral" ("user_oid");


-- PersonaFisica_RepresentanteLegal [rel21]
alter table "public"."personafisica"  add column  "personamoral_oid"  int4;
alter table "public"."personafisica"   add constraint fk_personafisica_personamora_3 foreign key ("personamoral_oid") references "public"."personamoral" ("user_oid");


-- PersonaMoral_PersonaFisica [rel22]
alter table "public"."personamoral"  add column  "personafisica_oid"  int4;
alter table "public"."personamoral"   add constraint fk_personamoral_personafisica foreign key ("personafisica_oid") references "public"."personafisica" ("user_oid");


-- Mandato_PersonaFisica [rel23]
alter table "public"."mandato"  add column  "personafisica_oid"  int4;
alter table "public"."mandato"   add constraint fk_mandato_personafisica foreign key ("personafisica_oid") references "public"."personafisica" ("user_oid");


-- PersonaMoral_Poder [rel24]
alter table "public"."personamoral"  add column  "mandato_oid"  int4;
alter table "public"."personamoral"   add constraint fk_personamoral_mandato foreign key ("mandato_oid") references "public"."mandato" ("oid");


-- GEN FK: PersonaMoral --> User
alter table "public"."personamoral"   add constraint fk_personamoral_user foreign key ("user_oid") references "public"."user" ("oid");


