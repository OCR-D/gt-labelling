<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="text()"/>

    <xsl:template match="Ontology">
        <table>
            <tbody>
                <xsl:apply-templates select="LabelTypeHierarchies/LabelType"/>
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="LabelType">
        <xsl:variable name="value">
            <xsl:for-each select="ancestor-or-self::*">
                <xsl:value-of select="concat('/', @name)"/>
            </xsl:for-each>
        </xsl:variable>
        <tr>
            <td>
                <xsl:value-of select="substring-after($value, '///')"/>
            </td>
            <td>
                <pre>
                    <xsl:value-of select="Description"/>
                </pre>
            </td>
        </tr>
        <xsl:apply-templates select="node()"/>
    </xsl:template>

</xsl:stylesheet>
