#input String ambiente,hashCadena,selloDigital,modulus,nombreSujetoX509,nombreEmisorCert,serieCert,fechaInscripcion,fechaCaducidad,certificadoX509,folio,timeStamp,curpOrfcFirmante,nombreFirmante,archivo 
#output dirtySignatureTag,urlVerificacionFinal

String dirtyArchivo = archivo.toString()
String archivoXml = dirtyArchivo.substring(1,dirtyArchivo.length()-1) + "-SIGNED.xml"

if (ambiente.equals("local")) {
    urlVerificacionFinal = '''http://localhost:8080/constitucionWeb/archivodigital/''' + archivoXml;
    } 
    else if (ambiente.equals("desarrollo")) {
        urlVerificacionFinal = '''http://172.18.53.174:8180/eee/archivodigital/''' + archivoXml;
        }
	    else if (ambiente.equals("qa")) {
	        urlVerificacionFinal = '''https://qaexpempresa.economia.gob.mx/expediente/archivodigital/''' + archivoXml;
	        }else if (ambiente.equals("prod")) {
	       	 urlVerificacionFinal = '''https://expempresa.economia.gob.mx/expediente/archivodigital/''' + archivoXml;
	       	 }
	         else if (ambiente.equals("")) {
	            urlVerificacionFinal = '''http://NO_HA_SIDO_ESPECIFICADA_LA_URL_BAJO_EL_AMBIENTE_ACTUAL/''' + archivoXml;
	            } else 
	            	{
	                urlVerificacionFinal = '''http://NO_HA_SIDO_ESPECIFICADA_LA_URL_BAJO_EL_AMBIENTE_ACTUAL/''' + archivoXml;
	                }

String dirtySignatureTag = '''<Signature xmlns="http://www.w3.org/2000/09/xmldsig#">
    <SignedInfo>
        <CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" />
        <SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1" />
        <Reference URI="''' + urlVerificacionFinal + '''">
            <Transforms>
                <Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature" />
            </Transforms>
            <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256" />
                <DigestValue>''' + hashCadena + '''</DigestValue>
        </Reference>
    </SignedInfo>
    <SignatureValue>''' + selloDigital + '''</SignatureValue>
    <KeyInfo>
        <KeyValue>
            <RSAKeyValue>
                <Modulus>''' + modulus + '''</Modulus>
                <Exponent>AQAB</Exponent>
            </RSAKeyValue>
        </KeyValue>
        <X509Data>
            <X509SubjectName>''' + nombreSujetoX509 + '''</X509SubjectName>
            <X509IssuerSerial>
                <X509IssuerName>''' + nombreEmisorCert + '''</X509IssuerName>
                <X509SerialNumber>''' + serieCert + '''</X509SerialNumber>
                <NotBefore>''' + fechaInscripcion + '''</NotBefore>
                <NotAfter>''' + fechaCaducidad + '''</NotAfter>
            </X509IssuerSerial>
            <X509Certificate>''' + certificadoX509 + '''</X509Certificate>
            </X509Data>
    </KeyInfo>
    <Object Id="gobmxEsquemaTramitacion">
        <SignatureProperties xmlns:dsp="http://www.w3.org/2009/xmldsig-properties">
            <SignatureProperty Id="identifier" Target="#DistributorASignature">
                <dsp:Identifier>''' + folio + '''</dsp:Identifier>
            </SignatureProperty>
            <SignatureProperty Id="created" Target="#DistributorASignature">
                <dsp:Created>''' + timeStamp + '''</dsp:Created>
            </SignatureProperty>
            <SignatureProperty Id="curpOrfcFirmante" Target="#DistributorASignature">
                <dsp:curpOrfcFirmante>''' + curpOrfcFirmante + '''</dsp:curpOrfcFirmante>
            </SignatureProperty>
            <SignatureProperty Id="nombreFirmante" Target="#DistributorASignature">
                <dsp:nombreFirmante>''' + nombreFirmante + '''</dsp:nombreFirmante>
            </SignatureProperty>
        </SignatureProperties>
    </Object>
</Signature>'''

return["dirtySignatureTag":dirtySignatureTag,"urlVerificacionFinal":urlVerificacionFinal]