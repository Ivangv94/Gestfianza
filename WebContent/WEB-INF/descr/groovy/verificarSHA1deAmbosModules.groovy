#input llave,cert
#output String ruteo,dirtySujeto,inscripcionCertificado,caducidadCertificado,Boolean activo,String certificadoX509

/// Para el caso de la llave privada
import java.security.spec.PKCS8EncodedKeySpec
import java.security.KeyFactory
import java.security.GeneralSecurityException
import java.security.MessageDigest
import java.security.interfaces.RSAPrivateKey

/// Para el caso de la llave p√∫blica
import java.security.cert.X509Certificate;
import java.security.cert.CertificateFactory;
import javax.security.auth.x500.X500Principal;
import java.security.PublicKey
import java.security.interfaces.RSAPublicKey
import java.security.MessageDigest
import java.security.GeneralSecurityException
import java.security.cert.CertificateExpiredException
import java.security.cert.CertificateNotYetValidException

/// Para conversi√≥n de fechas
import java.text.SimpleDateFormat

/// Para obtener el X509 en Base64
import javax.xml.bind.DatatypeConverter;

/// Proceso para obtener el byte array SHA-1 de un byte array
public static byte[] hash(byte[] hashThis) {
    try {
    	byte[] hash = new byte[20];
        MessageDigest digest = MessageDigest.getInstance("SHA-1");      
        return digest.digest(hashThis);
    } catch (GeneralSecurityException e) {
        throw new RuntimeException("SHA-1 algorithm is not available...");
    } 
}

/// Obtener el SHA-1 de la llave privada
PKCS8EncodedKeySpec spec = new PKCS8EncodedKeySpec(llave);

pk = KeyFactory.getInstance("RSA").generatePrivate(spec);

RSAPrivateKey rsaPrivateKey = (RSAPrivateKey) pk;
byte[] dirtyModulusPrivateKey = rsaPrivateKey.getModulus().toByteArray(); 	

SHA1delDirtyModulusPrivateKey = hash(dirtyModulusPrivateKey);

StringBuffer dirtySHA1delModulusPrivateKey = new StringBuffer();
	for (int i = 0; i < SHA1delDirtyModulusPrivateKey.length; i++) {
    dirtySHA1delModulusPrivateKey.append(Integer.toString((SHA1delDirtyModulusPrivateKey[i] & 0xff) + 0x100, 16).substring(1));
	}
        
SHA1delModulusPrivateKey = dirtySHA1delModulusPrivateKey.toString()

/// Obtener el SHA-1 de la llave p√∫blica
PublicKey publickey = cert.getPublicKey()
RSAPublicKey rsaPublicKey = (RSAPublicKey) publickey
byte[] dirtyModulusPublicKey = rsaPublicKey.getModulus().toByteArray();
SHA1delDirtyModulusPublicKey = hash(dirtyModulusPublicKey);

StringBuffer dirtySHA1delModulusPublicKey = new StringBuffer();
	for (int i = 0; i < SHA1delDirtyModulusPublicKey.length; i++) {
	dirtySHA1delModulusPublicKey.append(Integer.toString((SHA1delDirtyModulusPublicKey[i] & 0xff) + 0x100, 16).substring(1));
	} 
SHA1delModulusPublicKey = dirtySHA1delModulusPublicKey.toString()

/// Discernir si es PF o PM, y comparar los hash SHA-1 de ambos modulus y rutear
String sujeto = cert.getSubjectX500Principal().getName(X500Principal.RFC1779)
String dirtySujeto = sujeto.split("OID.2.5.4.5=").getAt(1)
String curp1 = dirtySujeto.split(", OID.2.5.4.45=").getAt(0)
String curp2 = String.valueOf(curp1.charAt(0));

if(curp2.equals("\"")) {
	if(SHA1delModulusPrivateKey.equals(SHA1delModulusPublicKey)){
		ruteo = "1PM"
	} else {
	ruteo = "0PM"
	}
} else {
	if(SHA1delModulusPrivateKey.equals(SHA1delModulusPublicKey)){
		ruteo = "1PF"
	} else {
	ruteo = "0PF"
	}
}

/// Obtener fechas del certificado
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");

dirtyInscripcionCertificado = cert.getNotBefore()

inscripcionCertificado = formatter.format(dirtyInscripcionCertificado);

dirtyCaducidadCertificado = cert.getNotAfter()

caducidadCertificado = formatter.format(dirtyCaducidadCertificado)

/// Determinar si el usuario est√° activo o no
try {
    	cert.checkValidity()
        activo = 1
    } catch (CertificateExpiredException e) {
        activo = 0
        
    } catch (CertificateNotYetValidException e) {
    	activo = 0
    }

/// Obtener el certificadoX509 en formato Base64 para consumo del OCSP
byte[] derCert = cert.getEncoded();
String encoded = DatatypeConverter.printBase64Binary(derCert)

return["ruteo":ruteo,"dirtySujeto":dirtySujeto,"inscripcionCertificado":inscripcionCertificado,"caducidadCertificado":caducidadCertificado,"activo":activo,"certificadoX509":encoded]