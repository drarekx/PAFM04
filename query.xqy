for $articulo in doc("noticias.xml")//articulo
where $articulo/autor = "Gerard Fortea"
return concat("titol " , $articulo/titulo)

