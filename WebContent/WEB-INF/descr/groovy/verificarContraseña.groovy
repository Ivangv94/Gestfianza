#input archivoKey,String contrasenia
#output llave

import org.apache.commons.ssl.PKCS8Key
import java.security.GeneralSecurityException

/// Activar para groovyConsole
//String ubicacionArchivo = "/Users/desarrollo/Google Drive (desarrollo@wesimplycreate.com)/openssl/dev/openssl/sat/GAVA730717AE1.key"
//String contrasenia = "12345678a"

String dirtyBufferDir = rtx.getUploadDirectory();
String bufferDir = dirtyBufferDir.replaceAll("/upload", "/")
String dirtyArchivo = archivoKey.toString()
String archivo = dirtyArchivo.substring(1, dirtyArchivo.length()-1)
String ubicacionArchivo = bufferDir + archivo

FileInputStream f = new FileInputStream(ubicacionArchivo);

private byte[] extractProtectedPrivateKey(InputStream privateKeyInputStream, String keyPassword) {
byte[] bytes;

try {
if(keyPassword == null) {
        bytes = ByteStreams.toByteArray(privateKeyInputStream);
    } else {
            bytes = new PKCS8Key(privateKeyInputStream, keyPassword.toCharArray()).getDecryptedBytes();
        }
    } catch (GeneralSecurityException e) {
        throw new RuntimeException("La contraseña del .KEY no es correcta", e.getCause());
    } catch (IOException ioe){
    throw new RuntimeException(ioe.getMessage(), ioe.getCause());
    }

    return bytes;
}

byte[] llave = extractProtectedPrivateKey(f,contrasenia)

return["llave":llave];