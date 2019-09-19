#input String dirtySujeto
#output razonSocial,DireccionElectronica,curpRepLeg,RFCPM,RFCrepLeg

String dirtyRazonSocial = dirtySujeto.split(", OID.2.5.4.41=").getAt(1)
String razonSocial = dirtyRazonSocial.split(", CN=").getAt(0)

String dirtyDireccionElectronica = dirtySujeto.split(", OID.1.2.840.113549.1.9.1=").getAt(1)
String DireccionElectronica = dirtyDireccionElectronica.split(", C").getAt(0)

String curp1 = dirtySujeto.split(", OID.2.5.4.45=").getAt(0)
String curp2 = String.valueOf(curp1.charAt(0));
String curp3 = curp1.replaceAll("\" / ","")
String curpRepLeg =curp3.replaceAll("\"","")

String dirtyRFC = dirtySujeto.split(", OID.2.5.4.45=").getAt(1)
String RFCPM1 = dirtyRFC.split(", OID.1.2.840.113549.1.9.1=").getAt(0)
String RFCPM = RFCPM1.split(" / ").getAt(0)
String RFCrepLeg = RFCPM1.split(" / ").getAt(1)

return["razonSocial":razonSocial,"DireccionElectronica":DireccionElectronica,"curpRepLeg":curpRepLeg,"RFCPM":RFCPM,"RFCrepLeg":RFCrepLeg]