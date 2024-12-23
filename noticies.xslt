<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    html{
                        background:#000;
                        color:white;
                    }
                </style>
            </head>
            <body>
                <h1>Noticies</h1>

                <table>
                    <thead>
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Fecha</th>
                        <th>Categoria</th>
                    </thead>

                    <xsl:for-each select="//articulo">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="autor"/>
                            </td>
                            <td>
                                <xsl:value-of select="fecha"/>
                            </td>
                            <td>
                                <xsl:value-of select="categoria"/>
                            </td>
                            <td>
                                <xsl:for-each select="imatges/imatge">
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="."/>
                                        </xsl:attribute>
                                    </img>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>