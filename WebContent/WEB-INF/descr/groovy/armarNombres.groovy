#input dirtyNombreCer,dirtyNombreKey
#output nombreCer,nombreKey

import org.apache.commons.lang.StringUtils

nombreCer = StringUtils.defaultString(StringUtils.substringBeforeLast(dirtyNombreCer, "."), "Document") + ".cer";
nombreKey = StringUtils.defaultString(StringUtils.substringBeforeLast(dirtyNombreKey, "."), "Document") + ".key";

return["nombreCer":nombreCer,"nombreKey":nombreKey]
