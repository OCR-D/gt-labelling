# Version of the OCR-D-GT schema. Current: $(VERSION)
VERSION = 18.01

SAXON_HE_VERSION_MAJOR = 9
SAXON_HE_VERSION_MINOR = 8
SAXON_HE_VERSION_PATCH = 0-1J
SAXON_HE_ZIP = SaxonHE$(SAXON_HE_VERSION_MAJOR)-$(SAXON_HE_VERSION_MINOR)-$(SAXON_HE_VERSION_PATCH).zip
SAXON_HE_URL = https://sourceforge.net/projects/saxon/files/Saxon-HE/$(SAXON_HE_VERSION_MAJOR).$(SAXON_HE_VERSION_MINOR)/$(SAXON_HE_ZIP)/download
SAXON_HE_JAR = saxon9he.jar
SAXON = java -jar $(SAXON_HE_JAR)

ONTO_XML = DefaultLabelTypes_3.xml
ONTO_URL = https://raw.githubusercontent.com/PRImA-Research-Lab/semantic-labelling/master/ontology/$(ONTO_XML)

OCR-D-GTM-XSD = ocr-d-gtm-$(VERSION).xsd

# XSL to transform $(ONTO_XML) to $(OCR-D-GTM-XSD)
XSL_ONTO_TO_XSD = xsl/OCR-D-GTM-labelschema.xsl


# BEGIN-EVAL makefile-parser --make-help Makefile

help:
	@echo ""
	@echo "  Targets"
	@echo ""
	@echo "    saxon  Download Saxon"
	@echo "    onto   Fetch the ontology from upstream"
	@echo "    xsd    Build the XSD"
	@echo "    clean  Remove all generated files"
	@echo ""
	@echo "  Variables"
	@echo ""
	@echo "    VERSION          Version of the OCR-D-GT schema"
	@echo "    XSL_ONTO_TO_XSD  XSL to transform $(ONTO_XML) to $(OCR-D-GTM-XSD)"

# END-EVAL

# Download Saxon
saxon: $(SAXON_HE_JAR)

$(SAXON_HE_JAR):
	wget -O "$(SAXON_HE_ZIP)" "$(SAXON_HE_URL)"
	unzip "$(SAXON_HE_ZIP)" "$(SAXON_HE_JAR)"
	rm -rf "$(SAXON_HE_ZIP)"

# Fetch the ontology from upstream
onto: $(ONTO_XML)

$(ONTO_XML):
	curl -O '$(ONTO_XML)' '$(ONTO_URL)'

# Build the XSD
xsd: $(OCR-D-GTM-XSD)

$(OCR-D-GTM-XSD): saxon onto
	$(SAXON) -xsl:$(XSL_ONTO_TO_XSD) -s:$(ONTO_XML) -o:$(OCR-D-GTM-XSD)

# Remove all generated files
clean:
	rm -r $(OCR-D-GTM-XSD)
