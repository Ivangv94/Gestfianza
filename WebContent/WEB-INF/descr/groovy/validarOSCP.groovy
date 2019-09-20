#input certUsuario,String ambiente
#output respuestaOcsp

/// X509
import java.security.cert.X509Certificate;
import java.security.cert.CertificateFactory;

/// Para excepciones
import java.security.cert.CertificateException;

/// BouncyCastle
import org.bouncycastle.ocsp.OCSPException;
import org.bouncycastle.ocsp.OCSPReqGenerator;
import org.bouncycastle.ocsp.CertificateID;
import org.bouncycastle.ocsp.OCSPReq;
import org.bouncycastle.ocsp.OCSPResp;
import org.bouncycastle.asn1.ocsp.OCSPResponseStatus;
import java.security.*;

/* Habilitar para groovyConsole la siguiente lÔøΩnea:
String ambiente = "prod";
*/

if (ambiente.equals("prod")) {
        varUrl = "https://cfdi.sat.gob.mx/edofiel"
        } else {
          varUrl = "https://cfdit.sat.gob.mx/edofiel"
        }

CertificateFactory cf = CertificateFactory.getInstance("X.509")

/* Activar para groovyConsole
String dirtyUbicacionCertAutoridad = "/Users/homarsanchez/Google Drive/openssl/sat/"
String ubicacionCertUsuario = "/Users/homarsanchez/Google Drive/openssl/e.firmas/prod/fisicas/ok/Richard/sahr8903044w1.cer"

InputStream inStreamUsuario = new FileInputStream(ubicacionCertUsuario)
java.security.cert.X509Certificate certUsuario = (X509Certificate)cf.generateCertificate(inStreamUsuario)
*/

String serialNum = certUsuario.getSerialNumber().toString(16);
String novena = serialNum.substring(23,24);

String dirtyUbicacionCertAutoridad = "/opt/wildfly/standalone/lib/sat/"
//String dirtyUbicacionCertAutoridad = "/u01/usuarios/desasds/glassfish4/glassfish/domains/desasds/lib/sat/"


if (ambiente.equals("qa")) {
	ubicacionCertAutoridad = dirtyUbicacionCertAutoridad + "uat_ac2_4096.cer"
	} else if (ambiente.equals("uat_triara")) {
		ubicacionCertAutoridad = dirtyUbicacionCertAutoridad + "uat_ac2_4096.cer"
		} else if (novena.equals("0")) {
		    ubicacionCertAutoridad = dirtyUbicacionCertAutoridad + "AC0_SAT.cer"
		    } else if (novena.equals("1")) {
		        ubicacionCertAutoridad = dirtyUbicacionCertAutoridad + "AC1_SAT.cer"
		        } else if (novena.equals("2")) {
		            ubicacionCertAutoridad = dirtyUbicacionCertAutoridad + "AC2_SAT.cer"
		            } else if (novena.equals("3")) {
		                ubicacionCertAutoridad = dirtyUbicacionCertAutoridad + "AC3_SAT.cer"
		                } else if (novena.equals("4")) {
		                    ubicacionCertAutoridad = dirtyUbicacionCertAutoridad + "AC4_SAT.cer"
		                    } else {
		                        ubicacionCertAutoridad = dirtyUbicacionCertAutoridad + "AC0_SAT.cer"
		                        }

/// Obtener el cerX509 de la AC
InputStream inStreamAutoridad = new FileInputStream(ubicacionCertAutoridad)
java.security.cert.X509Certificate certAutoridad = (X509Certificate)cf.generateCertificate(inStreamAutoridad)

/// MÔøΩtodo para OCSP
public String validarOCSP(X509Certificate issuerCert, X509Certificate cert,String ocspUrl) throws FileNotFoundException, CertificateException, OCSPException, IOException {

    Security.addProvider(new org.bouncycastle.jce.provider.BouncyCastleProvider());

    OCSPReqGenerator ocspReqGen = new OCSPReqGenerator();
    ocspReqGen.addRequest(new CertificateID(CertificateID.HASH_SHA1, issuerCert, cert.getSerialNumber()));
    OCSPReq ocspReq = ocspReqGen.generate();

    byte[] reqData = ocspReq.getEncoded();

    URL url = new URL(ocspUrl);

    HttpURLConnection con = (HttpURLConnection) url.openConnection();

    con.setRequestProperty("Content-Type", "application/ocsp-request");
    con.setRequestProperty("Accept", "application/ocsp-response");
    con.setDoOutput(true);
    OutputStream out = con.getOutputStream();
    DataOutputStream dataOut = new DataOutputStream(new BufferedOutputStream(out));

    /* Se obtiene la respuesta del servidor OCSP */
    dataOut.write(ocspReq.getEncoded());

    dataOut.flush();
    dataOut.close();

    /* Se parsea la respuesta y se obtiene el estado del certificado informado por el OCSP */
    InputStream info = (InputStream) con.getContent();
    OCSPResp ocspResponse = new OCSPResp(info);
    int status = ocspResponse.getStatus();
    if (con.getResponseCode() / 100 != 2) {
        throw new Exception("INTERNAL_SERVER_ERROR");
    } else if (ocspResponse.getStatus() == OCSPResponseStatus.SUCCESSFUL) {
            return "SUCCESSFUL";
            } else if (ocspResponse.getStatus() == OCSPResponseStatus.INTERNAL_ERROR) {
                return "INTERNAL_ERROR";
                } else if (ocspResponse.getStatus() == OCSPResponseStatus.MALFORMED_REQUEST) {
                    return "MALFORMED_REQUEST";
                    } else if (ocspResponse.getStatus() == OCSPResponseStatus.SIG_REQUIRED) {
                        return "SIG_REQUIRED";
                        } else if (ocspResponse.getStatus() == OCSPResponseStatus.TRY_LATER) {
                            return "TRY_LATER";
                            } else if (ocspResponse.getStatus() == OCSPResponseStatus.UNAUTHORIZED) {
                                return "UNAUTHORIZED";
                                } else {
                                    return "ERROR_DESCONOCIDO"
                                    }
}

String respuestaOcsp = validarOCSP(certAutoridad, certUsuario, varUrl);

return["respuestaOcsp":respuestaOcsp]
