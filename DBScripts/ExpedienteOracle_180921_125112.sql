-- DatosPersona [ent52]
create table "EXPEDIENTE"."DATOSPERSONA" (
   "OID"  number(10,0)  not null,
   "USEROID"  varchar2(255 char),
   "RFC"  varchar2(255 char),
   "OCR"  varchar2(255 char),
   "NUMEMISION"  varchar2(255 char),
   "NOMBRE"  varchar2(255 char),
   "FENA"  varchar2(255 char),
   "CURP"  varchar2(255 char),
   "CLAVEELECTORAL"  varchar2(255 char),
   "CIC"  varchar2(255 char),
   "AP2"  varchar2(255 char),
   "AP1"  varchar2(255 char),
   "ANIOREG"  varchar2(255 char),
   "ANIOEMISION"  varchar2(255 char),
  primary key ("OID")
);


