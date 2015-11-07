<!--XSL style sheet to convert EESCHEMA XML Partlist Format to CSV BOM Format
    Copyright (C) 2013, Stefan Helmert.
    GPL v2.

	Functionality:
		Generation of csv table with table head of all existing field names 
		and correct assigned cell entries
	
    How to use:
        EESCHEMA Netlist Plugin:
		xsltproc -o "%O" "C:\Program Files (x86)\KiCad\bin\plugins\bom2csv.xsl" "%I"
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"; version="1.0">
	<xsl:output method="text"/>

	<!-- for table head and empty table fields-->
	<xsl:key name="headentr" match="field" use="@name"/>
	
	<!-- main part -->
	<xsl:template match="/export">
		<xsl:text>Reference, Value, Footprint, Datasheet</xsl:text>
			<!-- find all existing table head entries and list one one time -->
			<xsl:for-each select="components/comp/fields/field[generate-id(.) = generate-id(key('headentr',@name)[1])]">
				<xsl:text>, </xsl:text>
				<xsl:value-of select="@name"/>
			</xsl:for-each>
			<xsl:text>; &#xA;</xsl:text>
		<!-- all table entries -->
		<xsl:apply-templates select="components/comp"/>
	</xsl:template>

	<!-- the table entries -->
	<xsl:template match="components/comp">
		<xsl:value-of select="@ref"/><xsl:text>, </xsl:text>
		<xsl:value-of select="value"/><xsl:text>, </xsl:text>
		<xsl:value-of select="footprint"/><xsl:text>, </xsl:text>
		<xsl:value-of select="datasheet"/>
		<xsl:apply-templates select="fields"/>
		<xsl:text>; &#xA;</xsl:text>
	</xsl:template> 

	<!-- table entries with dynamic table head -->
	<xsl:template match="fields">
		<!-- remember current fields section -->
		<xsl:variable name="fieldvar" select="field"/>
		<!-- for all existing head entries -->
		<xsl:for-each select="/export/components/comp/fields/field[generate-id(.) = generate-id(key('headentr',@name)[1])]">
			<xsl:variable name="allnames" select="@name"/>
			<xsl:text>, </xsl:text>
			<!-- for all field entries in the remembered fields section -->
			<xsl:for-each select="$fieldvar">
				<!-- only if this field entry exists in this fields section -->
				<xsl:if test="@name=$allnames">
					<!-- content of the field -->
					<xsl:value-of select="."/>
				</xsl:if>
				<!-- If it does not exist, empty cell in output. This is why the code is so complex. That means, every entry is assigned to his column. -->
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>

 </xsl:stylesheet>