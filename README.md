# Fundamentals for understanding
## Literature
**Clausner, C and Antonacopoulos**: Ontology and framework for semantic labelling of document data and software methods in: 13th IAPR International Workshop on Document Analysis Systems (DAS2018), 24-27 April 2018, Vienna, Austria. http://usir.salford.ac.uk/46896/

## GitHub
https://github.com/PRImA-Research-Lab/semantic-labelling

# What can you do?

## Transform 
the spezification of Ontology and framework for semantic labelling of document data and software methods to XSD Schema

```sh
java -jar ../saxon9he.jar -xsl:OCR-D_GT_labelschema_maker.xsl -s:DefaultLabelTypes_3.xml
```

The stylesheet `OCR-D_GT_labelschema_maker.xsl` transforms the semantic labelling XSML file files to XSD Schema.

## Use the XSD Schema in METS
see: http://www.loc.gov/standards/mets/
 The Namespaces: 
 ```xml
xmlns:gt="http://www.ocr-d.de/GT/" 
```
The XSD Schema Location

```xml
xsi:schemaLocation="http://www.ocr-d.de/GT/ OCR-D_GT_schema.xsd
```
METS Example
see: mets_example.xml



