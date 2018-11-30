<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="Ontology">
        <grammar xmlns="http://relaxng.org/ns/structure/1.0">
            <start>
                <element name="groundtruth">
                    <oneOrMore>
                        <ref name="lab"/>
                    </oneOrMore>
                </element>
            </start>
           <xsl:apply-templates select="LabelTypeHierarchies"/>
          </grammar>
    </xsl:template>
    
    <xsl:template match="LabelTypeHierarchies">
        <define name="lab">
            <element name="label">
            <optional>
                <attribute name="lev1">
                <choice>            
            <xsl:for-each select="LabelType/@name">
               <xsl:element name="value">
                 <xsl:value-of select="current()"/> 
               </xsl:element>
            </xsl:for-each>
                </choice>
            </attribute>
            
            <attribute name="lev2">
                <choice>            
                    <xsl:for-each select="LabelType/LabelType/@name">
                        <xsl:element name="value">
                            <xsl:value-of select="current()"/> 
                        </xsl:element>
                    </xsl:for-each>
                </choice>
            </attribute>
            
            <attribute name="lev3">
                <choice>            
                    <xsl:for-each select="LabelType/LabelType/LabelType/@name">
                        <xsl:element name="value">
                            <xsl:value-of select="current()"/> 
                        </xsl:element>
                    </xsl:for-each>
                </choice>
            </attribute>
          
            <attribute name="lev4">
                <choice>            
                    <xsl:for-each select="LabelType/LabelType/LabelType/LabelType/@name">
                        <xsl:element name="value">
                            <xsl:value-of select="current()"/> 
                        </xsl:element>
                    </xsl:for-each>
                </choice>
            </attribute>
            
            <attribute name="lev5">
                <choice>            
                    <xsl:for-each select="LabelType/LabelType/LabelType/LabelType/LabelType/@name">
                        <xsl:element name="value">
                            <xsl:value-of select="current()"/> 
                        </xsl:element>
                    </xsl:for-each>
                </choice>
            </attribute>
            
            <attribute name="lev6">
                <choice>            
                    <xsl:for-each select="LabelType/LabelType/LabelType/LabelType/LabelType/LabelType/@name">
                        <xsl:element name="value">
                            <xsl:value-of select="current()"/> 
                        </xsl:element>
                    </xsl:for-each>
                </choice>
            </attribute>
            
            <attribute name="lev7">
                <choice>            
                    <xsl:for-each select="LabelType/LabelType/LabelType/LabelType/LabelType/LabelType/LabelType/@name">
                        <xsl:element name="value">
                            <xsl:value-of select="current()"/> 
                        </xsl:element>
                    </xsl:for-each>
                </choice>
            </attribute>
            </optional>
        
        </element></define>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>