<?xml version="1.0" encoding="UTF-8"?>
<sch:schema 
    xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    >
    <xsl:variable name="test2">
        (.[@lev1='age']) and (.[@lev2='historical']) and (.[@lev3='medieval'])
    </xsl:variable>
    <sch:pattern>
        <sch:title>erster_fall</sch:title>
        
        
        <!--<sch:rule context="label">
            <sch:assert test="
                
                (.[@lev1='age'] and (.[@lev2='historical'] or .[@lev2='contemporary'] or .[@lev2='ancient'])) or 
                 
                
                (.[@lev1='precision'] and (.[@lev2='ground-truth'] or  .[@lev2='measured'] or .[@lev2='estimated']))">Hier ein Test</sch:assert> 
              
            
            
        </sch:rule>-->
        <sch:rule context="label" role="warning">
         
            <sch:assert test="(.[@lev1='age']) and (.[@lev2='historical']) and (.[@lev3='medieval'])">stimmt</sch:assert>
            <!--<sch:assert test="(.[@lev1='age'] and (.[@lev2='historical']))">beim ersten</sch:assert>-->
        </sch:rule>
       
       <!-- <sch:rule context="label" >
            <sch:report test="(.[@lev1='age']) and (.[@lev2='historical'])">nicht stimmt</sch:report>
            <!-\-<sch:assert test="(.[@lev1='age'] and (.[@lev2='historical']))">beim ersten</sch:assert>-\->
        </sch:rule>-->
        
        
    </sch:pattern>
    
       
    
</sch:schema>