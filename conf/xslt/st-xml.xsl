<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:template match="/">
<xsl:processing-instruction name="mso-application">progid="Excel.Sheet"</xsl:processing-instruction>
<Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
 xmlns:o="urn:schemas-microsoft-com:office:office"
 xmlns:x="urn:schemas-microsoft-com:office:excel"
 xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
 xmlns:html="http://www.w3.org/TR/REC-html40">
 <DocumentProperties xmlns="urn:schemas-microsoft-com:office:office">
  <Author>bertrama</Author>
  <LastAuthor>bertrama</LastAuthor>
  <Created>2010-01-06T20:08:57Z</Created>
  <Company>University of Michigan</Company>
  <Version>12.00</Version>
 </DocumentProperties>
 <ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
  <WindowHeight>7965</WindowHeight>
  <WindowWidth>15315</WindowWidth>
  <WindowTopX>0</WindowTopX>
  <WindowTopY>150</WindowTopY>
  <ProtectStructure>False</ProtectStructure>
  <ProtectWindows>False</ProtectWindows>
 </ExcelWorkbook>
 <Styles>
  <Style ss:ID="Default" ss:Name="Normal">
   <Alignment ss:Vertical="Bottom"/>
   <Borders/>
   <Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#000000"/>
   <Interior/>
   <NumberFormat/>
   <Protection/>
  </Style>
 </Styles>
 <Worksheet ss:Name="Sheet1">
  <Table ss:ExpandedColumnCount="6" x:FullColumns="1"
   x:FullRows="1" ss:DefaultRowHeight="15">
   <xsl:attribute name="ss:ExpandedRowCount"><xsl:value-of select="count(//doc)+1"/></xsl:attribute>
   <Column ss:Index="6" ss:AutoFitWidth="0" ss:Width="87"/>
   <Row>
    <Cell><Data ss:Type="String">ID</Data></Cell>
    <Cell><Data ss:Type="String">Title</Data></Cell>
    <Cell><Data ss:Type="String">Cross-Searchable</Data></Cell>
    <Cell><Data ss:Type="String">Publisher</Data></Cell>
    <Cell><Data ss:Type="String">Native-URL</Data></Cell>
    <Cell><Data ss:Type="String">Permalink</Data></Cell>
   </Row>
 <xsl:for-each select="//doc">
   <Row>
    <Cell><Data ss:Type="String">
 <xsl:value-of select="substring(str[@name='id'],62,8)"/>
 </Data></Cell>
    <Cell><Data ss:Type="String">
 <xsl:value-of select="str[@name='title']"/>
 </Data></Cell>
    <Cell><Data ss:Type="String">
 <xsl:value-of select="bool[@name='status']"/>
 </Data></Cell>
    <Cell><Data ss:Type="String">
 <xsl:value-of select="str[@name='publisher']"/>
 </Data></Cell>
    <Cell><Data ss:Type="String">
 <xsl:value-of select="arr[@name='access_url']/str"/>
 </Data></Cell>
    <Cell><Data ss:Type="String">
 <xsl:value-of select="substring(str[@name='id'],1,69)"/>
 </Data></Cell>
   </Row>
 </xsl:for-each>
 </Table>
  <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
   <PageSetup>
    <Header x:Margin="0.3"/>
    <Footer x:Margin="0.3"/>
    <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
   </PageSetup>
   <Selected/>
   <Panes>
    <Pane>
     <Number>3</Number>
     <ActiveRow>6</ActiveRow>
     <ActiveCol>1</ActiveCol>
    </Pane>
   </Panes>
   <ProtectObjects>False</ProtectObjects>
   <ProtectScenarios>False</ProtectScenarios>
  </WorksheetOptions>
 </Worksheet>
</Workbook>
</xsl:template>
</xsl:stylesheet>
