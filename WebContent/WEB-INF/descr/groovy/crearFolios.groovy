#input String ambiente,numEsquema,anio,String mes,proceso,String rfc,siglasDoc
#output folioSAS,folioSASxml,folioSASpdf,folioPersistenteXml,folioPersistentePdf,mesAdosDigit,uriPersistenteXml

if(mes.size().equals(1)) {
    mesAdosDigit = "0" + mes
    } else {
    mesAdosDigit = mes
    }

String folioSAS = '''EEE-''' + numEsquema + '''-''' + anio + mesAdosDigit + '''-''' + rfc + proceso + siglasDoc

String folioSASxml = '''EEE-''' + numEsquema + '''-''' + anio + mesAdosDigit + '''-''' + rfc + proceso + siglasDoc + '''-SIGNED'''

String folioSASpdf = '''EEE-''' + numEsquema + '''-''' + anio + mesAdosDigit + '''-''' + rfc + proceso + siglasDoc

String folioPersistenteXml = rfc + proceso + siglasDoc + '''-SIGNED'''

String folioPersistentePdf = rfc + proceso + siglasDoc

if (ambiente.equals("qa")) 
{
    	uriPersistenteXml = '''http://documentos.economia.gob.mx/dgnm/protected/dis/''' + numEsquema + '''/''' + anio + mesAdosDigit + '''/DIS-''' + numEsquema + '''-''' + anio + mesAdosDigit +'''-''' + folioPersistenteXml + '''.xml''';
}     
else if (ambiente.equals("prod"))     
{     	
	uriPersistenteXml = '''http://documentos.economia.gob.mx/dgnm/protected/dis/''' + numEsquema + '''/''' + anio + mesAdosDigit + '''/DIS-''' + numEsquema + '''-''' + anio + mesAdosDigit +'''-''' + folioPersistenteXml + '''.xml''';
} 
else if (ambiente.equals("desarrollo"))     
{     	
	uriPersistenteXml = '''http://documentos.economia.gob.mx/dgnm/protected/dis/''' + numEsquema + '''/''' + anio + mesAdosDigit + '''/DIS-''' + numEsquema + '''-''' + anio + mesAdosDigit +'''-''' + folioPersistenteXml + '''.xml''';
} 
else if (ambiente.equals("local")) 
{ 
	uriPersistenteXml = '''http://documentos.economia.gob.mx/dgnm/protected/dis/''' + numEsquema + '''/''' + anio + mesAdosDigit + '''/DIS-''' + numEsquema + '''-''' + anio + mesAdosDigit +'''-''' + folioPersistenteXml + '''.xml''';            
}
else 
{
	uriPersistenteXml = '''https://NO_HA_SIDO_ESPECIFICADA_LA_URL_BAJO_EL_AMBIENTE_ACTUAL/''' + numEsquema + '''/''' + anio + mesAdosDigit + '''/SAS-''' + numEsquema + '''-''' + anio + mesAdosDigit +'''-''' + folioPersistenteXml + '''.xml''';
}

return["folioSAS":folioSAS,"folioSASxml":folioSASxml,"folioSASpdf":folioSASpdf,"folioPersistenteXml":folioPersistenteXml,"folioPersistentePdf":folioPersistentePdf,"mesAdosDigit":mesAdosDigit,"uriPersistenteXml":uriPersistenteXml]