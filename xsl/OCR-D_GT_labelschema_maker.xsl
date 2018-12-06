<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="text()"/>

    <xsl:template match="Ontology">
        <xsd:schema 
            targetNamespace="http://www.ocr-d.de/GT/" 
            xmlns="http://www.ocr-d.de/GT/"
            xmlns:xlink="http://www.w3.org/1999/xlink" 
            xmlns:xsd="http://www.w3.org/2001/XMLSchema"
            elementFormDefault="qualified" 
            attributeFormDefault="unqualified">
            <xsd:import namespace="http://www.w3.org/1999/xlink"
                schemaLocation="http://www.loc.gov/standards/xlink/xlink.xsd"/>
            <xsl:apply-templates select="LabelTypeHierarchies"/>
        </xsd:schema>
    </xsl:template>


    <xsl:template match="LabelTypeHierarchies">
        <xsl:element name="xsd:element">
            <xsl:attribute name="name">state</xsl:attribute>
            <xsl:element name="xsd:complexType">
                <xsl:element name="xsd:sequence">
                    <xsl:element name="xsd:element">
                        <xsl:attribute name="name">fptr</xsl:attribute>
                        <xsl:attribute name="maxOccurs">unbounded</xsl:attribute>
                        <xsl:element name="xsd:complexType">
                            <xsl:element name="xsd:sequence">
                                <xsl:element name="xsd:element">
                                    <xsl:attribute name="name">area</xsl:attribute>
                                    <xsl:attribute name="minOccurs">0</xsl:attribute>
                                    <xsl:element name="xsd:complexType">
                                        <xsl:element name="xsd:attribute">
                                        <xsl:attribute name="name">COORDS</xsl:attribute>
                                        <xsl:attribute name="type">xsd:string</xsl:attribute>
                                        <xsl:attribute name="use">required</xsl:attribute>
                                        </xsl:element>
                                        <xsl:element name="xsd:attribute">
                                        <xsl:attribute name="name">SHAPE</xsl:attribute>
                                        <xsl:element name="xsd:simpleType">
                                            <xsl:element name="xsd:restriction">
                                                <xsl:attribute name="base">xsd:string</xsl:attribute>
                                                <xsl:element name="xsd:enumeration">
                                                    <xsl:attribute name="value">RECT</xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="xsd:enumeration">
                                                    <xsl:attribute name="value">CIRCLE</xsl:attribute>
                                                </xsl:element>
                                                <xsl:element name="xsd:enumeration">
                                                    <xsl:attribute name="value">POLY</xsl:attribute>
                                                </xsl:element>
                                            </xsl:element>
                                        </xsl:element>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:element>
                            <xsl:element name="xsd:attribute">
                                <xsl:attribute name="name">FILEID</xsl:attribute>
                                <xsl:attribute name="use">required</xsl:attribute>
                            </xsl:element>
                    </xsl:element>
                </xsl:element>
                </xsl:element>
                <xsl:element name="xsd:attribute">
                    <xsl:attribute name="name">prop</xsl:attribute>
                    <xsl:element name="xsd:simpleType">
                        <xsl:element name="xsd:restriction">
                            <xsl:attribute name="base">xsd:string</xsl:attribute>
                            <xsl:apply-templates select="LabelType"/>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>




    <xsl:template match="LabelType">
        <xsl:variable name="value">
            <xsl:for-each select="ancestor-or-self::*">
                <xsl:value-of select="concat('/', @name)"/>
            </xsl:for-each>
        </xsl:variable>
        <xsl:element name="xsd:enumeration">
            <xsl:attribute name="value">
                <xsl:value-of select="substring-after($value, '///')"/>
            </xsl:attribute>
            <xsl:choose>
                <xsl:when test="Description != ''">
                    <xsl:element name="xsd:annotation">
                        <xsl:element name="xsd:documentation">
                            <xsl:attribute name="xml:lang">en</xsl:attribute>
                            <xsl:value-of select="Description"/>
                        </xsl:element>
                    </xsl:element>
                </xsl:when>
            </xsl:choose>
        </xsl:element>
        <xsl:apply-templates select="node()"/>
    </xsl:template>


</xsl:stylesheet>
