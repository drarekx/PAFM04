let $doc :=  doc("noticias.xml")
let $total := sum($doc/noticias/articulo/numero_lineas)
return $total