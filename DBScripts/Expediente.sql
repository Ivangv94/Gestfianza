-- ActivityInstance [ActivityInstance]
create table "EXPEDIENTE"."ACTIVITYINSTANCE" (
   "OID"  number(10,0)  not null,
   "NAME"  varchar2(255 char),
   "STATUS"  varchar2(255 char),
   "READY_SINCE"  timestamp,
   "ACTIVE_SINCE"  timestamp,
   "COMPLETED_AT"  timestamp,
   "ABORTED_AT"  timestamp,
   "CANCELLED_AT"  timestamp,
   "WORKED_AT"  timestamp,
   "ROLLBACKABLE"  number(1,0),
   "CONTEXT"  varchar2(255 char),
  primary key ("OID")
);
create index "IDX_ACTIVITYINSTANCE_STATUS" on "EXPEDIENTE"."ACTIVITYINSTANCE"("STATUS");


-- ActivityType [ActivityType]
create table "EXPEDIENTE"."ACTIVITYTYPE" (
   "OID"  number(10,0)  not null,
   "ID"  varchar2(255 char),
   "CODE"  varchar2(255 char),
   "NAME"  varchar2(255 char),
   "DEFAULT_INSTANCE_NAME"  varchar2(255 char),
   "DESCRIPTION"  clob,
   "TYPE"  varchar2(255 char),
   "EXECUTION"  varchar2(255 char),
   "SORT_NUMBER"  double precision,
   "UUID"  varchar2(255 char),
  primary key ("OID")
);
create index "IDX_ACTIVITYTYPE_TYPE" on "EXPEDIENTE"."ACTIVITYTYPE"("TYPE");
create index "IDX_ACTIVITYTYPE_EXECUTION" on "EXPEDIENTE"."ACTIVITYTYPE"("EXECUTION");
create index "IDX_ACTIVITYTYPE_UUID" on "EXPEDIENTE"."ACTIVITYTYPE"("UUID");


-- Attachment [Attachment]
create table "EXPEDIENTE"."ATTACHMENT" (
   "OID"  number(10,0)  not null,
   "FILE"  varchar2(255 char),
   "TITLE"  varchar2(255 char),
   "TIMESTAMP"  timestamp,
  primary key ("OID")
);


-- Group [Group]
create table "EXPEDIENTE"."GROUP" (
   "OID"  number(10,0)  not null,
   "GROUPNAME"  varchar2(255 char),
  primary key ("OID")
);


-- Module [Module]
create table "EXPEDIENTE"."MODULE" (
   "OID"  number(10,0)  not null,
   "MODULEID"  varchar2(255 char),
   "MODULENAME"  varchar2(255 char),
   "MODULEDOMAINNAME"  varchar2(255 char),
  primary key ("OID")
);


-- Note [Note]
create table "EXPEDIENTE"."NOTE" (
   "OID"  number(10,0)  not null,
   "TEXT"  clob,
   "TIMESTAMP"  timestamp,
  primary key ("OID")
);


-- Notification [Notification]
create table "EXPEDIENTE"."NOTIFICATION" (
   "OID"  number(10,0)  not null,
   "MESSAGE"  varchar2(255 char),
   "READ"  number(1,0),
  primary key ("OID")
);


-- ParameterInstance [ParameterInstance]
create table "EXPEDIENTE"."PARAMETERINSTANCE" (
   "OID"  number(10,0)  not null,
   "VALUE"  varchar2(255 char),
   "CURRENT"  number(1,0),
   "TIMESTAMP"  timestamp,
  primary key ("OID")
);
create index "IDX_PARAMETERINSTANCE_CURRENT" on "EXPEDIENTE"."PARAMETERINSTANCE"("CURRENT");


-- ParameterType [ParameterType]
create table "EXPEDIENTE"."PARAMETERTYPE" (
   "OID"  number(10,0)  not null,
   "NAME"  varchar2(255 char),
   "DESCRIPTION"  varchar2(255 char),
   "TYPE"  varchar2(255 char),
  primary key ("OID")
);
create index "IDX_PARAMETERTYPE_NAME" on "EXPEDIENTE"."PARAMETERTYPE"("NAME");


-- Process [Process]
create table "EXPEDIENTE"."PROCESS" (
   "OID"  number(10,0)  not null,
   "CODE"  varchar2(255 char),
   "NAME"  varchar2(255 char),
   "DEFAULT_INSTANCE_NAME"  varchar2(255 char),
   "DESCRIPTION"  clob,
   "UUID"  varchar2(255 char),
   "VERSION"  varchar2(255 char),
  primary key ("OID")
);
create index "IDX_PROCESS_UUID" on "EXPEDIENTE"."PROCESS"("UUID");


-- ProcessInstance [ProcessInstance]
create table "EXPEDIENTE"."PROCESSINSTANCE" (
   "OID"  number(10,0)  not null,
   "NAME"  varchar2(255 char),
   "SUBPROCESSINDEX"  number(10,0),
   "STATUS"  varchar2(255 char),
   "ACTIVE_SINCE"  timestamp,
   "COMPLETED_AT"  timestamp,
   "CANCELLED_AT"  timestamp,
   "ABORTED_AT"  timestamp,
  primary key ("OID")
);
create index "IDX_PROCESSINSTANCE_STATUS" on "EXPEDIENTE"."PROCESSINSTANCE"("STATUS");


-- SequenceFlow [SequenceFlow]
create table "EXPEDIENTE"."SEQUENCEFLOW" (
   "OID"  number(10,0)  not null,
   "LABEL"  varchar2(255 char),
   "CONDITION"  varchar2(255 char),
   "DEFAULT"  number(1,0),
   "SORT_NUMBER"  double precision,
  primary key ("OID")
);


-- User [User]
create table "EXPEDIENTE"."USER" (
   "OID"  number(10,0)  not null,
   "USERNAME"  varchar2(255 char),
   "PASSWORD"  varchar2(255 char),
   "EMAIL"  varchar2(255 char),
  primary key ("OID")
);


-- Documentos [ent1]
create table "EXPEDIENTE"."DOCUMENTOS" (
   "OID"  number(10,0)  not null,
   "ESQUEMADETRAMITACION"  varchar2(255 char),
   "NOMBREARCHIVO"  varchar2(255 char),
   "TAMANIO"  varchar2(255 char),
   "EXTENSION"  varchar2(255 char),
   "FOLIO"  varchar2(255 char),
   "ARCHIVO"  varchar2(255 char),
   "ETAPAVIDAEMPRESARIAL"  varchar2(255 char),
   "URI"  varchar2(255 char),
  primary key ("OID")
);


-- Elementos Administrables [ent2]
create table "EXPEDIENTE"."ELEMENTOS_ADMINISTRABLES" (
   "OID"  number(10,0)  not null,
   "ELEMENTO_ADMINISTRABLE"  varchar2(255 char),
   "VALOR"  varchar2(255 char),
  primary key ("OID")
);


-- Cadenas [ent3]
create table "EXPEDIENTE"."CADENAS" (
   "OID"  number(10,0)  not null,
   "XML_SIG_TAG"  clob,
   "MODULUS"  clob,
   "CERTIFICADO_X509"  clob,
   "NOMBRE_EMISOR_CERT"  clob,
   "NOMBRE_SUJETO_X509"  clob,
   "DOCUMENTO_FIRMADO"  varchar2(255 char),
   "URI"  varchar2(255 char),
   "SELLO_DIGITAL"  clob,
   "HASH_CADENA"  varchar2(255 char),
   "FECHAS_VIGENCIA"  varchar2(255 char),
   "SERIE_CERT"  varchar2(255 char),
   "CADENA"  clob,
   "TIME_STAMP"  varchar2(255 char),
   "CURP_O_RFC_FIRMANTE"  varchar2(255 char),
   "NOMBRE_O_RAZON_SOCIAL_FIRMANTE"  varchar2(255 char),
   "PROCESO"  number(10,0),
   "FOLIO"  varchar2(255 char),
  primary key ("OID")
);


-- Mandato [ent37]
create table "EXPEDIENTE"."MANDATO" (
   "OID"  number(10,0)  not null,
   "FECHACADUCIDAD"  timestamp,
   "FECHAINICIO"  timestamp,
   "URIPDF"  varchar2(255 char),
   "URIXML"  varchar2(255 char),
  primary key ("OID")
);


-- PersonaMoral [ent38]
create table "EXPEDIENTE"."PERSONAMORAL" (
   "USER_OID"  number(10,0)  not null,
   "TELEFONO"  varchar2(255 char),
   "ACTIVO"  number(1,0),
   "FECHACADUCIDAD"  timestamp,
   "FECHAINSCRIPCION"  timestamp,
   "RAZONSOCIAL"  varchar2(255 char),
  primary key ("USER_OID")
);


-- PersonaFisica [ent39]
create table "EXPEDIENTE"."PERSONAFISICA" (
   "USER_OID"  number(10,0)  not null,
   "PFTELEFONO"  varchar2(255 char),
   "FECHANAC"  varchar2(255 char),
   "ANIONAC"  varchar2(255 char),
   "MESNAC"  varchar2(255 char),
   "DIANAC"  varchar2(255 char),
   "PFACTIVO"  number(1,0),
   "FECHACADUCIDAD"  timestamp,
   "FECHAINSCRIPCION"  timestamp,
   "PFNACIONALIDAD"  varchar2(255 char),
   "ENTIDADNAC"  varchar2(255 char),
   "PFSEXO"  varchar2(255 char),
   "RFC"  varchar2(255 char),
   "NOMBRECOMPLETO"  varchar2(255 char),
   "APELLIDO2"  varchar2(255 char),
   "APELLIDO1"  varchar2(255 char),
   "NOMBRE"  varchar2(255 char),
  primary key ("USER_OID")
);


-- Garantias [ent40]
create table "EXPEDIENTE"."FIANZA" (
   "OID"  number(10,0)  not null,
   "ESADICIONAL"  varchar2(255 char),
   "MONTO"  varchar2(255 char),
   "FECHATERMINO"  timestamp,
   "FECHAOROTGAMIENTO"  timestamp,
   "TIPO"  varchar2(255 char),
   "ACTIVA"  number(1,0),
   "VIGENCIA"  varchar2(255 char),
  primary key ("OID")
);


-- Decisiones [ent41]
create table "EXPEDIENTE"."DECISIONES" (
   "OID"  number(10,0)  not null,
   "FORMADECARGA"  varchar2(255 char),
   "INFORMACIONVALIDA"  varchar2(255 char),
  primary key ("OID")
);


-- Poder [ent42]
create table "EXPEDIENTE"."PODER" (
   "OID"  number(10,0)  not null,
   "PODERXMLAFIRMAR"  varchar2(255 char),
   "PODERPDFAFIRMAR"  varchar2(255 char),
   "PODERXMLFIRMADO"  varchar2(255 char),
   "PODERPDFFIRMADO"  varchar2(255 char),
   "BOLETADEINSCRIPCION"  varchar2(255 char),
  primary key ("OID")
);


-- archivoXML [ent43]
create table "EXPEDIENTE"."ARCHIVOXML" (
   "OID"  number(10,0)  not null,
   "XML"  varchar2(255 char),
  primary key ("OID")
);


-- Bitacora [ent44]
create table "EXPEDIENTE"."BITACORA" (
   "OID"  number(10,0)  not null,
   "OIDUSER"  varchar2(255 char),
   "RESPONSE"  varchar2(255 char),
   "REQUEST"  varchar2(255 char),
   "URI"  varchar2(255 char),
  primary key ("OID")
);


-- Texto [ent5]
create table "EXPEDIENTE"."TEXTO" (
   "OID"  number(10,0)  not null,
   "TEXTO"  clob,
   "DESCRIPCION"  varchar2(255 char),
  primary key ("OID")
);


-- DatosFedatario [ent8]
create table "EXPEDIENTE"."DATOSNOTARIO" (
   "OID"  number(10,0)  not null,
   "MUNICIPIO"  varchar2(255 char),
   "ENTIDAD"  varchar2(255 char),
   "NUMERO"  varchar2(255 char),
   "ESTATUS"  varchar2(255 char),
   "NOMBRECOMPLETO"  varchar2(255 char),
   "TIPO"  varchar2(255 char),
  primary key ("OID")
);


-- ActivityInstance_CandidateUser [ActivityInstance_CandidateUser]
create table "EXPEDIENTE"."ACTIVITYINSTANCE_CANDIDATEUSER" (
   "ACTIVITYINSTANCE_OID"  number(10,0) not null,
   "USER_OID"  number(10,0) not null,
  primary key ("ACTIVITYINSTANCE_OID", "USER_OID")
);
alter table "EXPEDIENTE"."ACTIVITYINSTANCE_CANDIDATEUSER"   add constraint FK_ACTIVITYINSTANCE_CANDIDAT_2 foreign key ("ACTIVITYINSTANCE_OID") references "EXPEDIENTE"."ACTIVITYINSTANCE" ("OID");
alter table "EXPEDIENTE"."ACTIVITYINSTANCE_CANDIDATEUSER"   add constraint FK_ACTIVITYINSTANCE_CANDIDATEU foreign key ("USER_OID") references "EXPEDIENTE"."USER" ("OID");


-- ActivityInstance_Group [ActivityInstance_Group]
alter table "EXPEDIENTE"."ACTIVITYINSTANCE"  add  "GROUP_OID"  number(10,0);
alter table "EXPEDIENTE"."ACTIVITYINSTANCE"   add constraint FK_ACTIVITYINSTANCE_GROUP foreign key ("GROUP_OID") references "EXPEDIENTE"."GROUP" ("OID");


-- ActivityInstance_NextActivityInstanceNotes [ActivityInstance_NextActivityInstanceNotes]
alter table "EXPEDIENTE"."NOTE"  add  "ACTIVITYINSTANCE_OID"  number(10,0);
alter table "EXPEDIENTE"."NOTE"   add constraint FK_NOTE_ACTIVITYINSTANCE foreign key ("ACTIVITYINSTANCE_OID") references "EXPEDIENTE"."ACTIVITYINSTANCE" ("OID");


-- ActivityInstance_Notification [ActivityInstance_Notifications]
alter table "EXPEDIENTE"."NOTIFICATION"  add  "ACTIVITYINSTANCE_OID"  number(10,0);
alter table "EXPEDIENTE"."NOTIFICATION"   add constraint FK_NOTIFICATION_ACTIVITYINSTAN foreign key ("ACTIVITYINSTANCE_OID") references "EXPEDIENTE"."ACTIVITYINSTANCE" ("OID");


-- ActivityType_ActivityInstance [ActivityType_ActivityInstance]
alter table "EXPEDIENTE"."ACTIVITYINSTANCE"  add  "ACTIVITYTYPE_OID"  number(10,0);
alter table "EXPEDIENTE"."ACTIVITYINSTANCE"   add constraint FK_ACTIVITYINSTANCE_ACTIVITYTY foreign key ("ACTIVITYTYPE_OID") references "EXPEDIENTE"."ACTIVITYTYPE" ("OID");


-- Attachment_ProcessInstance [Attachment_ProcessInstance]
create table "EXPEDIENTE"."ATTACHMENT_PROCESSINSTANCE" (
   "ATTACHMENT_OID"  number(10,0) not null,
   "PROCESSINSTANCE_OID"  number(10,0) not null,
  primary key ("ATTACHMENT_OID", "PROCESSINSTANCE_OID")
);
alter table "EXPEDIENTE"."ATTACHMENT_PROCESSINSTANCE"   add constraint FK_ATTACHMENT_PROCESSINSTANCE foreign key ("ATTACHMENT_OID") references "EXPEDIENTE"."ATTACHMENT" ("OID");
alter table "EXPEDIENTE"."ATTACHMENT_PROCESSINSTANCE"   add constraint FK_ATTACHMENT_PROCESSINSTANC_2 foreign key ("PROCESSINSTANCE_OID") references "EXPEDIENTE"."PROCESSINSTANCE" ("OID");


-- Attachment_User [Attachment_User]
alter table "EXPEDIENTE"."ATTACHMENT"  add  "USER_OID"  number(10,0);
alter table "EXPEDIENTE"."ATTACHMENT"   add constraint FK_ATTACHMENT_USER foreign key ("USER_OID") references "EXPEDIENTE"."USER" ("OID");


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "EXPEDIENTE"."GROUP"  add  "MODULE_OID"  number(10,0);
alter table "EXPEDIENTE"."GROUP"   add constraint FK_GROUP_MODULE foreign key ("MODULE_OID") references "EXPEDIENTE"."MODULE" ("OID");


-- Group_Module [Group2Module_Module2Group]
create table "EXPEDIENTE"."GROUP_MODULE" (
   "GROUP_OID"  number(10,0) not null,
   "MODULE_OID"  number(10,0) not null,
  primary key ("GROUP_OID", "MODULE_OID")
);
alter table "EXPEDIENTE"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_GROUP foreign key ("GROUP_OID") references "EXPEDIENTE"."GROUP" ("OID");
alter table "EXPEDIENTE"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_MODULE foreign key ("MODULE_OID") references "EXPEDIENTE"."MODULE" ("OID");


-- Group_ActivityType [Group_ActivityType]
create table "EXPEDIENTE"."GROUP_ACTIVITYTYPE" (
   "GROUP_OID"  number(10,0) not null,
   "ACTIVITYTYPE_OID"  number(10,0) not null,
  primary key ("GROUP_OID", "ACTIVITYTYPE_OID")
);
alter table "EXPEDIENTE"."GROUP_ACTIVITYTYPE"   add constraint FK_GROUP_ACTIVITYTYPE_GROUP foreign key ("GROUP_OID") references "EXPEDIENTE"."GROUP" ("OID");
alter table "EXPEDIENTE"."GROUP_ACTIVITYTYPE"   add constraint FK_GROUP_ACTIVITYTYPE_ACTIVITY foreign key ("ACTIVITYTYPE_OID") references "EXPEDIENTE"."ACTIVITYTYPE" ("OID");


-- NextActivityType_PreviousSequenceFlow [NextActivityType_PreviousSequenceFlow]
alter table "EXPEDIENTE"."SEQUENCEFLOW"  add  "ACTIVITYTYPE_OID"  number(10,0);
alter table "EXPEDIENTE"."SEQUENCEFLOW"   add constraint FK_SEQUENCEFLOW_ACTIVITYTYPE foreign key ("ACTIVITYTYPE_OID") references "EXPEDIENTE"."ACTIVITYTYPE" ("OID");


-- Note_ActivityInstance [Note_ActivityInstance]
create table "EXPEDIENTE"."NOTE_ACTIVITYINSTANCE" (
   "NOTE_OID"  number(10,0) not null,
   "ACTIVITYINSTANCE_OID"  number(10,0) not null,
  primary key ("NOTE_OID", "ACTIVITYINSTANCE_OID")
);
alter table "EXPEDIENTE"."NOTE_ACTIVITYINSTANCE"   add constraint FK_NOTE_ACTIVITYINSTANCE_NOTE foreign key ("NOTE_OID") references "EXPEDIENTE"."NOTE" ("OID");
alter table "EXPEDIENTE"."NOTE_ACTIVITYINSTANCE"   add constraint FK_NOTE_ACTIVITYINSTANCE_ACTIV foreign key ("ACTIVITYINSTANCE_OID") references "EXPEDIENTE"."ACTIVITYINSTANCE" ("OID");


-- Note_ProcessInstance [Note_ProcessInstance]
create table "EXPEDIENTE"."NOTE_PROCESSINSTANCE" (
   "NOTE_OID"  number(10,0) not null,
   "PROCESSINSTANCE_OID"  number(10,0) not null,
  primary key ("NOTE_OID", "PROCESSINSTANCE_OID")
);
alter table "EXPEDIENTE"."NOTE_PROCESSINSTANCE"   add constraint FK_NOTE_PROCESSINSTANCE_NOTE foreign key ("NOTE_OID") references "EXPEDIENTE"."NOTE" ("OID");
alter table "EXPEDIENTE"."NOTE_PROCESSINSTANCE"   add constraint FK_NOTE_PROCESSINSTANCE_PROCES foreign key ("PROCESSINSTANCE_OID") references "EXPEDIENTE"."PROCESSINSTANCE" ("OID");


-- Note_User [Note_User]
alter table "EXPEDIENTE"."NOTE"  add  "USER_OID"  number(10,0);
alter table "EXPEDIENTE"."NOTE"   add constraint FK_NOTE_USER foreign key ("USER_OID") references "EXPEDIENTE"."USER" ("OID");


-- ParameterInstance_ActivityInstance [ParameterInstance_ActivityInstance]
alter table "EXPEDIENTE"."PARAMETERINSTANCE"  add  "ACTIVITYINSTANCE_OID"  number(10,0);
alter table "EXPEDIENTE"."PARAMETERINSTANCE"   add constraint FK_PARAMETERINSTANCE_ACTIVITYI foreign key ("ACTIVITYINSTANCE_OID") references "EXPEDIENTE"."ACTIVITYINSTANCE" ("OID");


-- ParameterType_ParameterInstance [ParameterType_ParameterInstance]
alter table "EXPEDIENTE"."PARAMETERINSTANCE"  add  "PARAMETERTYPE_OID"  number(10,0);
alter table "EXPEDIENTE"."PARAMETERINSTANCE"   add constraint FK_PARAMETERINSTANCE_PARAMETER foreign key ("PARAMETERTYPE_OID") references "EXPEDIENTE"."PARAMETERTYPE" ("OID");


-- PreviousActivityInstance_NextActivityInstance [PreviousActivityInstance_NextActivityInstance]
create table "EXPEDIENTE"."PREVIOUSACTIVITYINSTANCE_NEXTA" (
   "ACTIVITYINSTANCE_OID_2"  number(10,0) not null,
   "ACTIVITYINSTANCE_OID"  number(10,0) not null,
  primary key ("ACTIVITYINSTANCE_OID_2", "ACTIVITYINSTANCE_OID")
);
alter table "EXPEDIENTE"."PREVIOUSACTIVITYINSTANCE_NEXTA"   add constraint FK_PREVIOUSACTIVITYINSTANCE_NE foreign key ("ACTIVITYINSTANCE_OID_2") references "EXPEDIENTE"."ACTIVITYINSTANCE" ("OID");
alter table "EXPEDIENTE"."PREVIOUSACTIVITYINSTANCE_NEXTA"   add constraint FK_PREVIOUSACTIVITYINSTANCE_2 foreign key ("ACTIVITYINSTANCE_OID") references "EXPEDIENTE"."ACTIVITYINSTANCE" ("OID");


-- PreviousActivityType_NextSequenceFlow [PreviousActivityType_NextSequenceFlow]
alter table "EXPEDIENTE"."SEQUENCEFLOW"  add  "ACTIVITYTYPE_OID_2"  number(10,0);
alter table "EXPEDIENTE"."SEQUENCEFLOW"   add constraint FK_SEQUENCEFLOW_ACTIVITYTYPE_2 foreign key ("ACTIVITYTYPE_OID_2") references "EXPEDIENTE"."ACTIVITYTYPE" ("OID");


-- ProcessInstance_ActivityInstance [ProcessInstance_ActivityInstance]
alter table "EXPEDIENTE"."ACTIVITYINSTANCE"  add  "PROCESSINSTANCE_OID"  number(10,0);
alter table "EXPEDIENTE"."ACTIVITYINSTANCE"   add constraint FK_ACTIVITYINSTANCE_PROCESSINS foreign key ("PROCESSINSTANCE_OID") references "EXPEDIENTE"."PROCESSINSTANCE" ("OID");


-- ProcessInstance_ParameterInstance [ProcessInstance_ParameterInstance]
alter table "EXPEDIENTE"."PARAMETERINSTANCE"  add  "PROCESSINSTANCE_OID"  number(10,0);
alter table "EXPEDIENTE"."PARAMETERINSTANCE"   add constraint FK_PARAMETERINSTANCE_PROCESSIN foreign key ("PROCESSINSTANCE_OID") references "EXPEDIENTE"."PROCESSINSTANCE" ("OID");


-- ProcessInstance_Process [ProcessInstance_Process]
alter table "EXPEDIENTE"."PROCESSINSTANCE"  add  "PROCESS_OID"  number(10,0);
alter table "EXPEDIENTE"."PROCESSINSTANCE"   add constraint FK_PROCESSINSTANCE_PROCESS foreign key ("PROCESS_OID") references "EXPEDIENTE"."PROCESS" ("OID");


-- Process_ActivityType [Process_ActivityType]
alter table "EXPEDIENTE"."ACTIVITYTYPE"  add  "PROCESS_OID"  number(10,0);
alter table "EXPEDIENTE"."ACTIVITYTYPE"   add constraint FK_ACTIVITYTYPE_PROCESS foreign key ("PROCESS_OID") references "EXPEDIENTE"."PROCESS" ("OID");


-- Process_ParameterType [Process_ParameterType]
alter table "EXPEDIENTE"."PARAMETERTYPE"  add  "PROCESS_OID"  number(10,0);
alter table "EXPEDIENTE"."PARAMETERTYPE"   add constraint FK_PARAMETERTYPE_PROCESS foreign key ("PROCESS_OID") references "EXPEDIENTE"."PROCESS" ("OID");


-- SubprocessInstances_ParentProcessInstance [SubprocessInstances_ParentProcessInstance]
alter table "EXPEDIENTE"."PROCESSINSTANCE"  add  "PROCESSINSTANCE_OID"  number(10,0);
alter table "EXPEDIENTE"."PROCESSINSTANCE"   add constraint FK_PROCESSINSTANCE_PROCESSINST foreign key ("PROCESSINSTANCE_OID") references "EXPEDIENTE"."PROCESSINSTANCE" ("OID");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "EXPEDIENTE"."USER"  add  "GROUP_OID"  number(10,0);
alter table "EXPEDIENTE"."USER"   add constraint FK_USER_GROUP foreign key ("GROUP_OID") references "EXPEDIENTE"."GROUP" ("OID");


-- User_Group [User2Group_Group2User]
create table "EXPEDIENTE"."USER_GROUP" (
   "USER_OID"  number(10,0) not null,
   "GROUP_OID"  number(10,0) not null,
  primary key ("USER_OID", "GROUP_OID")
);
alter table "EXPEDIENTE"."USER_GROUP"   add constraint FK_USER_GROUP_USER foreign key ("USER_OID") references "EXPEDIENTE"."USER" ("OID");
alter table "EXPEDIENTE"."USER_GROUP"   add constraint FK_USER_GROUP_GROUP foreign key ("GROUP_OID") references "EXPEDIENTE"."GROUP" ("OID");


-- User_ActivityInstance [User_ActivityInstance]
alter table "EXPEDIENTE"."ACTIVITYINSTANCE"  add  "USER_OID"  number(10,0);
alter table "EXPEDIENTE"."ACTIVITYINSTANCE"   add constraint FK_ACTIVITYINSTANCE_USER foreign key ("USER_OID") references "EXPEDIENTE"."USER" ("OID");


-- User_Notifications [User_Notifications]
create table "EXPEDIENTE"."USER_NOTIFICATIONS" (
   "USER_OID"  number(10,0) not null,
   "NOTIFICATION_OID"  number(10,0) not null,
  primary key ("USER_OID", "NOTIFICATION_OID")
);
alter table "EXPEDIENTE"."USER_NOTIFICATIONS"   add constraint FK_USER_NOTIFICATIONS_USER foreign key ("USER_OID") references "EXPEDIENTE"."USER" ("OID");
alter table "EXPEDIENTE"."USER_NOTIFICATIONS"   add constraint FK_USER_NOTIFICATIONS_NOTIFICA foreign key ("NOTIFICATION_OID") references "EXPEDIENTE"."NOTIFICATION" ("OID");


-- PersonaFisica_Poder [rel19]
alter table "EXPEDIENTE"."PERSONAFISICA"  add  "MANDATO_OID"  number(10,0);
alter table "EXPEDIENTE"."PERSONAFISICA"   add constraint FK_PERSONAFISICA_MANDATO foreign key ("MANDATO_OID") references "EXPEDIENTE"."MANDATO" ("OID");


-- PersonaFisica_PersonaMoral [rel20]
create table "EXPEDIENTE"."PERSONAFISICA_PERSONAMORAL" (
   "PERSONAFISICA_OID"  number(10,0) not null,
   "PERSONAMORAL_OID"  number(10,0) not null,
  primary key ("PERSONAFISICA_OID", "PERSONAMORAL_OID")
);
alter table "EXPEDIENTE"."PERSONAFISICA_PERSONAMORAL"   add constraint FK_PERSONAFISICA_PERSONAMORAL foreign key ("PERSONAFISICA_OID") references "EXPEDIENTE"."PERSONAFISICA" ("USER_OID");
alter table "EXPEDIENTE"."PERSONAFISICA_PERSONAMORAL"   add constraint FK_PERSONAFISICA_PERSONAMORA_2 foreign key ("PERSONAMORAL_OID") references "EXPEDIENTE"."PERSONAMORAL" ("USER_OID");


-- PersonaFisica_RepresentanteLegal [rel21]
alter table "EXPEDIENTE"."PERSONAFISICA"  add  "PERSONAMORAL_OID"  number(10,0);
alter table "EXPEDIENTE"."PERSONAFISICA"   add constraint FK_PERSONAFISICA_PERSONAMORA_3 foreign key ("PERSONAMORAL_OID") references "EXPEDIENTE"."PERSONAMORAL" ("USER_OID");


-- PersonaMoral_PersonaFisica [rel22]
alter table "EXPEDIENTE"."PERSONAMORAL"  add  "PERSONAFISICA_OID"  number(10,0);
alter table "EXPEDIENTE"."PERSONAMORAL"   add constraint FK_PERSONAMORAL_PERSONAFISICA foreign key ("PERSONAFISICA_OID") references "EXPEDIENTE"."PERSONAFISICA" ("USER_OID");


-- Mandato_PersonaFisica [rel23]
alter table "EXPEDIENTE"."MANDATO"  add  "PERSONAFISICA_OID"  number(10,0);
alter table "EXPEDIENTE"."MANDATO"   add constraint FK_MANDATO_PERSONAFISICA foreign key ("PERSONAFISICA_OID") references "EXPEDIENTE"."PERSONAFISICA" ("USER_OID");


-- PersonaMoral_Poder [rel24]
alter table "EXPEDIENTE"."PERSONAMORAL"  add  "MANDATO_OID"  number(10,0);
alter table "EXPEDIENTE"."PERSONAMORAL"   add constraint FK_PERSONAMORAL_MANDATO foreign key ("MANDATO_OID") references "EXPEDIENTE"."MANDATO" ("OID");


-- DatosNotario_PersonaFisica [rel25]
alter table "EXPEDIENTE"."DATOSNOTARIO"  add  "PERSONAFISICA_OID"  number(10,0);
alter table "EXPEDIENTE"."DATOSNOTARIO"   add constraint FK_DATOSNOTARIO_PERSONAFISICA foreign key ("PERSONAFISICA_OID") references "EXPEDIENTE"."PERSONAFISICA" ("USER_OID");


-- Fianza_DatosNotario [rel26]
alter table "EXPEDIENTE"."FIANZA"  add  "DATOSNOTARIO_OID"  number(10,0);
alter table "EXPEDIENTE"."FIANZA"   add constraint FK_FIANZA_DATOSNOTARIO foreign key ("DATOSNOTARIO_OID") references "EXPEDIENTE"."DATOSNOTARIO" ("OID");


-- Dependencia [rel31]
alter table "EXPEDIENTE"."PERSONAFISICA"  add  "PERSONAFISICA_OID"  number(10,0);
alter table "EXPEDIENTE"."PERSONAFISICA"   add constraint FK_PERSONAFISICA_PERSONAFISICA foreign key ("PERSONAFISICA_OID") references "EXPEDIENTE"."PERSONAFISICA" ("USER_OID");


-- GEN FK: PersonaMoral --> User
alter table "EXPEDIENTE"."PERSONAMORAL"   add constraint FK_PERSONAMORAL_USER foreign key ("USER_OID") references "EXPEDIENTE"."USER" ("OID");


-- GEN FK: PersonaFisica --> User
alter table "EXPEDIENTE"."PERSONAFISICA"   add constraint FK_PERSONAFISICA_USER foreign key ("USER_OID") references "EXPEDIENTE"."USER" ("OID");


-- ProcessInstance.attachment count [processInstanceAttachmentCount]
create view "EXPEDIENTE"."PROCESSINSTANCE_ATTACHMENT_COU" as
select AL1."OID" as "OID", count(distinct AL2."ATTACHMENT_OID") as "DER_ATTR"
from  "EXPEDIENTE"."PROCESSINSTANCE" AL1 
               left outer join "EXPEDIENTE"."ATTACHMENT_PROCESSINSTANCE" AL2 on AL1."OID"=AL2."PROCESSINSTANCE_OID"
group by AL1."OID";


