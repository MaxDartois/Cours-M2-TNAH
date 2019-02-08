<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs"
    xmlns="http://www.tei-c.org/ns/1.0" version="2.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="TEI">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="teiHeader">
        <xsl:copy-of select="."/>
    </xsl:template>

    <xsl:template match="text">
        <xsl:copy>
            <xsl:element name="body">
                <xsl:element name="head">
                    <xsl:text>Texte de la vie de Sainte-Eulalie.</xsl:text>
                    <xsl:apply-templates select="//lg"/>
                </xsl:element>
            </xsl:element>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="lg">
  
        <xsl:variable name="variable">
            <xsl:element name="head">
                <xsl:value-of select="upper-case(preceding-sibling::head)"/>
            </xsl:element>
        </xsl:variable>
        <xsl:element name="lg">
            <xsl:attribute name="type"> orig </xsl:attribute>
            <xsl:copy-of select="$variable"></xsl:copy-of>
            <xsl:apply-templates mode="orig"/>
        </xsl:element>
        <xsl:element name="lg">
            <xsl:element name="head">
                <xsl:text>reg</xsl:text>
            </xsl:element>
            <xsl:apply-templates mode="reg"/>
        </xsl:element>
    </xsl:template>


    <xsl:template match="l" mode="orig">
        <xsl:element name="l">
            <xsl:attribute name="n">
                <xsl:number count="l" level="single"/>
            </xsl:attribute>
            <xsl:value-of select="text() | choice/orig/text() | choice/abbr/text()"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="l" mode="reg">
        <xsl:element name="l">
            <xsl:attribute name="n">
                <xsl:number count="l" level="single"/>
            </xsl:attribute>
            <xsl:value-of select="text() | choice/reg/text() | choice/expan//text() | pc/text()"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
