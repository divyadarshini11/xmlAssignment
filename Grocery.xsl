<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h1>GROCERY INDIA</h1>
    <h2>Sales Invoice</h2>
    
    <table border="1">
      <tr bgcolor="lightgreen">
        <th>Name</th>
        <th>Price</th>
        <th>Qantity</th>
        <th>Total Amount</th>
      </tr>

      <xsl:for-each select="billing/items">
      <xsl:sort select="name"/>
      <tr bgcolor="wheat">
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="quantity"/></td>
        <td><xsl:value-of select="Total"/></td>
      </tr>
      </xsl:for-each>

    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

