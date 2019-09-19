#input llave,cert,cadenaOriginal
#output serialNum,inscripcionCertificado,caducidadCertificado,hashCadenaOriginal,selloDigital,certificadoX509,nombreEmisorCert,nombreSujetoX509

/// Excepciones y mensajes
import java.security.GeneralSecurityException
import java.security.MessageDigest
import java.security.cert.CertificateException

/// Para el caso de la llave privada
import java.security.spec.PKCS8EncodedKeySpec
import java.security.KeyFactory
import java.security.interfaces.RSAPrivateKey

/// Para el caso del cifrado de byte[] hashes usando la llave privada
import javax.crypto.Cipher

/// Para el caso de la llave pública
import java.security.cert.X509Certificate;
import java.security.cert.CertificateFactory;
import javax.security.auth.x500.X500Principal;
import java.security.PublicKey
import java.security.interfaces.RSAPublicKey
import java.security.cert.CertificateExpiredException
import java.security.cert.CertificateNotYetValidException

/// Para conversión de fechas y base64
import java.text.SimpleDateFormat
import javax.xml.bind.DatatypeConverter

/* Activar para groovyConsole
String ubicacionArchivo = "/Users/homarsanchez/Google Drive/openssl/sat/GAVA730717AE1.cer"
public X509Certificate obtenerCert(String ubicacion) throws FileNotFoundException, CertificateException, IOException {
    InputStream inStream = new FileInputStream(ubicacion)
    CertificateFactory cf = CertificateFactory.getInstance("X.509")
    X509Certificate certX509 =  (X509Certificate)cf.generateCertificate(inStream)
    return certX509;
}
X509Certificate cert = obtenerCert(ubicacionArchivo);
String cadenaOriginal = '''ejemplo'''
import org.apache.commons.ssl.PKCS8Key;
String ubicacionArchivoKey = "/Users/homarsanchez/Google Drive/openssl/sat/GAVA730717AE1.key"
String contrasenia = "12345678a"
FileInputStream f = new FileInputStream(ubicacionArchivoKey);
private byte[] extractProtectedPrivateKey(InputStream privateKeyInputStream, String keyPassword) {
    byte[] bytes;
    try {
        if(keyPassword == null) {
            bytes = ByteStreams.toByteArray(privateKeyInputStream);
        } else {
            bytes = new PKCS8Key(privateKeyInputStream, keyPassword.toCharArray()).getDecryptedBytes();
        }
    } catch (GeneralSecurityException e) {
        throw new RuntimeException("La contraseÔøΩa del .KEY no es correcta", e.getCause());
    } catch (IOException ioe){
        throw new RuntimeException(ioe.getMessage(), ioe.getCause());
    }
    return bytes;
}
byte[] llave = extractProtectedPrivateKey(f,contrasenia)
*/

/// Obtener serialNum
String serialNum = cert.getSerialNumber().toString(16);

/// Obtener fechas del certificado
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
dirtyInscripcionCertificado = cert.getNotBefore()
inscripcionCertificado = formatter.format(dirtyInscripcionCertificado);
dirtyCaducidadCertificado = cert.getNotAfter()
caducidadCertificado = formatter.format(dirtyCaducidadCertificado)

/// Obtener hashCadenaOriginal en SHA-256 -SHA2-
MessageDigest sha2 = MessageDigest.getInstance("SHA-256")

byte[] dirtyCadenaOriginal = cadenaOriginal.toString().getBytes();

SHA2deCadenaOriginal = sha2.digest(dirtyCadenaOriginal);

def hashCadenaOriginal = SHA2deCadenaOriginal.encodeBase64().toString();


// Cifrado del hash SHA-256 de la cadena original con la llave privada
PKCS8EncodedKeySpec spec = new PKCS8EncodedKeySpec(llave);
pk = KeyFactory.getInstance("RSA").generatePrivate(spec);
RSAPrivateKey rsaPrivateKey = (RSAPrivateKey) pk;
Cipher cipher = Cipher.getInstance("RSA");
cipher.init(Cipher.ENCRYPT_MODE, rsaPrivateKey);
byte[] cipherText = cipher.doFinal(SHA2deCadenaOriginal);
selloDigital = cipherText.encodeBase64().toString()

/// Obtener metadatos del SignatureInfo
String nombreSujetoX509 = cert.getSubjectX500Principal().getName(X500Principal.RFC1779);
String nombreEmisorCert = cert.getIssuerX500Principal().getName(X500Principal.RFC1779);
String certificadoX509 = DatatypeConverter.printBase64Binary(cert.getEncoded());

return["serialNum":serialNum,"inscripcionCertificado":inscripcionCertificado,"caducidadCertificado":caducidadCertificado,"hashCadenaOriginal":hashCadenaOriginal,"selloDigital":selloDigital,"certificadoX509":certificadoX509,"nombreEmisorCert":nombreEmisorCert,"nombreSujetoX509":nombreSujetoX509]
