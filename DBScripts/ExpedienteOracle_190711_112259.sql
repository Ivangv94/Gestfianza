-- TipoFianza [ent81]
create table "EXPEDIENTE"."TIPOFIANZA" (
   "OIDTIPOFIANZA"  number(10,0)  not null,
   "NOMBREFIANZA"  varchar2(255 char),
   "OIDESTATUSTIPOFIANZA"  number(10,0),
   "COMENTARIOTIPOFIANZA"  varchar2(255 char),
  primary key ("OIDTIPOFIANZA")
);


-- EstatusTipoFianza [ent82]
create table "EXPEDIENTE"."ESTATUSTIPOFIANZA" (
   "OIDTIPOFIANZA"  number(10,0)  not null,
   "NOMBREESTATUSTIPOFI"  varchar2(255 char),
  primary key ("OIDTIPOFIANZA")
);


-- Afianzadora [ent83]
create table "EXPEDIENTE"."AFIANZADORA" (
   "OIDAFIANZADORA"  number(10,0)  not null,
   "NOMBREAFIANZADORA"  varchar2(255 char),
   "ESTATUSAFIANZADORA"  number(10,0),
  primary key ("OIDAFIANZADORA")
);


-- EstatusAfianzadora [ent84]
create table "EXPEDIENTE"."ESTATUSAFIANZADORA" (
   "OIDESTATUSAFIANZADORA"  number(10,0)  not null,
   "NOMBREESTATUSAFIANZADORA"  number(10,0),
  primary key ("OIDESTATUSAFIANZADORA")
);


-- EstatusCtrlFianza [ent85]
create table "EXPEDIENTE"."ESTATUSCTRLFIANZA" (
   "OIDESTATUSCTRLFIA"  number(10,0)  not null,
   "ESTATUSCTRL"  varchar2(255 char),
  primary key ("OIDESTATUSCTRLFIA")
);


-- TipoGarantia [ent86]
create table "EXPEDIENTE"."TIPOGARANTIA" (
   "OIDTIPOGAR"  number(10,0)  not null,
   "MBRETIPOGAR"  varchar2(255 char),
  primary key ("OIDTIPOGAR")
);


