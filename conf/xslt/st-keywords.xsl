<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
<xsl:text>ID	Name	Publisher	Native-URL	Keywords	Description
</xsl:text>
 <xsl:for-each select="//doc">
 <xsl:value-of select="substring(str[@name='id'],62,8)"/>
 <xsl:text>	</xsl:text>
 <xsl:value-of select="str[@name='title']"/>
 <xsl:text>	</xsl:text>
 <xsl:value-of select="str[@name='publisher']"/>
 <xsl:text>	</xsl:text>
 <xsl:value-of select="arr[@name='access_url']/str"/>
 <xsl:text>	</xsl:text>
 <xsl:value-of select="str[@name='keywords']"/>
 <xsl:text>	</xsl:text>
 <xsl:call-template name="replace">
   <xsl:with-param name="string" select="str[@name='body']"/>
 </xsl:call-template>
 <xsl:text>
</xsl:text>
 </xsl:for-each>
</xsl:template>
<xsl:template name="replace">
  <xsl:param name="string" />
  <xsl:choose>
    <xsl:when test="contains($string,'&#10;')">
      <xsl:value-of select="substring-before($string,'&#10;')"/>
      <xsl:text>  </xsl:text>
      <xsl:call-template name="replace">
        <xsl:with-param name="string" select="substring-after($string,'&#10;')"/>
      </xsl:call-template>
    </xsl:when> 
  </xsl:choose>
</xsl:template>
</xsl:stylesheet>
