#input folio,fechaEmision,tyc,curpFirmante,rfcFirmante,nombreFirmante
#output xmlOriginal

String xmlOriginal = '''<documento-digital-firmado-con-e-firma esquema="1.6. Avisos y comunicaciones previas">
	<encabezado>
		<folio>''' + folio + '''</folio>
		<fecha-emision>''' + fechaEmision + '''</fecha-emision>
	</encabezado>
	<cuerpo>
		<aviso>La persona física que firma abajo, le comunica atentamente al Gobierno de la República que ha leído en su totalidad, y ACEPTA los términos y condiciones, y las políticas de privacidad y protección de datos privados detallados a continuación</aviso>
		<titulo>Términos y condiciones</titulo>
		<contenido>''' + tyc + '''</contenido>
	</cuerpo>
	<pie-de-pagina>
		<firmante>
			<curp-firmante>''' + curpFirmante + '''</curp-firmante>
			<rfc-firmante>''' + rfcFirmante + '''</rfc-firmante>
			<nombre-firmante>''' + nombreFirmante + '''</nombre-firmante>
		</firmante>
	</pie-de-pagina>
</documento-digital-firmado-con-e-firma>'''

return["xmlOriginal":xmlOriginal]