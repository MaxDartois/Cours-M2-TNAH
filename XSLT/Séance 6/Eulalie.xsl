<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="2.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <!-- pour éviter les espaces non-voulus -->

    <xsl:template match="TEI">
        <html>
            <head>
                <title>
                    <xsl:value-of select="//titleStmt/title"/>
                    <!-- permet de ne récupérer que le texte -->
                </title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="//body/head"/>
                </h1>
                <span>
                    <a href="{//pb/@facs}">Lien vers le manuscrit.</a>
                </span>
                <div>
                    <head>Index des noms propres</head>
                </div>
                <div>
                    <h2>Transcription facsimilaire</h2>
                    <div>
                        <ul>
                            <xsl:apply-templates select="//text//div" mode="orig"/>
                        </ul>
                    </div>
                </div>
                <div>
                    <h2>Transcription normalisée</h2>
                    <div>
                        <ul>
                            <xsl:apply-templates select="//text//div" mode="reg"/>
                        </ul>
                    </div>
                </div>

                <div>
                    <head>Index des noms propres.</head>
                    <ul>
                        <xsl:call-template name="index"/>
                    </ul>
                </div>
            </body>
        </html>
    </xsl:template>


    <xsl:template match="l" mode="orig">
        <xsl:element name="li">
            <xsl:attribute name="n">
                <xsl:number count="l" level="single"/>
            </xsl:attribute>
            <xsl:value-of
                select="
                    text() |
                    .//orig/text() |
                    .//abbr/text() |
                    persName/text() |
                    persName//orig/text() |
                    persName//abbr/text()"
            />
        </xsl:element>
    </xsl:template>

    <xsl:template match="l" mode="reg">
        <xsl:element name="li">
            <xsl:attribute name="n">
                <xsl:number count="l" level="single"/>
            </xsl:attribute>
            <xsl:value-of
                select="
                    text() |
                    .//reg/text() |
                    .//abbr/text() |
                    persName/text() |
                    persName//reg/text() |
                    persName//abbr/text()"
            />
        </xsl:element>
    </xsl:template>

    <xsl:template name="index">
        <xsl:for-each select="//listPerson/person/persName"> 
            <li>
            <xsl:value-of select="."/>
            <xsl:if test="persName/@ref">
                <xsl:value-of select="@ref"/>
            </xsl:if>
            </li>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
