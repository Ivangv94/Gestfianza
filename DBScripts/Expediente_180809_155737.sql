-- ActivityInstance [ActivityInstance]
create table "public"."activityinstance" (
   "oid"  int4  not null,
   "name"  varchar(255),
   "status"  varchar(255),
   "ready_since"  timestamp,
   "active_since"  timestamp,
   "completed_at"  timestamp,
   "aborted_at"  timestamp,
   "cancelled_at"  timestamp,
   "worked_at"  timestamp,
   "rollbackable"  bool,
   "context"  varchar(255),
  primary key ("oid")
);
create index "idx_activityinstance_status" on "public"."activityinstance"("status");


-- ActivityType [ActivityType]
create table "public"."activitytype" (
   "oid"  int4  not null,
   "id"  varchar(255),
   "code"  varchar(255),
   "name"  varchar(255),
   "default_instance_name"  varchar(255),
   "description"  text,
   "type"  varchar(255),
   "execution"  varchar(255),
   "sort_number"  float8,
   "uuid"  varchar(255),
  primary key ("oid")
);
create index "idx_activitytype_type" on "public"."activitytype"("type");
create index "idx_activitytype_execution" on "public"."activitytype"("execution");
create index "idx_activitytype_uuid" on "public"."activitytype"("uuid");


-- Attachment [Attachment]
create table "public"."attachment" (
   "oid"  int4  not null,
   "file"  varchar(255),
   "title"  varchar(255),
   "timestamp"  timestamp,
  primary key ("oid")
);


-- Group [Group]
create table "public"."group" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "public"."module" (
   "oid"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
   "moduledomainname"  varchar(255),
  primary key ("oid")
);


-- Note [Note]
create table "public"."note" (
   "oid"  int4  not null,
   "text"  text,
   "timestamp"  timestamp,
  primary key ("oid")
);


-- Notification [Notification]
create table "public"."notification" (
   "oid"  int4  not null,
   "message"  varchar(255),
   "read"  bool,
  primary key ("oid")
);


-- ParameterInstance [ParameterInstance]
create table "public"."parameterinstance" (
   "oid"  int4  not null,
   "value"  varchar(255),
   "current"  bool,
   "timestamp"  timestamp,
  primary key ("oid")
);
create index "idx_parameterinstance_current" on "public"."parameterinstance"("current");


-- ParameterType [ParameterType]
create table "public"."parametertype" (
   "oid"  int4  not null,
   "name"  varchar(255),
   "description"  varchar(255),
   "type"  varchar(255),
  primary key ("oid")
);
create index "idx_parametertype_name" on "public"."parametertype"("name");


-- Process [Process]
create table "public"."process" (
   "oid"  int4  not null,
   "code"  varchar(255),
   "name"  varchar(255),
   "default_instance_name"  varchar(255),
   "description"  text,
   "uuid"  varchar(255),
   "version"  varchar(255),
  primary key ("oid")
);
create index "idx_process_uuid" on "public"."process"("uuid");


-- ProcessInstance [ProcessInstance]
create table "public"."processinstance" (
   "oid"  int4  not null,
   "name"  varchar(255),
   "subprocessindex"  int4,
   "status"  varchar(255),
   "active_since"  timestamp,
   "completed_at"  timestamp,
   "cancelled_at"  timestamp,
   "aborted_at"  timestamp,
  primary key ("oid")
);
create index "idx_processinstance_status" on "public"."processinstance"("status");


-- SequenceFlow [SequenceFlow]
create table "public"."sequenceflow" (
   "oid"  int4  not null,
   "label"  varchar(255),
   "condition"  varchar(255),
   "default"  bool,
   "sort_number"  float8,
  primary key ("oid")
);


-- User [User]
create table "public"."user" (
   "oid"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
  primary key ("oid")
);


-- Documentos [ent1]
create table "public"."documentos" (
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
create table "public"."personafisica" (
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


-- ActivityInstance_CandidateUser [ActivityInstance_CandidateUser]
create table "public"."activityinstance_candidateuser" (
   "activityinstance_oid"  int4 not null,
   "user_oid"  int4 not null,
  primary key ("activityinstance_oid", "user_oid")
);
alter table "public"."activityinstance_candidateuser"   add constraint fk_activityinstance_candidateu foreign key ("activityinstance_oid") references "public"."activityinstance" ("oid");
alter table "public"."activityinstance_candidateuser"   add constraint fk_activityinstance_candidat_2 foreign key ("user_oid") references "public"."user" ("oid");


-- ActivityInstance_Group [ActivityInstance_Group]
alter table "public"."activityinstance"  add column  "group_oid"  int4;
alter table "public"."activityinstance"   add constraint fk_activityinstance_group foreign key ("group_oid") references "public"."group" ("oid");


-- ActivityInstance_NextActivityInstanceNotes [ActivityInstance_NextActivityInstanceNotes]
alter table "public"."note"  add column  "activityinstance_oid"  int4;
alter table "public"."note"   add constraint fk_note_activityinstance foreign key ("activityinstance_oid") references "public"."activityinstance" ("oid");


-- ActivityInstance_Notification [ActivityInstance_Notifications]
alter table "public"."notification"  add column  "activityinstance_oid"  int4;
alter table "public"."notification"   add constraint fk_notification_activityinstan foreign key ("activityinstance_oid") references "public"."activityinstance" ("oid");


-- ActivityType_ActivityInstance [ActivityType_ActivityInstance]
alter table "public"."activityinstance"  add column  "activitytype_oid"  int4;
alter table "public"."activityinstance"   add constraint fk_activityinstance_activityty foreign key ("activitytype_oid") references "public"."activitytype" ("oid");


-- Attachment_ProcessInstance [Attachment_ProcessInstance]
create table "public"."attachment_processinstance" (
   "attachment_oid"  int4 not null,
   "processinstance_oid"  int4 not null,
  primary key ("attachment_oid", "processinstance_oid")
);
alter table "public"."attachment_processinstance"   add constraint fk_attachment_processinstance foreign key ("attachment_oid") references "public"."attachment" ("oid");
alter table "public"."attachment_processinstance"   add constraint fk_attachment_processinstanc_2 foreign key ("processinstance_oid") references "public"."processinstance" ("oid");


-- Attachment_User [Attachment_User]
alter table "public"."attachment"  add column  "user_oid"  int4;
alter table "public"."attachment"   add constraint fk_attachment_user foreign key ("user_oid") references "public"."user" ("oid");


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "public"."group"  add column  "module_oid"  int4;
alter table "public"."group"   add constraint fk_group_module foreign key ("module_oid") references "public"."module" ("oid");


-- Group_Module [Group2Module_Module2Group]
create table "public"."group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "public"."group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "public"."group" ("oid");
alter table "public"."group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "public"."module" ("oid");


-- Group_ActivityType [Group_ActivityType]
create table "public"."group_activitytype" (
   "group_oid"  int4 not null,
   "activitytype_oid"  int4 not null,
  primary key ("group_oid", "activitytype_oid")
);
alter table "public"."group_activitytype"   add constraint fk_group_activitytype_group foreign key ("group_oid") references "public"."group" ("oid");
alter table "public"."group_activitytype"   add constraint fk_group_activitytype_activity foreign key ("activitytype_oid") references "public"."activitytype" ("oid");


-- NextActivityType_PreviousSequenceFlow [NextActivityType_PreviousSequenceFlow]
alter table "public"."sequenceflow"  add column  "activitytype_oid"  int4;
alter table "public"."sequenceflow"   add constraint fk_sequenceflow_activitytype_2 foreign key ("activitytype_oid") references "public"."activitytype" ("oid");


-- Note_ActivityInstance [Note_ActivityInstance]
create table "public"."note_activityinstance" (
   "note_oid"  int4 not null,
   "activityinstance_oid"  int4 not null,
  primary key ("note_oid", "activityinstance_oid")
);
alter table "public"."note_activityinstance"   add constraint fk_note_activityinstance_note foreign key ("note_oid") references "public"."note" ("oid");
alter table "public"."note_activityinstance"   add constraint fk_note_activityinstance_activ foreign key ("activityinstance_oid") references "public"."activityinstance" ("oid");


-- Note_ProcessInstance [Note_ProcessInstance]
create table "public"."note_processinstance" (
   "note_oid"  int4 not null,
   "processinstance_oid"  int4 not null,
  primary key ("note_oid", "processinstance_oid")
);
alter table "public"."note_processinstance"   add constraint fk_note_processinstance_note foreign key ("note_oid") references "public"."note" ("oid");
alter table "public"."note_processinstance"   add constraint fk_note_processinstance_proces foreign key ("processinstance_oid") references "public"."processinstance" ("oid");


-- Note_User [Note_User]
alter table "public"."note"  add column  "user_oid"  int4;
alter table "public"."note"   add constraint fk_note_user foreign key ("user_oid") references "public"."user" ("oid");


-- ParameterInstance_ActivityInstance [ParameterInstance_ActivityInstance]
alter table "public"."parameterinstance"  add column  "activityinstance_oid"  int4;
alter table "public"."parameterinstance"   add constraint fk_parameterinstance_activityi foreign key ("activityinstance_oid") references "public"."activityinstance" ("oid");


-- ParameterType_ParameterInstance [ParameterType_ParameterInstance]
alter table "public"."parameterinstance"  add column  "parametertype_oid"  int4;
alter table "public"."parameterinstance"   add constraint fk_parameterinstance_parameter foreign key ("parametertype_oid") references "public"."parametertype" ("oid");


-- PreviousActivityInstance_NextActivityInstance [PreviousActivityInstance_NextActivityInstance]
create table "public"."previousactivityinstance_nexta" (
   "activityinstance_oid_2"  int4 not null,
   "activityinstance_oid"  int4 not null,
  primary key ("activityinstance_oid_2", "activityinstance_oid")
);
alter table "public"."previousactivityinstance_nexta"   add constraint fk_previousactivityinstance_ne foreign key ("activityinstance_oid_2") references "public"."activityinstance" ("oid");
alter table "public"."previousactivityinstance_nexta"   add constraint fk_previousactivityinstance_2 foreign key ("activityinstance_oid") references "public"."activityinstance" ("oid");


-- PreviousActivityType_NextSequenceFlow [PreviousActivityType_NextSequenceFlow]
alter table "public"."sequenceflow"  add column  "activitytype_oid_2"  int4;
alter table "public"."sequenceflow"   add constraint fk_sequenceflow_activitytype foreign key ("activitytype_oid_2") references "public"."activitytype" ("oid");


-- ProcessInstance_ActivityInstance [ProcessInstance_ActivityInstance]
alter table "public"."activityinstance"  add column  "processinstance_oid"  int4;
alter table "public"."activityinstance"   add constraint fk_activityinstance_processins foreign key ("processinstance_oid") references "public"."processinstance" ("oid");


-- ProcessInstance_ParameterInstance [ProcessInstance_ParameterInstance]
alter table "public"."parameterinstance"  add column  "processinstance_oid"  int4;
alter table "public"."parameterinstance"   add constraint fk_parameterinstance_processin foreign key ("processinstance_oid") references "public"."processinstance" ("oid");


-- ProcessInstance_Process [ProcessInstance_Process]
alter table "public"."processinstance"  add column  "process_oid"  int4;
alter table "public"."processinstance"   add constraint fk_processinstance_process foreign key ("process_oid") references "public"."process" ("oid");


-- Process_ActivityType [Process_ActivityType]
alter table "public"."activitytype"  add column  "process_oid"  int4;
alter table "public"."activitytype"   add constraint fk_activitytype_process foreign key ("process_oid") references "public"."process" ("oid");


-- Process_ParameterType [Process_ParameterType]
alter table "public"."parametertype"  add column  "process_oid"  int4;
alter table "public"."parametertype"   add constraint fk_parametertype_process foreign key ("process_oid") references "public"."process" ("oid");


-- SubprocessInstances_ParentProcessInstance [SubprocessInstances_ParentProcessInstance]
alter table "public"."processinstance"  add column  "processinstance_oid"  int4;
alter table "public"."processinstance"   add constraint fk_processinstance_processinst foreign key ("processinstance_oid") references "public"."processinstance" ("oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "public"."user"  add column  "group_oid"  int4;
alter table "public"."user"   add constraint fk_user_group foreign key ("group_oid") references "public"."group" ("oid");


-- User_Group [User2Group_Group2User]
create table "public"."user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "public"."user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "public"."user" ("oid");
alter table "public"."user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "public"."group" ("oid");


-- User_ActivityInstance [User_ActivityInstance]
alter table "public"."activityinstance"  add column  "user_oid"  int4;
alter table "public"."activityinstance"   add constraint fk_activityinstance_user foreign key ("user_oid") references "public"."user" ("oid");


-- User_Notifications [User_Notifications]
create table "public"."user_notifications" (
   "user_oid"  int4 not null,
   "notification_oid"  int4 not null,
  primary key ("user_oid", "notification_oid")
);
alter table "public"."user_notifications"   add constraint fk_user_notifications_user foreign key ("user_oid") references "public"."user" ("oid");
alter table "public"."user_notifications"   add constraint fk_user_notifications_notifica foreign key ("notification_oid") references "public"."notification" ("oid");


-- PersonaFisica_Poder [rel19]
alter table "public"."personafisica"  add column  "mandato_oid"  int4;
alter table "public"."personafisica"   add constraint fk_personafisica_mandato foreign key ("mandato_oid") references "public"."mandato" ("oid");


-- PersonaFisica_PersonaMoral [rel20]
create table "public"."personafisica_personamoral" (
   "personafisica_oid"  int4 not null,
   "personamoral_oid"  int4 not null,
  primary key ("personafisica_oid", "personamoral_oid")
);
alter table "public"."personafisica_personamoral"   add constraint fk_personafisica_personamora_2 foreign key ("personafisica_oid") references "public"."personafisica" ("user_oid");
alter table "public"."personafisica_personamoral"   add constraint fk_personafisica_personamora_3 foreign key ("personamoral_oid") references "public"."personamoral" ("user_oid");


-- PersonaFisica_RepresentanteLegal [rel21]
alter table "public"."personafisica"  add column  "personamoral_oid"  int4;
alter table "public"."personafisica"   add constraint fk_personafisica_personamoral foreign key ("personamoral_oid") references "public"."personamoral" ("user_oid");


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


-- GEN FK: PersonaFisica --> User
alter table "public"."personafisica"   add constraint fk_personafisica_user foreign key ("user_oid") references "public"."user" ("oid");


-- ProcessInstance.attachment count [processInstanceAttachmentCount]
create view "public"."processinstance_attachment_cou" as
select AL1."oid" as "oid", count(distinct AL2."attachment_oid") as "der_attr"
from  "public"."processinstance" AL1 
               left outer join "public"."attachment_processinstance" AL2 on AL1."oid"=AL2."processinstance_oid"
group by AL1."oid";


