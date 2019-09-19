-- Cadenas [ent3]
create table "public"."cadenas" (
   "oid"  int4  not null,
   "xml_sig_tag"  text,
   "modulus"  text,
   "certificado_x509"  text,
   "nombre_emisor_cert"  text,
   "nombre_sujeto_x509"  text,
   "documento_firmado"  varchar(255),
   "uri"  varchar(255),
   "sello_digital"  text,
   "hash_cadena"  varchar(255),
   "fechas_vigencia"  varchar(255),
   "serie_cert"  varchar(255),
   "cadena"  text,
   "time_stamp"  varchar(255),
   "curp_o_rfc_firmante"  varchar(255),
   "nombre_o_razon_social_firmante"  varchar(255),
   "proceso"  int4,
   "folio"  varchar(255),
  primary key ("oid")
);


