-- ProcessInstance.attachment count [processInstanceAttachmentCount]
create view "EXPEDIENTE"."PROCESSINSTANCE_ATTACHMENT_COU" as
select AL1."OID" as "OID", count(distinct AL2."ATTACHMENT_OID") as "DER_ATTR"
from  "EXPEDIENTE"."PROCESSINSTANCE" AL1 
               left outer join "EXPEDIENTE"."ATTACHMENT_PROCESSINSTANCE" AL2 on AL1."OID"=AL2."PROCESSINSTANCE_OID"
group by AL1."OID";


