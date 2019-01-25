<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs tei"
    version="2.0">

    <!--  <xsl:template match="l">
        <xsl:element name="p"> text </xsl:element>
    </xsl:template> -->

    <!-- <xsl:template match="l">
        <xsl:element name="p">text</xsl:element>
    </xsl:template> -->

    <!-- <xsl:template match="l">
        <p type="paragraphe">text</p>
        <xsl:apply-templates/>
    </xsl:template> -->

    <!-- <xsl:template match="l">
        <p type="{parent::lg/@type}">text</p>
    </xsl:template> -->

    <!-- <xsl:template match="l">
        <xsl:element name="truc">
            <xsl:attribute name="type">
                <xsl:value-of select="parent::lg/@type"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template> -->

    <!-- <xsl:template match="l">
        <xsl:element name="p">
            <xsl:attribute name="n">
                <xsl:value-of select="parent::lg/@n"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template> -->

    <!-- <xsl:template match="body/lg">
        <xsl:element name="div">
            <xsl:attribute name="type">
                <xsl:value-of select="@type"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template> -->

    <!-- <xsl:template match="lg/lg">
       <xsl:element name="div">
           <xsl:attribute name="type">
               <xsl:value-of select="@type"/>
           </xsl:attribute>
           <xsl:apply-templates/>
       </xsl:element>
    </xsl:template> -->

    <!-- <xsl:template match="lg">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template> -->

    <!-- <xsl:template match="lg">
        <xsl:copy-of select="."/>
    </xsl:template> -->

    <!-- <xsl:template match="l">
        <xsl:value-of select="."/>
    </xsl:template> -->

   <!-- <xsl:template match="l">
        <xsl:element name="l">
            <xsl:attribute name="n">
                <xsl:number count="l" level="single" format="I"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template> -->
    
   <!-- <xsl:template match="lg">
        <xsl:element name="lg">
            <xsl:attribute name="n">
                <xsl:number count="lg" level="multiple" format="a.A.a"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template> -->
    
    

</xsl:stylesheet>
