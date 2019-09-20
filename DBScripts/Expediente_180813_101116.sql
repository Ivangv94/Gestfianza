-- ActivityInstance [ActivityInstance]
create table "activityinstance" (
   "oid"  int4  not null,
   "aborted_at"  timestamp,
   "active_since"  timestamp,
   "cancelled_at"  timestamp,
   "completed_at"  timestamp,
   "context"  varchar(255),
   "worked_at"  timestamp,
   "name"  varchar(255),
   "ready_since"  timestamp,
   "rollbackable"  bool,
   "status"  varchar(255),
  primary key ("oid")
);


-- ActivityType [ActivityType]
create table "activitytype" (
   "oid"  int4  not null,
   "code"  varchar(255),
   "default_instance_name"  varchar(255),
   "description"  text,
   "execution"  varchar(255),
   "id"  varchar(255),
   "name"  varchar(255),
   "sort_number"  float8,
   "type"  varchar(255),
   "uuid"  varchar(255),
  primary key ("oid")
);


-- Attachment [Attachment]
create table "attachment" (
   "oid"  int4  not null,
   "file"  varchar(255),
   "timestamp"  timestamp,
   "title"  varchar(255),
  primary key ("oid")
);


-- Group [Group]
create table "group" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "module" (
   "oid"  int4  not null,
   "moduledomainname"  varchar(255),
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("oid")
);


-- Note [Note]
create table "note" (
   "oid"  int4  not null,
   "text"  text,
   "timestamp"  timestamp,
  primary key ("oid")
);


-- Notification [Notification]
create table "notification" (
   "oid"  int4  not null,
   "message"  varchar(255),
   "read"  bool,
  primary key ("oid")
);


-- ParameterInstance [ParameterInstance]
create table "parameterinstance" (
   "oid"  int4  not null,
   "current"  bool,
   "timestamp"  timestamp,
   "value"  varchar(255),
  primary key ("oid")
);


-- ParameterType [ParameterType]
create table "parametertype" (
   "oid"  int4  not null,
   "description"  varchar(255),
   "name"  varchar(255),
   "type"  varchar(255),
  primary key ("oid")
);


-- Process [Process]
create table "process" (
   "oid"  int4  not null,
   "code"  varchar(255),
   "default_instance_name"  varchar(255),
   "description"  text,
   "name"  varchar(255),
   "uuid"  varchar(255),
   "version"  varchar(255),
  primary key ("oid")
);


-- ProcessInstance [ProcessInstance]
create table "processinstance" (
   "oid"  int4  not null,
   "aborted_at"  timestamp,
   "active_since"  timestamp,
   "cancelled_at"  timestamp,
   "completed_at"  timestamp,
   "name"  varchar(255),
   "status"  varchar(255),
   "subprocessindex"  int4,
  primary key ("oid")
);


-- SequenceFlow [SequenceFlow]
create table "sequenceflow" (
   "oid"  int4  not null,
   "condition"  varchar(255),
   "default"  bool,
   "label"  varchar(255),
   "sort_number"  float8,
  primary key ("oid")
);


-- User [User]
create table "user" (
   "oid"  int4  not null,
   "email"  varchar(255),
   "password"  varchar(255),
   "username"  varchar(255),
  primary key ("oid")
);


-- Documentos [ent1]
create table "documentos" (
   "oid"  int4  not null,
   "esquemadetramitacion"  varchar(255),
   "nombrearchivo"  varchar(255),
   "tamanio"  varchar(255),
   "extension"  varchar(255),
   "folio"  varchar(255),
   "archivo"  varchar(255),
   "etapavidaempresarial"  varchar(255),
   "uri"  varchar(255),
  primary key ("oid")
);


-- Elementos Administrables [ent2]
create table "elementos_administrables" (
   "oid"  int4  not null,
   "elemento_administrable"  varchar(255),
   "valor"  varchar(255),
  primary key ("oid")
);


-- Cadenas [ent3]
create table "cadenas" (
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


-- Mandato [ent37]
create table "mandato" (
   "oid"  int4  not null,
   "fechacaducidad"  timestamp,
   "fechainicio"  timestamp,
   "uripdf"  varchar(255),
   "urixml"  varchar(255),
  primary key ("oid")
);


-- PersonaMoral [ent38]
create table "personamoral" (
   "user_oid"  int4  not null,
   "telefono"  varchar(255),
   "activo"  bool,
   "fechacaducidad"  timestamp,
   "fechainscripcion"  timestamp,
   "razonsocial"  varchar(255),
  primary key ("user_oid")
);


-- PersonaFisica [ent39]
create table "personafisica" (
   "user_oid"  int4  not null,
   "pftelefono"  varchar(255),
   "fechanac"  varchar(255),
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
   "nombre"  varchar(255),
  primary key ("user_oid")
);


-- Texto [ent5]
create table "texto" (
   "oid"  int4  not null,
   "descripcion"  varchar(255),
   "texto"  text,
  primary key ("oid")
);


-- ActivityInstance_CandidateUser [ActivityInstance_CandidateUser]
create table "activityinstance_candidateuser" (
   "activityinstance_oid"  int4 not null,
   "user_oid"  int4 not null,
  primary key ("activityinstance_oid", "user_oid")
);
alter table "activityinstance_candidateuser"   add constraint fk_activityinstance_candidateu foreign key ("activityinstance_oid") references "activityinstance" ("oid");
alter table "activityinstance_candidateuser"   add constraint fk_activityinstance_candidat_2 foreign key ("user_oid") references "user" ("oid");
create index "idx_activityinstance_candidate" on "activityinstance_candidateuser"("activityinstance_oid");
create index "idx_activityinstance_candida_2" on "activityinstance_candidateuser"("user_oid");


-- ActivityInstance_Group [ActivityInstance_Group]
alter table "activityinstance"  add column  "group_oid"  int4;
alter table "activityinstance"   add constraint fk_activityinstance_group foreign key ("group_oid") references "group" ("oid");
create index "idx_activityinstance_group" on "activityinstance"("group_oid");


-- ActivityInstance_NextActivityInstanceNotes [ActivityInstance_NextActivityInstanceNotes]
alter table "note"  add column  "activityinstance_oid"  int4;
alter table "note"   add constraint fk_note_activityinstance foreign key ("activityinstance_oid") references "activityinstance" ("oid");
create index "idx_note_activityinstance" on "note"("activityinstance_oid");


-- ActivityInstance_Notification [ActivityInstance_Notifications]
alter table "notification"  add column  "activityinstance_oid"  int4;
alter table "notification"   add constraint fk_notification_activityinstan foreign key ("activityinstance_oid") references "activityinstance" ("oid");
create index "idx_notification_activityinsta" on "notification"("activityinstance_oid");


-- ActivityType_ActivityInstance [ActivityType_ActivityInstance]
alter table "activityinstance"  add column  "activitytype_oid"  int4;
alter table "activityinstance"   add constraint fk_activityinstance_activityty foreign key ("activitytype_oid") references "activitytype" ("oid");
create index "idx_activityinstance_activityt" on "activityinstance"("activitytype_oid");


-- Attachment_ProcessInstance [Attachment_ProcessInstance]
create table "attachment_processinstance" (
   "attachment_oid"  int4 not null,
   "processinstance_oid"  int4 not null,
  primary key ("attachment_oid", "processinstance_oid")
);
alter table "attachment_processinstance"   add constraint fk_attachment_processinstance foreign key ("attachment_oid") references "attachment" ("oid");
alter table "attachment_processinstance"   add constraint fk_attachment_processinstanc_2 foreign key ("processinstance_oid") references "processinstance" ("oid");
create index "idx_attachment_processinstance" on "attachment_processinstance"("attachment_oid");
create index "idx_attachment_processinstan_2" on "attachment_processinstance"("processinstance_oid");


-- Attachment_User [Attachment_User]
alter table "attachment"  add column  "user_oid"  int4;
alter table "attachment"   add constraint fk_attachment_user foreign key ("user_oid") references "user" ("oid");
create index "idx_attachment_user" on "attachment"("user_oid");


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "group"  add column  "module_oid"  int4;
alter table "group"   add constraint fk_group_module foreign key ("module_oid") references "module" ("oid");
create index "idx_group_module" on "group"("module_oid");


-- Group_Module [Group2Module_Module2Group]
create table "group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "group" ("oid");
alter table "group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "module" ("oid");
create index "idx_group_module_group" on "group_module"("group_oid");
create index "idx_group_module_module" on "group_module"("module_oid");


-- Group_ActivityType [Group_ActivityType]
create table "group_activitytype" (
   "group_oid"  int4 not null,
   "activitytype_oid"  int4 not null,
  primary key ("group_oid", "activitytype_oid")
);
alter table "group_activitytype"   add constraint fk_group_activitytype_group foreign key ("group_oid") references "group" ("oid");
alter table "group_activitytype"   add constraint fk_group_activitytype_activity foreign key ("activitytype_oid") references "activitytype" ("oid");
create index "idx_group_activitytype_group" on "group_activitytype"("group_oid");
create index "idx_group_activitytype_activit" on "group_activitytype"("activitytype_oid");


-- NextActivityType_PreviousSequenceFlow [NextActivityType_PreviousSequenceFlow]
alter table "sequenceflow"  add column  "activitytype_oid"  int4;
alter table "sequenceflow"   add constraint fk_sequenceflow_activitytype foreign key ("activitytype_oid") references "activitytype" ("oid");
create index "idx_sequenceflow_activitytype" on "sequenceflow"("activitytype_oid");


-- Note_ActivityInstance [Note_ActivityInstance]
create table "note_activityinstance" (
   "note_oid"  int4 not null,
   "activityinstance_oid"  int4 not null,
  primary key ("note_oid", "activityinstance_oid")
);
alter table "note_activityinstance"   add constraint fk_note_activityinstance_note foreign key ("note_oid") references "note" ("oid");
alter table "note_activityinstance"   add constraint fk_note_activityinstance_activ foreign key ("activityinstance_oid") references "activityinstance" ("oid");
create index "idx_note_activityinstance_note" on "note_activityinstance"("note_oid");
create index "idx_note_activityinstance_acti" on "note_activityinstance"("activityinstance_oid");


-- Note_ProcessInstance [Note_ProcessInstance]
create table "note_processinstance" (
   "note_oid"  int4 not null,
   "processinstance_oid"  int4 not null,
  primary key ("note_oid", "processinstance_oid")
);
alter table "note_processinstance"   add constraint fk_note_processinstance_note foreign key ("note_oid") references "note" ("oid");
alter table "note_processinstance"   add constraint fk_note_processinstance_proces foreign key ("processinstance_oid") references "processinstance" ("oid");
create index "idx_note_processinstance_note" on "note_processinstance"("note_oid");
create index "idx_note_processinstance_proce" on "note_processinstance"("processinstance_oid");


-- Note_User [Note_User]
alter table "note"  add column  "user_oid"  int4;
alter table "note"   add constraint fk_note_user foreign key ("user_oid") references "user" ("oid");
create index "idx_note_user" on "note"("user_oid");


-- ParameterInstance_ActivityInstance [ParameterInstance_ActivityInstance]
alter table "parameterinstance"  add column  "activityinstance_oid"  int4;
alter table "parameterinstance"   add constraint fk_parameterinstance_activityi foreign key ("activityinstance_oid") references "activityinstance" ("oid");
create index "idx_parameterinstance_activity" on "parameterinstance"("activityinstance_oid");


-- ParameterType_ParameterInstance [ParameterType_ParameterInstance]
alter table "parameterinstance"  add column  "parametertype_oid"  int4;
alter table "parameterinstance"   add constraint fk_parameterinstance_parameter foreign key ("parametertype_oid") references "parametertype" ("oid");
create index "idx_parameterinstance_paramete" on "parameterinstance"("parametertype_oid");


-- PreviousActivityInstance_NextActivityInstance [PreviousActivityInstance_NextActivityInstance]
create table "previousactivityinstance_nexta" (
   "activityinstance_oid_2"  int4 not null,
   "activityinstance_oid"  int4 not null,
  primary key ("activityinstance_oid_2", "activityinstance_oid")
);
alter table "previousactivityinstance_nexta"   add constraint fk_previousactivityinstance_ne foreign key ("activityinstance_oid_2") references "activityinstance" ("oid");
alter table "previousactivityinstance_nexta"   add constraint fk_previousactivityinstance_2 foreign key ("activityinstance_oid") references "activityinstance" ("oid");
create index "idx_previousactivityinstance_n" on "previousactivityinstance_nexta"("activityinstance_oid_2");
create index "idx_previousactivityinstance_2" on "previousactivityinstance_nexta"("activityinstance_oid");


-- PreviousActivityType_NextSequenceFlow [PreviousActivityType_NextSequenceFlow]
alter table "sequenceflow"  add column  "activitytype_oid_2"  int4;
alter table "sequenceflow"   add constraint fk_sequenceflow_activitytype_2 foreign key ("activitytype_oid_2") references "activitytype" ("oid");
create index "idx_sequenceflow_activitytyp_2" on "sequenceflow"("activitytype_oid_2");


-- ProcessInstance_ActivityInstance [ProcessInstance_ActivityInstance]
alter table "activityinstance"  add column  "processinstance_oid"  int4;
alter table "activityinstance"   add constraint fk_activityinstance_processins foreign key ("processinstance_oid") references "processinstance" ("oid");
create index "idx_activityinstance_processin" on "activityinstance"("processinstance_oid");


-- ProcessInstance_ParameterInstance [ProcessInstance_ParameterInstance]
alter table "parameterinstance"  add column  "processinstance_oid"  int4;
alter table "parameterinstance"   add constraint fk_parameterinstance_processin foreign key ("processinstance_oid") references "processinstance" ("oid");
create index "idx_parameterinstance_processi" on "parameterinstance"("processinstance_oid");


-- ProcessInstance_Process [ProcessInstance_Process]
alter table "processinstance"  add column  "process_oid"  int4;
alter table "processinstance"   add constraint fk_processinstance_process foreign key ("process_oid") references "process" ("oid");
create index "idx_processinstance_process" on "processinstance"("process_oid");


-- Process_ActivityType [Process_ActivityType]
alter table "activitytype"  add column  "process_oid"  int4;
alter table "activitytype"   add constraint fk_activitytype_process foreign key ("process_oid") references "process" ("oid");
create index "idx_activitytype_process" on "activitytype"("process_oid");


-- Process_ParameterType [Process_ParameterType]
alter table "parametertype"  add column  "process_oid"  int4;
alter table "parametertype"   add constraint fk_parametertype_process foreign key ("process_oid") references "process" ("oid");
create index "idx_parametertype_process" on "parametertype"("process_oid");


-- SubprocessInstances_ParentProcessInstance [SubprocessInstances_ParentProcessInstance]
alter table "processinstance"  add column  "processinstance_oid"  int4;
alter table "processinstance"   add constraint fk_processinstance_processinst foreign key ("processinstance_oid") references "processinstance" ("oid");
create index "idx_processinstance_processins" on "processinstance"("processinstance_oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "user"  add column  "group_oid"  int4;
alter table "user"   add constraint fk_user_group foreign key ("group_oid") references "group" ("oid");
create index "idx_user_group" on "user"("group_oid");


-- User_Group [User2Group_Group2User]
create table "user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "user" ("oid");
alter table "user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "group" ("oid");
create index "idx_user_group_user" on "user_group"("user_oid");
create index "idx_user_group_group" on "user_group"("group_oid");


-- User_ActivityInstance [User_ActivityInstance]
alter table "activityinstance"  add column  "user_oid"  int4;
alter table "activityinstance"   add constraint fk_activityinstance_user foreign key ("user_oid") references "user" ("oid");
create index "idx_activityinstance_user" on "activityinstance"("user_oid");


-- User_Notifications [User_Notifications]
create table "user_notifications" (
   "user_oid"  int4 not null,
   "notification_oid"  int4 not null,
  primary key ("user_oid", "notification_oid")
);
alter table "user_notifications"   add constraint fk_user_notifications_user foreign key ("user_oid") references "user" ("oid");
alter table "user_notifications"   add constraint fk_user_notifications_notifica foreign key ("notification_oid") references "notification" ("oid");
create index "idx_user_notifications_user" on "user_notifications"("user_oid");
create index "idx_user_notifications_notific" on "user_notifications"("notification_oid");


-- PersonaFisica_Poder [rel19]
alter table "personafisica"  add column  "mandato_oid"  int4;
alter table "personafisica"   add constraint fk_personafisica_mandato foreign key ("mandato_oid") references "mandato" ("oid");
create index "idx_personafisica_mandato" on "personafisica"("mandato_oid");


-- PersonaFisica_PersonaMoral [rel20]
create table "personafisica_personamoral" (
   "personafisica_oid"  int4 not null,
   "personamoral_oid"  int4 not null,
  primary key ("personafisica_oid", "personamoral_oid")
);
alter table "personafisica_personamoral"   add constraint fk_personafisica_personamoral foreign key ("personafisica_oid") references "personafisica" ("user_oid");
alter table "personafisica_personamoral"   add constraint fk_personafisica_personamora_2 foreign key ("personamoral_oid") references "personamoral" ("user_oid");
create index "idx_personafisica_personamoral" on "personafisica_personamoral"("personafisica_oid");
create index "idx_personafisica_personamor_2" on "personafisica_personamoral"("personamoral_oid");


-- PersonaFisica_RepresentanteLegal [rel21]
alter table "personafisica"  add column  "personamoral_oid"  int4;
alter table "personafisica"   add constraint fk_personafisica_personamora_3 foreign key ("personamoral_oid") references "personamoral" ("user_oid");
create index "idx_personafisica_personamor_3" on "personafisica"("personamoral_oid");


-- PersonaMoral_PersonaFisica [rel22]
alter table "personamoral"  add column  "personafisica_oid"  int4;
alter table "personamoral"   add constraint fk_personamoral_personafisica foreign key ("personafisica_oid") references "personafisica" ("user_oid");
create index "idx_personamoral_personafisica" on "personamoral"("personafisica_oid");


-- Mandato_PersonaFisica [rel23]
alter table "mandato"  add column  "personafisica_oid"  int4;
alter table "mandato"   add constraint fk_mandato_personafisica foreign key ("personafisica_oid") references "personafisica" ("user_oid");
create index "idx_mandato_personafisica" on "mandato"("personafisica_oid");


-- PersonaMoral_Poder [rel24]
alter table "personamoral"  add column  "mandato_oid"  int4;
alter table "personamoral"   add constraint fk_personamoral_mandato foreign key ("mandato_oid") references "mandato" ("oid");
create index "idx_personamoral_mandato" on "personamoral"("mandato_oid");


-- GEN FK: PersonaMoral --> User
alter table "personamoral"   add constraint fk_personamoral_user foreign key ("user_oid") references "user" ("oid");


-- GEN FK: PersonaFisica --> User
alter table "personafisica"   add constraint fk_personafisica_user foreign key ("user_oid") references "user" ("oid");


-- ProcessInstance.attachment count [processInstanceAttachmentCount]
create view "processinstance_attachment_cou" as
select AL1."oid" as "oid", count(distinct AL2."attachment_oid") as "der_attr"
from  "processinstance" AL1 
               left outer join "attachment_processinstance" AL2 on AL1."oid"=AL2."processinstance_oid"
group by AL1."oid";


