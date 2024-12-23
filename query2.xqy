for $articulo in doc("noticias.xml")//articulo
return concat("Autor : " , $articulo/autor, " - Titulo : " , $articulo/titulo)

