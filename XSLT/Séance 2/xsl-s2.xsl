<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
    
    <xsl:template match="l">
        <xsl:number count="element_a_compter" level="multiple" format="1"/>
    </xsl:template>
    
    <xsl:template match="lg">
        <xsl:number count="element_a_compter" level="multiple" format="1"/>
    </xsl:template>
    
</xsl:stylesheet>