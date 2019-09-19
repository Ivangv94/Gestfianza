-- Dependencia [rel31]
alter table "public"."personafisica"  add column  "personafisica_oid"  int4;
alter table "public"."personafisica"   add constraint fk_personafisica_personafisica foreign key ("personafisica_oid") references "public"."personafisica" ("user_oid");


