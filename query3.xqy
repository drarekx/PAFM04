for $articulo in doc("noticias.xml")//articulo
order by $articulo/numero_lineas descending
return concat($articulo/numero_lineas, " - Autor : " , $articulo/autor, " - Titulo : " , $articulo/titulo)

