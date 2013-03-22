<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<!-- this method was derived from the one http://www.bernzilla.com/item.php?id=333  Crazy cargo-cult programming going on here -->
<xsl:key name="urls" match="//doc/arr[@name='access_url']/str" use="concat(substring-before(.,'//'),'//',substring-before(substring-after(concat(.,'/'),'//'),'/'))" />
<xsl:template match="/">
 <xsl:for-each select="//doc/arr[@name='access_url']/str[generate-id() = generate-id(key('urls',concat(substring-before(.,'//'),'//',substring-before(substring-after(concat(.,'/'),'//'),'/'))))]" >
 <!-- <xsl:for-each select="//doc/arr[@name='access_url']"> -->
 <xsl:value-of select="concat(substring-before(.,'//'),'//',substring-before(substring-after(concat(.,'/'),'//'),'/'))"/>
 <xsl:text>
</xsl:text>
 </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
