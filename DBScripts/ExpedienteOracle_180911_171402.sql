-- xml [ent48]
create table "EXPEDIENTE"."XML" (
   "OID"  number(10,0)  not null,
   "INDEX"  number(10,0),
   "VALUE"  varchar2(255 char),
   "TAG"  varchar2(255 char),
  primary key ("OID")
);


-- xml_xml [rel32]
alter table "EXPEDIENTE"."XML"  add  "XML_OID"  number(10,0);
alter table "EXPEDIENTE"."XML"   add constraint FK_XML_XML foreign key ("XML_OID") references "EXPEDIENTE"."XML" ("OID");


