<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs" 
    version="2.0">
    
    <!--  Cette règle ne fait rien sur le document, elle affiche donc juste le texte du document XML
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    -->
    <!-- Cela va sélectionner le texte dans le document XML mais on ne lui demande pas d'appliquer quoi que ce soit donc il n'affiche rien en sortie.
    <xsl:template match="text()"/>
     -->
    <!-- Sélectionne l'intégralité du document XMl, même les balises et copie vers le document de sortie, le schéma du document fait apparaître en sortie tous les attributs avec des valeurs par défaut possibles pour chaque balise.
    <xsl:template match="/">
        <xsl:copy-of select="."></xsl:copy-of>
    </xsl:template>
     -->
    <!--
    <xsl:template match="tei:lg">
        <xsl:copy-of select="."/>
    </xsl:template>
    -->
    <!-- 
    <xsl:template match="tei:lg[@type='quatrain']">
        <xsl:copy-of select="."/>
    </xsl:template>
     -->
    <!--
    <xsl:template match="tei:l[3]">
        <xsl:copy-of select="."/>
    </xsl:template>
      -->
    <!-- 
    <xsl:template match="tei:lg[@type='tercet'][2]/tei:l[position()=3]">
        <xsl:copy-of select="."/>
    </xsl:template>
     -->
    <!-- 
    <xsl:template
        match="tei:lg[@type='quatrain'][1]|tei:lg[@type='sizain'][1]">
        <xsl:copy select="."/>
    </xsl:template>
     -->
    
 <!-- 
    <xsl:template match="lg[position() &lt; 2]">
        <xsl:copy-of select="."/>
    </xsl:template> 
 -->
    <!-- 
    <xsl:template match="lg[position() &gt; 2]">
        <xsl:copy-of select="."/>
    </xsl:template>
     -->
    <xsl:template match="(div/lg/l)[position()=3]">
        <xsl:copy-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>
