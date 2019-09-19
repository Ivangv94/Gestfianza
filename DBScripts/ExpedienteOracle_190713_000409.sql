-- TipoFianza [ent80]
create table "EXPEDIENTE"."TIPOFIANZA" (
   "OITIDPOFIANZA"  number(10,0)  not null,
   "NOMBRETIPOFIANZA"  varchar2(255 char),
   "COMENTARIOTIPOFIANZA"  varchar2(255 char),
   "OIDESTATUSTIPOFIA"  number(10,0),
  primary key ("OITIDPOFIANZA")
);


-- EstatusTipoFianza [ent81]
create table "EXPEDIENTE"."ESTATUSTIPOFIANZA" (
   "OIDESTATUSTIPFIA"  number(10,0)  not null,
   "NOMBREESTATUSTIPOFIA"  varchar2(255 char),
  primary key ("OIDESTATUSTIPFIA")
);


