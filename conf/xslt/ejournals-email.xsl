<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<!-- this method was derived from the one http://www.bernzilla.com/item.php?id=333  Crazy cargo-cult programming going on here -->
<xsl:key name="urls" match="//doc/arr[@name='access_url']" use="concat(substring-before(.,'//'),'//',substring-before(substring-after(.,'//'),'/'))" />
<xsl:template match="/">
<xsl:text>Ejournals URL list for proxy maintenance
Report of urls for resources added to the ejournals list from
</xsl:text>
<xsl:value-of select="substring-before(substring-after(//lst[@name='responseHeader']/lst[@name='params']/str[@name='q'],'+timestamp:['),'T00:00:00Z TO')" />
<xsl:text> through </xsl:text>
<xsl:value-of select="substring-before(substring-after(//lst[@name='responseHeader']/lst[@name='params']/str[@name='q'],' TO '),'T00:00:00Z]')" />

<xsl:text>


</xsl:text>
 <xsl:for-each select="//doc/arr[@name='access_url'][generate-id() = generate-id(key('urls',concat(substring-before(.,'//'),'//',substring-before(substring-after(.,'//'),'/'))))]" >
 <!-- <xsl:for-each select="//doc/arr[@name='access_url']"> -->
 <xsl:value-of select="concat(substring-before(.,'//'),'//',substring-before(substring-after(.,'//'),'/'))"/>
 <xsl:text>
</xsl:text>
 </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
