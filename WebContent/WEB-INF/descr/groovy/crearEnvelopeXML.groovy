#input String dirtySignatureTag,String cadenaOrigCanonicalizada,String ultimoNodo
#output dirtyXmlSignedEnvelope,xmlCadOrigParaBdD

String dirtyXmlSignedEnvelope = cadenaOrigCanonicalizada.replaceAll(ultimoNodo,dirtySignatureTag) + ultimoNodo;

xmlParaBaseDeDatos = cadenaOrigCanonicalizada.toString()

return["dirtyXmlSignedEnvelope":dirtyXmlSignedEnvelope,"xmlCadOrigParaBdD":xmlParaBaseDeDatos]