<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:template match="/">
  <add xmlns="http://w3.org/1999/xhtml">
  <xsl:for-each select="//doc">
    <doc>
      <xsl:for-each select="arr/str">
        <field>
          <xsl:attribute name="name"><xsl:value-of select="../@name"/></xsl:attribute>
          <xsl:value-of select="."/>
        </field>
      </xsl:for-each>
      <xsl:for-each select="arr/int">
        <field>
          <xsl:attribute name="name"><xsl:value-of select="../@name"/></xsl:attribute>
          <xsl:value-of select="."/>
        </field>
      </xsl:for-each>
      <xsl:for-each select="arr/bool">
        <field>
          <xsl:attribute name="name"><xsl:value-of select="../@name"/></xsl:attribute>
          <xsl:value-of select="."/>
        </field>
      </xsl:for-each>
      <xsl:for-each select="arr/date">
        <field>
          <xsl:attribute name="name"><xsl:value-of select="../@name"/></xsl:attribute>
          <xsl:value-of select="."/>
        </field>
      </xsl:for-each>
      <xsl:for-each select="int">
        <field>
          <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
          <xsl:value-of select="."/>
        </field>
      </xsl:for-each>
      <xsl:choose>
        <xsl:when test="string-length(int[@name='nid']) > 0 or string-length(str[@name='url']) > 0">
          <xsl:for-each select="str">
            <xsl:if test="@name != 'id'">
              <field>
                <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
                <xsl:value-of select="."/>
              </field>
            </xsl:if>
          </xsl:for-each>
        </xsl:when>
        <xsl:otherwise>
          <xsl:for-each select="str">
            <field>
              <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
              <xsl:value-of select="."/>
            </field>
          </xsl:for-each>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:for-each select="date">
        <field>
          <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
          <xsl:value-of select="."/>
        </field>
      </xsl:for-each>
      <xsl:for-each select="bool">
        <field>
          <xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
          <xsl:value-of select="."/>
        </field>
      </xsl:for-each>
    </doc> 
  </xsl:for-each>
  </add>
</xsl:template>
</xsl:stylesheet>
