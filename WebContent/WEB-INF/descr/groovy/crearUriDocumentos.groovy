#input String archivo, String ambiente
#output uri

String uri = "http://172.18.53.174:2580/constitucion/archivodigital/" + archivo
if (ambiente.equals("local")) {
    uri = "http://localhost:8080/constitucionWeb/archivodigital/" + archivo;
    } 
    else if (ambiente.equals("desarrollo")) {
        uri ="http://172.18.53.174:2580/constitucion/archivodigital/" + archivo;
        }
        else if (ambiente.equals("qa")) {
            uri = "https://uatdisolucion.economia.gob.mx/constitucion/archivodigital/" + archivo;
            }else if (ambiente.equals("prod")) {
                uri = "https://disolucion.economia.gob.mx/constitucion/archivodigital/" + archivo;
                }
             else if (ambiente.equals("")) {
                uri = '''http://NO_HA_SIDO_ESPECIFICADA_LA_URL_BAJO_EL_AMBIENTE_ACTUAL/''';
                } else 
                    {
                    uri = "http://172.18.53.174:2580/constitucion/archivodigital/" + archivo;
                    }


return ["uri":uri]

