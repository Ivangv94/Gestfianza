-- Decisiones [ent41]
create table "public"."decisiones" (
   "oid"  int4  not null,
   "formadecarga"  varchar(255),
   "informacionvalida"  varchar(255),
  primary key ("oid")
);


-- Poder [ent42]
create table "public"."poder" (
   "oid"  int4  not null,
   "poderxmlafirmar"  varchar(255),
   "poderpdfafirmar"  varchar(255),
   "poderxmlfirmado"  varchar(255),
   "poderpdffirmado"  varchar(255),
   "boletadeinscripcion"  varchar(255),
  primary key ("oid")
);


