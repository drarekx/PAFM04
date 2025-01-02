let $doc := doc("noticias.xml")
let $etiquetas := tokenize(string-join($doc//articulo/etiquetas, ","), ",\\s*")
for $etiqueta in distinct-values($etiquetas)
let $conteo := count($etiquetas[. = $etiqueta])
return $conteo
