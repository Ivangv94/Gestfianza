#input archivo,String xmlCanonicalizado,folio
#output nombreDocumentoFirmado

String bufferDir = rtx.getUploadDirectory();
String dirtyArchivo = archivo.toString()
String archivoXml = dirtyArchivo.substring(1,dirtyArchivo.length()-1)
String ubicacionArchivo = bufferDir + archivoXml

new File(ubicacionArchivo).write(xmlCanonicalizado)

nombreDoc = folio + "-SIGNED.xml"; 

return["nombreDocumentoFirmado":nombreDoc]