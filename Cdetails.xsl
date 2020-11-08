<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h1>GROCERY INDIA</h1>
    <h2>Customer Details</h2>
    
    <table border="1">
      <tr bgcolor="lightgreen">
        <th>Customer ID</th>
        <th>Name</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Bill Amount</th>
      </tr>

      <xsl:for-each select="Cdetails/customer">
      <xsl:sort select="name"/>
      <tr bgcolor="wheat">
        <td><xsl:value-of select="id"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="phno"/></td>
        <td><xsl:value-of select="email"/></td>
        <td><xsl:value-of select="bill"/></td>
      </tr>
      </xsl:for-each>

    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

