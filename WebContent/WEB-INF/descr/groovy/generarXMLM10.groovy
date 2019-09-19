#input String folioMercantil,String instrumentoNumero,String instrumentoVolumen,String instrumentoLibro,String instrumentoFecha,String notarioOCorredor,String nombreNotario,String numeroNotario
#input String entidadNotario,String municipioNotario,String nombreSociedad,String nombreRL,String apellido1Apoderado,String apellido2Apoderado,String nombresApoderado,String rfcApoderado,String cargoApoderado
#input String estatusApoderado,String totalParcialApoderado,String facultadesApoderado,String nombreRenuncia,String cargoRenuncia,String sociedadRenuncia,String antecedenteInstrumentoNumero
#input String antecedenteInstrumentoVolumen,String antecedenteInstrumentoLibro,String antecedenteInstrumentoFecha,String antecedentenotarioOCorredor,String antecedenteNombreNotario,String antecedenteNumeroNotario
#input String antecedenteEntidadNotario,String antecedenteMunicipioNotario,String inscritoFolioControlInterno,String fechaRecepcion,String numeroRegistro,String nombreSociedad,String domicilioRL
#output xml
/* Pruebas para groovyConsole
String folioMercantil= "123456"
String instrumentoNumero= "123456"
String instrumentoVolumen= "123456"
String instrumentoLibro= "123456"
String instrumentoFecha= "123456"
String notarioOCorredor= "123456"
String nombreNotario= "123456"
String numeroNotario= "123456"
String entidadNotario= "123456"
String municipioNotario= "123456"
String nombreSociedad= "123456"
String nombreRL= "123456"
String apellido1Apoderado= "123456"
String apellido2Apoderado= "123456"
String nombresApoderado= "123456"
String rfcApoderado= "123456"
String cargoApoderado= "123456"
String estatusApoderado= "123456"
String totalParcialApoderado= "123456"
String facultadesApoderado= "123456"
String nombreRenuncia= "123456"
String cargoRenuncia= "123456"
String sociedadRenuncia= "123456"
String antecedenteInstrumentoNumero= "123456"
String antecedenteInstrumentoVolumen= "123456"
String antecedenteInstrumentoLibro= "123456"
String antecedenteInstrumentoFecha= "123456"
String antecedentenotarioOCorredor= "123456"
String antecedenteNombreNotario= "123456"
String antecedenteNumeroNotario= "123456"
String antecedenteEntidadNotario= "123456"
String antecedenteMunicipioNotario= "123456"
String inscritoFolioControlInterno= "123456"
String fechaRecepcion= "123456"
String numeroRegistro= "123456"
//String nombreSociedad= "123456"
String domicilioRL= "123456"
*/
String xml = '''
<xml>
    <poderNotarial>
        <folioMercantilElectronico>'''+folioMercantil+'''</folioMercantilElectronico>
        <instrumento>
            <numero>'''+instrumentoNumero+'''</numero>
            <volumen>'''+instrumentoVolumen+'''</volumen>
            <libro>'''+instrumentoLibro+'''</libro>
            <fechaInstrumento>'''+instrumentoFecha+'''</fechaInstrumento>
        </instrumento>
        <otorgadoAnte>
            <notarioOCorredor>'''+notarioOCorredor+'''</notarioOCorredor>
        </otorgadoAnte>
        <datosNotario>
            <nombreNotario>'''+nombreNotario+'''</nombreNotario>
            <numeroNotario>'''+numeroNotario+'''</numeroNotario>
            <entidadNotario>'''+entidadNotario+'''</entidadNotario>
            <municipioNotario>'''+municipioNotario+'''</municipioNotario>
        </datosNotario>
        <nombreSociedad>'''+nombreSociedad+'''</nombreSociedad>
        <nombreRL>'''+nombreRL+'''</nombreRL>
        <poderes>
            <apoderado>
                <apellido1Apoderado>'''+apellido1Apoderado+'''</apellido1Apoderado>
                <apellido2Apoderado>'''+apellido2Apoderado+'''</apellido2Apoderado>
                <nombresApoderado>'''+nombresApoderado+'''</nombresApoderado>
                <rfcApoderado>'''+rfcApoderado+'''</rfcApoderado>
                <cargoApoderado>'''+cargoApoderado+'''</cargoApoderado>
                <!--otorga, revoca o sustituye-->
                <estatusApoderado>'''+estatusApoderado+'''</estatusApoderado>
                <!--Total o parcial-->
                <totalParcialApoderado>'''+totalParcialApoderado+'''</totalParcialApoderado>
                <facultadesApoderado>'''+facultadesApoderado+'''</facultadesApoderado>
            </apoderado>
            <renuncia>
                <nombreRenuncia>'''+nombreRenuncia+'''</nombreRenuncia>
                <cargoRenuncia>'''+cargoRenuncia+'''</cargoRenuncia>
                <sociedadRenuncia>'''+sociedadRenuncia+'''</sociedadRenuncia>
            </renuncia>
            <antecedentes>
                <instrumento>
                    <numero>'''+antecedenteInstrumentoNumero+'''</numero>
                    <volumen>'''+antecedenteInstrumentoVolumen+'''</volumen>
                    <libro>'''+antecedenteInstrumentoLibro+'''</libro>
                    <fechaInstrumento>'''+antecedenteInstrumentoFecha+'''</fechaInstrumento>
                </instrumento>
                <otorgadoAnte>
                    <notarioOCorredor>'''+antecedentenotarioOCorredor+'''</notarioOCorredor>
                </otorgadoAnte>
                <datosNotario>
                    <nombreNotario>'''+antecedenteNombreNotario+'''</nombreNotario>
                    <numeroNotario>'''+antecedenteNumeroNotario+'''</numeroNotario>
                    <entidadNotario>'''+antecedenteEntidadNotario+'''</entidadNotario>
                    <municipioNotario>'''+antecedenteMunicipioNotario+'''</municipioNotario>
                </datosNotario>
                <inscritoFolioControlInterno>'''+inscritoFolioControlInterno+'''</inscritoFolioControlInterno>
                <fechaRecepcion>'''+fechaRecepcion+'''</fechaRecepcion>
                <numeroRegistro>'''+numeroRegistro+'''</numeroRegistro>
                <nombreSociedad>'''+nombreSociedad+'''</nombreSociedad>
                <domicilioRL>'''+domicilioRL+'''</domicilioRL>
            </antecedentes>
        </poderes>
    </poderNotarial>
</xml>
'''