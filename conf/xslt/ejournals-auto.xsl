<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
  <xsl:for-each select="//doc">
    <xsl:variable name="doc" select="position()" />
    <xsl:for-each select="arr[@name='access_url']">
      <xsl:variable name="arr" select="position()" />
      <xsl:for-each select="str">
        <xsl:variable name="str" select="position()" />
        <xsl:value-of select="//doc[$doc]/arr[@name='access_url'][$arr]/str[$str]"/>
        <xsl:text>	</xsl:text>
        <xsl:value-of select="//doc[$doc]/arr[@name='access_type'][$arr]/str[$str]"/>
        <xsl:text>
</xsl:text>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
