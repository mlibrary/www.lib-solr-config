<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
<xsl:text>&lt;?php

  $pgTitle = 'List of Databases for Link Checking';
  $inc_path = '/phase2/';
  require_once($_SERVER['DOCUMENT_ROOT'] . $inc_path . 'php/header_top.php');
  require_once($_SERVER['DOCUMENT_ROOT'] . $inc_path . 'php/header_bottom.php');
  print "&lt;h1&gt;$pgTitle&lt;/h1&gt;\n";

$titles = &lt;&lt;&lt;EOF
</xsl:text>
 <xsl:for-each select="//str[@name='title']">
 <xsl:value-of select="."/>
 <xsl:text>
</xsl:text>
 </xsl:for-each>
<xsl:text>EOF;
$titles = split("\n",$titles);
$urls = &lt;&lt;&lt;EOF
</xsl:text>
 <xsl:for-each select="//str[@name='url']">
 <xsl:value-of select="."/>
 <xsl:text>
</xsl:text>
 </xsl:for-each>
<xsl:text>EOF;
$urls = split("\n",$urls);
for($i = 0; $i &lt; count($titles) ; ++$i) {
  printf('&lt;a href="%s"&gt;%s&lt;/a&gt;&lt;br /&gt;'."\n", $urls[$i] , $titles[$i] );
}
  require_once($_SERVER['DOCUMENT_ROOT'] . $inc_path . 'php/footer.php');

</xsl:text>
</xsl:template>
</xsl:stylesheet>
