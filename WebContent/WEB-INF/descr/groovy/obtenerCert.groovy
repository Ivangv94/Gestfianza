#input String archivoCer
#output cert

import java.security.cert.X509Certificate;
import java.security.cert.CertificateFactory;
import javax.security.auth.x500.X500Principal;

String bufferDir = rtx.getUploadDirectory();
String ubicacionArchivo = bufferDir + archivoCer

InputStream inStream = new FileInputStream(ubicacionArchivo)
CertificateFactory cf = CertificateFactory.getInstance("X.509")
X509Certificate cert = (X509Certificate)cf.generateCertificate(inStream)

return["cert":cert]