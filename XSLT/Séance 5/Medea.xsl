<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs"
    xmlns="http://www.tei-c.org/ns/1.0" version="2.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="TEI">
        <xsl:element name="TEI">
            <xsl:copy-of select="teiHeader"/>
            <xsl:apply-templates select="text"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="body">
        <xsl:element name="body">
            <xsl:attribute name="n">play</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="div">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="pb | milestone"/>

    <xsl:template match="sp | @*">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="speaker">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="l">
        <xsl:element name="l">
            <xsl:attribute name="n">
                <xsl:number count="l" level="multiple" format="1"/>
            </xsl:attribute>
        </xsl:element>
        <xsl:apply-templates/>
    </xsl:template>


    <xsl:template match="body/div/div">
        <xsl:element name="div">
            <xsl:attribute name="type">act</xsl:attribute>
            <xsl:attribute name="n">
                <xsl:number count="body/div/div" level="any" format="I"/>
            </xsl:attribute>
        </xsl:element>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="name[@type = 'person']">
        <xsl:element name="persName">
            <xsl:if test="@ref">
                <xsl:attribute name="ref">
                    <xsl:value-of select="@ref"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="speaker">
        <xsl:variable name="ref">
            <xsl:value-of select="parent::sp/replace(@who, '#', '')"/>
        </xsl:variable>
        <xsl:copy>
            <xsl:value-of select="ancestor::TEI//listPerson/person[@xml:id=$ref]/persName/text()"/>
        </xsl:copy>
    </xsl:template>


</xsl:stylesheet>
