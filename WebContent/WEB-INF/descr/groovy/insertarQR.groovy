#input String rutaArchivoPdf,String qr
#output filefinal

import java.io.FileOutputStream;

import java.io.IOException;
import com.lowagie.text.Image;
import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.pdf.PdfContentByte;
import com.lowagie.text.pdf.PdfReader;
import com.lowagie.text.pdf.PdfStamper;

import org.apache.commons.lang.StringUtils;
 import com.webratio.rtx.RTXBLOBData;
 import com.webratio.rtx.blob.BLOBData;
 import com.webratio.rtx.RTXBLOBService;
 import org.apache.commons.httpclient.HttpClient;
 import org.apache.commons.httpclient.cookie.CookiePolicy;
 import org.apache.commons.httpclient.methods.GetMethod;
 import org.apache.commons.io.FileUtils;
 import org.apache.commons.io.FilenameUtils;
 import org.apache.commons.io.IOUtils;
 import com.webratio.rtx.blob.ExternalBLOBData
 import com.webratio.rtx.blob.ByteArrayBLOBData
 import java.text.DateFormat
 import java.text.Format
 import java.text.SimpleDateFormat;

String uploadDir=rtx.getUploadDirectory();

/// Aqui empieza el script para agregar la imagen.
String nombreOutputFile=rutaArchivoPdf.replaceAll(".pdf","ConQR.pdf");

PdfReader reader = new PdfReader(rutaArchivoPdf);
PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(nombreOutputFile));
Image img = Image.getInstance(uploadDir+qr);
img.setAbsolutePosition(275, 95);
BaseFont bf = BaseFont.createFont(BaseFont.HELVETICA, BaseFont.WINANSI, BaseFont.NOT_EMBEDDED);
PdfContentByte under, over;
stamper.setRotateContents(false);
int ultimaPagina = reader.getNumberOfPages()
over = stamper.getOverContent(ultimaPagina);
over.addImage(img);
stamper.close();

java.io.File filefinal = new java.io.File(nombreOutputFile);
RTXBLOBData blobFile = new ExternalBLOBData(nombreOutputFile, filefinal, rtx);

File fichero = new File(rutaArchivoPdf);
fichero.delete();

return ["filefinal": blobFile];