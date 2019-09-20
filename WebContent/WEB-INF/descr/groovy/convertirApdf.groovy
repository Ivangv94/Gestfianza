#input String docRtf
#output uploadDir,nombreOutputFile,inputFile,outputFile,rutaArchivoPdf

import com.artofsolving.jodconverter.openoffice.connection.OpenOfficeConnection
import com.artofsolving.jodconverter.openoffice.connection.SocketOpenOfficeConnection
import com.artofsolving.jodconverter.DocumentConverter
import com.artofsolving.jodconverter.openoffice.converter.OpenOfficeDocumentConverter
import java.io.FileOutputStream;
import java.io.IOException;

String uploadDir=rtx.getUploadDirectory();

String nombreOutputFile=docRtf.replaceAll("rtf", "pdf");
File inputFile = new File(uploadDir+docRtf);
File outputFile = new File(uploadDir+nombreOutputFile);
String rutaArchivoPdf = uploadDir + nombreOutputFile

// connect to an OpenOffice.org instance running on port 8100
OpenOfficeConnection connection = new SocketOpenOfficeConnection(8100);
connection.connect();
 
// convert
DocumentConverter converter = new OpenOfficeDocumentConverter(connection);
converter.convert(inputFile, outputFile);
 
// close the connection
connection.disconnect();

return["uploadDir":uploadDir,"nombreOutputFile":nombreOutputFile,"inputFile":inputFile,"outputFile":outputFile,"rutaArchivoPdf":rutaArchivoPdf]