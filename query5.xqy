let $doc :=  doc("noticias.xml")
let $total := avg($doc/noticias/articulo/numero_lineas)
for $articulo in $doc//articulo
where $articulo/numero_lineas > $total
return concat("Titulo : " , $articulo/titulo)