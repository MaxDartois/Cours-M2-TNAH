<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="2.0">
    <xsl:output method="xml" indent="yes"/>
    
   <!-- Il faut toujours commencer par les éléments les plus hauts dans l'arborescence. --> 
    <xsl:template match="TEI">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <!-- Attrape et copie tout le teiJHeader, sans modifications. -->
    <xsl:template match="teiHeader">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <!-- Attrape tout le texte se trouvant dans body et le copie. -->
    <xsl:template match="text">
        <xsl:copy>
            <xsl:element name="body">
                <xsl:apply-templates select="//lg[@type='quatrain']"/>
                <xsl:apply-templates select="//lg[@type='sizain']"/>
            </xsl:element>
        </xsl:copy>
    </xsl:template>
    
    <!-- pour l'élément lg, création d'un nouvel élément lg avec un attribut n qui permet un décompte. -->
    <xsl:template match="lg">
        <xsl:element name="lg">
            <xsl:attribute name="n">
                <xsl:number count="lg" level="multiple" format="I.1.a"/>
            </xsl:attribute>
            <xsl:attribute name="type">
                <xsl:value-of select="@type"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
<!-- idem lg, création d'un attribut pour compter les lignes -->
    <xsl:template match="l">
        <xsl:element name="l">
            <xsl:attribute name="n">
                <xsl:number count="l" level="any"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>