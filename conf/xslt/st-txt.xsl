<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
<xsl:text>ID	Name	Cross-Searchable	Publisher	Native-URL	Permalink
</xsl:text>
 <xsl:for-each select="//doc">
 <xsl:value-of select="substring(str[@name='id'],62,8)"/>
 <xsl:text>	</xsl:text>
 <xsl:value-of select="str[@name='title']"/>
 <xsl:text>	</xsl:text>
 <xsl:value-of select="bool[@name='status']"/>
 <xsl:text>	</xsl:text>
 <xsl:value-of select="str[@name='publisher']"/>
 <xsl:text>	</xsl:text>
 <xsl:value-of select="arr[@name='access_url']/str"/>
 <xsl:text>	</xsl:text>
 <xsl:value-of select="substring(str[@name='id'],1,69)"/>
 <xsl:text>
</xsl:text>
 </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
