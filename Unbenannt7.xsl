<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="groundtruth">
        <report>
            <xsl:apply-templates select="label"/>
        </report>
        
    </xsl:template>
    <xsl:template match="label">
        <xsl:choose>
            <xsl:when test="@lev1='production-method'">
                <xsl:choose>
                    <xsl:when test="@lev2!=''">
                        <xsl:choose>
                            <xsl:when test="@lev2='manual' or @lev2='machine'">@age lev2 korrekt
                            <xsl:choose>
                                <xsl:when test="@lev3!=''">
                                    <xsl:choose>
                                        <xsl:when test="@lev2='machine'">
                                            <xsl:choose>
                                                <xsl:when test="@lev3='printed' or @lev3='typewritten'">@age lev3 korrekt</xsl:when>
                                                <xsl:otherwise>@age lev3 Fehler</xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:when>
                            </xsl:choose>
                                <!--<xsl:choose>
                                    <xsl:when test="@lev3!=''">
                                        <xsl:choose>
                                            <xsl:when test="@lev2='machine'">
                                                <xsl:choose>
                                                    <xsl:when test="@lev3='typewritten'">@age lev3 korrekt</xsl:when>
                                                    <xsl:otherwise>@age lev3 Fehler</xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:when>
                                </xsl:choose>-->
                            </xsl:when>
                            <xsl:otherwise>@age lev2 Fehler</xsl:otherwise>
                        </xsl:choose>
                    </xsl:when><xsl:otherwise>@lev2 ist nicht vorhanden</xsl:otherwise>
                    
                    
                </xsl:choose>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>



