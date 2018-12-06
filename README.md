# gt_spec

> Labeling OCR ground truth data

## Use the XSD Schema in METS

### Namespace and schema location

Add the namespace `http://www.ocr-d.de/GT/`. We recommend `gt` as namespace prefix:

```xml
xmlns:gt="http://www.ocr-d.de/GT/"
```

Set XSD schema location `http://www.ocr-d.de/GT/OCR-D_GT_schema.xsd`:

```xml
xsi:schemaLocation="http://www.ocr-d.de/GT/OCR-D_GT_schema.xsd"
```

### METS Example

See [`mets_example.xml`](./mets_example.xml).

## Developer info

The ontology is defined in
[`DefaultLabelTypes_3.xml`](./DefaultLabelTypes_3.xml) taken from
https://github.com/PRImA-Research-Lab/semantic-labelling

The [XSD](./OCR-D_GT_schema.xsd) is generated by transforming that ontology with [an XSLT stylesheet](./OCR-D_GT_labelschema_maker.xsl).

```sh
java -jar ../saxon9he.jar -xsl:OCR-D_GT_labelschema_maker.xsl -s:DefaultLabelTypes_3.xml
```


## Acknowledgements

Ontology described in

> **Clausner, C and Antonacopoulos**: Ontology and framework for semantic labelling of document data and software methods in: 13th IAPR International Workshop on Document Analysis Systems (DAS2018), 24-27 April 2018, Vienna, Austria. http://usir.salford.ac.uk/46896/

Implemented as a set of Java tools in https://github.com/PRImA-Research-Lab/semantic-labelling
