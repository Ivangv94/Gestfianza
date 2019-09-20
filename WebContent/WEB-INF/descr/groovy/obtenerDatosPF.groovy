#input dirtySujeto
#output CURP,RFC,DireccionElectronica,nombreCompleto

String curp = dirtySujeto.split(", OID.2.5.4.45=").getAt(0)

String dirtyRFC = dirtySujeto.split(", OID.2.5.4.45=").getAt(1)
String RFC = dirtyRFC.split(", OID.1.2.840.113549.1.9.1=").getAt(0)

String dirtyDireccionElectronica = dirtySujeto.split(", OID.1.2.840.113549.1.9.1=").getAt(1)
String DireccionElectronica = dirtyDireccionElectronica.split(", C").getAt(0)

String dirtyNombre = dirtySujeto.split(", OID.2.5.4.41=").getAt(1)
String nombreCompleto = dirtyNombre.split(", CN").getAt(0)

return["CURP":curp,"RFC":RFC,"DireccionElectronica":DireccionElectronica,"nombreCompleto":nombreCompleto]