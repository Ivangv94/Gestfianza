#input String comando
#output consola
//String theOriginalString = "ls -al"
String theOriginalString = comando;
String[] parts = theOriginalString.split(" ");
Process process = new ProcessBuilder(parts).start();

// Se lee la salida
InputStream is = process.getInputStream();
InputStreamReader isr = new InputStreamReader(is);
BufferedReader br = new BufferedReader(isr);
String consola = "";
String line;
while ((line = br.readLine()) != null) {
  consola = consola + line + "\n"
 // System.out.println(line);
}

// Esperamos que el proceso termine
try {
  int exitValue = process.waitFor();
 // System.out.println("\nCódigo de salida: "+ exitValue);
} catch (InterruptedException e) {
  e.printStackTrace(System.err);
}

//println(consola);

return["consola":consola]