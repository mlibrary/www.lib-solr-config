<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:template match="/">
<urlset
xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" >
  
 <xsl:for-each select="//doc">
  <url>
   <xsl:choose>
     <xsl:when test="substring(str[@name='id'],1,5)='http:'"><loc><xsl:value-of select="str[@name='id']"/></loc></xsl:when>
     <xsl:when test="str[@name='path_alias']"><loc>http://www.lib.umich.edu/<xsl:value-of select="str[@name='path_alias']"/></loc></xsl:when> 
     <xsl:when test="str[@name='url']"><loc>http://www.lib.umich.edu/<xsl:value-of select="str[@name='url']"/></loc></xsl:when>
     <xsl:otherwise><loc>http://www.lib.umich.edu/node/<xsl:value-of select="str[@name='id']"/></loc></xsl:otherwise>
   </xsl:choose>
  </url>
  </xsl:for-each>
</urlset>
</xsl:template>
</xsl:stylesheet>
