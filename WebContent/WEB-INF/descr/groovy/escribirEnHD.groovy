#input archivo,String xmlCanonicalizado,String folio
#output nombreDocumentoFirmado,xmlCanonicalizado,nombreExpedienteXml,nombreExpedientePdf,folioExpedienteXml,folioExpedientePdf

String bufferDir = rtx.getUploadDirectory();
String dirtyArchivo = archivo.toString()
String archivoXml = dirtyArchivo.substring(1,dirtyArchivo.length()-1)
String ubicacionArchivo = bufferDir + archivoXml

new File(ubicacionArchivo).write(xmlCanonicalizado)

nombreDoc = folio + "-certificado.xml"; 

nombreExpedienteXml = folio + "-certificado";
nombreExpedientePdf = folio;
folioExpedienteXml = folio + "XML";
folioExpedientePdf = folio + "PDF";


return["nombreDocumentoFirmado":nombreDoc,"xmlCanonicalizado":xmlCanonicalizado,"nombreExpedienteXml":nombreExpedienteXml,"nombreExpedientePdf":nombreExpedientePdf,"folioExpedienteXml":folioExpedienteXml,"folioExpedientePdf":folioExpedientePdf]