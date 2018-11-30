<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="pos" select="position()"/>
    

    <xsl:template match="LabelTypeHierarchies">
        <xsl:variable name="LabelType">
            <xsl:for-each select="LabelType"> @lev2='<xsl:value-of select="@name"/>' </xsl:for-each>
        </xsl:variable>



        <xsl:element name="stylesheet">
            <xsl:for-each select="LabelType">
                <xsl:variable name="LabelType">
                    <xsl:for-each select=".[$pos]/LabelType"> @lev2='<xsl:value-of select="@name"/>'
                        or </xsl:for-each>
                </xsl:variable>
                <xsl:element name="template">
                    <xsl:attribute name="match">label</xsl:attribute>
                    <xsl:attribute name="name"><xsl:value-of select="@name"/>'</xsl:attribute>
                    <xsl:element name="choose">
                        <xsl:element name="when">
                            <xsl:attribute name="test">@lev1='<xsl:value-of select="@name"/>'</xsl:attribute>
                            <xsl:call-template name="level2"/>
                            
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>
            
        </xsl:element>
    </xsl:template>




    <xsl:template match="LabelType" name="level2">
        <xsl:variable name="level2" select="count(.[position() = $pos]/LabelType)"/>
        
        <xsl:element name="choose">
            <xsl:element name="when">
                <xsl:attribute name="test">@lev2!=''</xsl:attribute>
                <xsl:element name="choose">
                    <xsl:element name="when">
                        <xsl:attribute name="test">
                            <xsl:for-each select="LabelType">
                                <xsl:attribute name="test">@lev2='<xsl:value-of select="@name"/>'<xsl:if test="not(position() = last())"><xsl:text>or </xsl:text></xsl:if></xsl:attribute>
                            </xsl:for-each>
                        </xsl:attribute>
                        <xsl:choose><xsl:when test="LabelType/LabelType !=''">
                            <xsl:call-template name="level3"></xsl:call-template>
                            <!--<xsl:value-of select="if (LabelType/LabelType/@name !='') then (LabelType/@name) else ()"/>-->
                            <!--<xsl:value-of select="LabelType/LabelType/@name"/>Hallo Level3--></xsl:when></xsl:choose>
                        <!--@age lev2 korrekt-->
                        <otherwise><!--@age lev2 Fehler--></otherwise>
                    </xsl:element>
                </xsl:element>
                <otherwise><!--@lev2 ist nicht vorhanden--></otherwise>
            </xsl:element>
        </xsl:element>
    </xsl:template>




    <xsl:template match="LabelType" name="level3">
        <xsl:variable name="posi">
            <xsl:if test="LabelType/LabelType/@name !=''">
            <xsl:for-each select="LabelType">
               
                    <xsl:value-of select="ancestor::LabelType/LabelType/position()"/>
                
            </xsl:for-each></xsl:if>
        </xsl:variable>
        
        <xsl:variable name="za">
            <xsl:value-of select="count(LabelType/LabelType[1]/@name)"/>
        </xsl:variable>
        
        <xsl:variable name="Eltern">
            <xsl:choose>
                <xsl:when test="$za > 1">
                    <xsl:if test="LabelType/LabelType/@name !=''">
                        <xsl:for-each select="LabelType/LabelType">
                            <xsl:if test="position()=1">
                                1.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=2">
                                2.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=3">
                                3.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=4">
                                4.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=5">
                                5.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=6">
                                6.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=7">
                                7.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=8">
                                8.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=9">
                                9.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=10">
                                10.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                            <xsl:if test="position()=11">
                                11.#<xsl:value-of select="parent::LabelType[1]/@name"/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        
        
        
        <!--<xsl:message select="$posi"></xsl:message>-->
        <xsl:variable name="test">
            
            <xsl:if test="LabelType[1]/@name !=''"><xsl:value-of select="$Eltern"/>==<xsl:value-of select="LabelType/LabelType[1]/@name"/>=<xsl:value-of select="count(LabelType/LabelType[1]/@name)"/>=true</xsl:if>
            
        </xsl:variable>
        <xsl:message select="$test"></xsl:message>
        <!--<xsl:variable name="posi" select="LabelType/position()"/>
        <xsl:variable name="zahl" select="count(LabelType)"/>
        
        <xsl:variable name="Matthias">
            <xsl:if test="LabelType/LabelType/@name !=''">
            <xsl:for-each select="LabelType/LabelType">
                <xsl:if test="position()=1">
            1. <xsl:value-of select="ancestor::LabelType[1]/@name"/>
                </xsl:if>
                <xsl:if test="position()=2">
            2.        <xsl:value-of select="ancestor::LabelType[1]/@name"/>
                </xsl:if>
                <xsl:if test="position()=3">
              3.      <xsl:value-of select="ancestor::LabelType[1]/@name"/>
                </xsl:if>
            </xsl:for-each>
            </xsl:if>
        </xsl:variable>
        <xsl:variable name="namen"><xsl:value-of select="if (LabelType/LabelType/@name!='') then (if(LabelType/@name!='') then (LabelType/@name!='') else ()) else ()"/></xsl:variable>
        
        <xsl:message select="$Matthias"> noch ein Name</xsl:message>
        <xsl:message select="$zahl"> Anzahl</xsl:message>
        <xsl:message select="$posi"> Position</xsl:message>
        
        
        
        <xsl:variable name="anzahl">
            
            <xsl:value-of select="count(LabelType/LabelType)"/></xsl:variable>
        <xsl:message select="$anzahl"></xsl:message>
   -->     
        
        
        
        
        <xsl:for-each select="LabelType/LabelType">
            
            <xsl:variable name="test"><xsl:number level="single" count="LabelType" format="1"/><!--<xsl:value-of select="ancestor::LabelType[1]/@name"/>--></xsl:variable>
            <xsl:variable name="summe"><xsl:value-of select="sum($test)"/></xsl:variable>
            
            
            <xsl:element name="when">
                <xsl:attribute name="test">@lev3!=''</xsl:attribute> 
                  <xsl:element name="choose">
                      <xsl:element name="when">
                          
                          <xsl:attribute name="test">@lev2=<xsl:value-of select="ancestor::LabelType[1]/@name"/>'</xsl:attribute> 
                          <!--<xsl:value-of select="if ($anzahl > 1) then (ancestor::LabelType[1]/@name, ')') else ()"/>-->
                          <xsl:element name="choose">
                              <when test="@lev3='medieval'">@age lev3 korrekt</when>
                              <otherwise>@age lev3 Fehler</otherwise>
                          </xsl:element>
                    
                
                </xsl:element>
            </xsl:element>
        
            </xsl:element>
        </xsl:for-each>
        
        
        
        
    </xsl:template>
    

</xsl:stylesheet>
