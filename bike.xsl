<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:br="http://www.bikerental.com"  exclude-result-prefixes="br">  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Bike Rentals</title>
      </head>
      <body>
        <h1>Current Bike Rentals</h1>
        <table border="1">
          <tr>
            <th>Bike ID</th>
            <th>Type</th>
            <th>Name</th>
            <th>Rental Date</th>
            <th>Return Date</th>
            <th>Rental Price</th>
            <th>Renter Name</th>
            <th>Location</th>
          </tr>
          <xsl:for-each select="br:bikeRental/br:bike">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="@type"/></td>
              <td><xsl:value-of select="br:name"/></td>
              <td><xsl:value-of select="br:rentalDate"/></td>
              <td><xsl:value-of select="br:returnDate"/></td>
              <td><xsl:value-of select="br:rentalPrice"/></td>
              <td><xsl:value-of select="br:renterName"/></td>
              <td><xsl:value-of select="br:location"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>