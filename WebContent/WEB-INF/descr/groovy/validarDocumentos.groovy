#input String extensionUsuario, String extensionReal, String etapaVidaEmpresarial, String esquemaDeTramitacion, String documento, String nombreArchivo
#output estatus, mensaje, hashDelArchivo, nombreDocumento


String estatus = "";
String mensaje = "";
String nombreDocumento = nombreArchivo + "." + extensionUsuario;



        if (etapaVidaEmpresarial.equals("Constitución") || etapaVidaEmpresarial.equals("Operación") || etapaVidaEmpresarial.equals("Cierre")){
        
        if (esquemaDeTramitacion.equals("1.1") || esquemaDeTramitacion.equals("1.2") || esquemaDeTramitacion.equals("1.3") || esquemaDeTramitacion.equals("1.4") || esquemaDeTramitacion.equals("1.5") || esquemaDeTramitacion.equals("1.6") || esquemaDeTramitacion.equals("2.1") || esquemaDeTramitacion.equals("2.2") || esquemaDeTramitacion.equals("2.3") || esquemaDeTramitacion.equals("3.1") || esquemaDeTramitacion.equals("3.2") || esquemaDeTramitacion.equals("3.3") || esquemaDeTramitacion.equals("3.4") || esquemaDeTramitacion.equals("4.1") || esquemaDeTramitacion.equals("4.2") || esquemaDeTramitacion.equals("4.3") || esquemaDeTramitacion.equals("5.1") || esquemaDeTramitacion.equals("5.2") || esquemaDeTramitacion.equals("5.3") || esquemaDeTramitacion.equals("5.4")){
            estatus = "1"; 
            mensaje = "Éxito";
        } else {
            estatus = "0";
            mensaje = "Esquema de tramitación incorrecto";
            }
    } else {
        estatus = "0";
        mensaje = "Etapa empresarial incorrecta";
    }


import java.security.MessageDigest

String uploadDir=rtx.getUploadDirectory();
File inputFile = new File(uploadDir+documento);

/* Activar para probar en groovyConsole
ubicacionArchivo = '/Users/homarsanchez/recording.xml'
File inputFile = new File(ubicacionArchivo);
*/

private String hashFile(File archivo, String algorithm) 
    throws IOException {
        try {
            FileInputStream inputStream = new FileInputStream(archivo)      
            MessageDigest digest = MessageDigest.getInstance(algorithm);
 
            byte[] bytesBuffer = new byte[1024];
            int bytesRead = -1;
 
            while ((bytesRead = inputStream.read(bytesBuffer)) != -1) {
            digest.update(bytesBuffer, 0, bytesRead);
            }
 
            byte[] hashedBytes = digest.digest();
 
            StringBuffer dirtyhashDelArchivo = new StringBuffer();
            for (int i = 0; i < hashedBytes.length; i++) {
            dirtyhashDelArchivo.append(Integer.toString((hashedBytes[i] & 0xff) + 0x100, 16).substring(1));
            }    

            return dirtyhashDelArchivo.toString();
        
            } catch (IOException ex) {
                throw new IOException(
                    "No se pudo generar el hash del archivo", ex);
        }
    }

String hashDelArchivo = hashFile(inputFile, "SHA-256");

return ["estatus":estatus, "mensaje":mensaje, "hashDelArchivo":hashDelArchivo, "nombreDocumento":nombreDocumento]