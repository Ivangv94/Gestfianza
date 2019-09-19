#input String cadena
#output xmlRequest,xmlResponse
 
import javax.xml.soap.SOAPConnectionFactory;
import javax.xml.soap.SOAPConnection;
import javax.xml.soap.SOAPMessage;
import javax.xml.soap.MessageFactory;
import javax.xml.soap.SOAPConstants;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;

// Para probar en groovyConsole
//String cadena = '''ungWv48Bz+pBQUDeXa4iI7ADYaOWF3qctBD/YfIAFa0='''

def dirtyXmlRequest = '''<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:ws=\"http://WS/\">
   <soapenv:Header/>
   <soapenv:Body>
      <ws:WSFirmaCadena>
         <!--Optional:-->
         <entidad>SE</entidad>
         <!--Optional:-->
         <operacion>rug01</operacion>
         <!--Optional:-->
         <usuario>wsuser</usuario>
         <!--Optional:-->
         <clave>12121212</clave>
         <!--Optional:-->
         <objeto>psm</objeto>
         <!--Optional:-->
         <cadena>''' + cadena + '''</cadena>
         <tipo>1</tipo>
      </ws:WSFirmaCadena>
   </soapenv:Body>
</soapenv:Envelope>'''

String endpointURL =  "http://www.soafirma.economia.gob.mx:80/WSCommerceFiel/WSCommerceFielService";
SOAPConnectionFactory soapConnectionFactory = SOAPConnectionFactory.newInstance();
SOAPConnection soapConnection = soapConnectionFactory.createConnection();

InputStream is = new ByteArrayInputStream(dirtyXmlRequest.getBytes());
SOAPMessage soapMessage;
SOAPMessage soapResponse;

// Send SOAP Message to SOAP Server
try {   
    soapMessage = MessageFactory.newInstance(SOAPConstants.SOAP_1_1_PROTOCOL).createMessage(null, is);
    soapResponse = soapConnection.call(soapMessage, endpointURL);
    } catch (Exception e) {
        throw new RuntimeException("El servicio de firmado de SE no responde", e.getCause());
        }

public String soapMessageToString(SOAPMessage message) 
    {
        String result = null;

        if (message != null) 
        {
            ByteArrayOutputStream baos = null;
            try 
            {
                baos = new ByteArrayOutputStream();
                message.writeTo(baos); 
                result = baos.toString();
            } 
            catch (Exception e) 
            {
            } 
            finally 
            {
                if (baos != null) 
                {
                    try 
                    {
                        baos.close();
                    } 
                    catch (IOException ioe) 
                    {
                    }
                }
            }
        }
        return result;
    }  

//XML as a String:
String xmlRequest = soapMessageToString(soapMessage);
String xmlResponse = soapMessageToString(soapResponse);

return["xmlRequest":xmlRequest,"xmlResponse":xmlResponse]