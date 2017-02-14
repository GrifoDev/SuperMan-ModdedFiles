.class public Lmf/org/apache/xerces/dom/DOMConfigurationImpl;
.super Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DTD_VALIDATOR_FACTORY_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DTD_VALIDATOR_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final DTNORMALIZATION:S = 0x2s

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITIES:S = 0x4s

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final INFOSET_FALSE_PARAMS:S = 0xes

.field protected static final INFOSET_MASK:S = 0x32fs

.field protected static final INFOSET_TRUE_PARAMS:S = 0x321s

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NSDECL:S = 0x200s

.field protected static final PSVI:S = 0x80s

.field protected static final SCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final SEND_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE:S = 0x40s

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WELLFORMED:S = 0x100s

.field protected static final XERCES_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final XERCES_VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field protected fComponents:Ljava/util/ArrayList;

.field protected fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected final fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected features:S


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iput-short v4, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    new-instance v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedFeatures:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedProperties:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fFeatures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "http://xml.org/sax/features/validation"

    aput-object v2, v0, v4

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    aput-object v2, v0, v5

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    aput-object v2, v0, v6

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string/jumbo v3, "http://apache.org/xml/features/validation/dynamic"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "http://apache.org/xml/features/validate-annotations"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "http://apache.org/xml/features/validation/balance-syntax-trees"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "http://apache.org/xml/features/namespace-growth"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/dynamic"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/balance-syntax-trees"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "http://xml.org/sax/properties/xml-string"

    aput-object v2, v0, v4

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v2, v0, v5

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v2, v0, v6

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedProperties([Ljava/lang/String;)V

    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {p0, v2, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    return-void

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string/jumbo v0, "mf.org.apache.xerces.impl.xs.XSMessageFormatter"

    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/MessageFormatter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private static newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_FOUND"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "TYPE_MISMATCH_ERR"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedProperties([Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    const-string/jumbo v2, "error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "resource-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "schema-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "schema-type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    :cond_0
    return v0

    :cond_1
    const-string/jumbo v2, "comments"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v0

    :cond_3
    const-string/jumbo v2, "datatype-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "entities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "split-cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "namespaces"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "well-formed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "infoset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "namespace-declarations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "normalize-characters"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_0
    return v0

    :cond_5
    const-string/jumbo v2, "canonical-form"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "validate-if-schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "check-character-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "element-content-whitespace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_1
    return v1

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_9
    move v1, v0

    goto :goto_1

    :cond_a
    instance-of v2, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_b

    :goto_2
    return v1

    :cond_b
    move v1, v0

    goto :goto_2

    :cond_c
    instance-of v2, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v2, :cond_d

    :goto_3
    return v1

    :cond_d
    move v1, v0

    goto :goto_3

    :cond_e
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_f

    :goto_4
    return v1

    :cond_f
    move v1, v0

    goto :goto_4

    :cond_10
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_12

    :goto_5
    move v0, v1

    :cond_11
    return v0

    :cond_12
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5

    :cond_13
    instance-of v2, p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v2, :cond_14

    :goto_6
    return v1

    :cond_14
    move v1, v0

    goto :goto_6

    :cond_15
    instance-of v2, p2, Lmf/org/apache/xerces/util/SymbolTable;

    if-nez v2, :cond_16

    :goto_7
    return v1

    :cond_16
    move v1, v0

    goto :goto_7

    :cond_17
    instance-of v2, p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v2, :cond_18

    :goto_8
    return v1

    :cond_18
    move v1, v0

    goto :goto_8

    :cond_19
    instance-of v2, p2, Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v2, :cond_1a

    :goto_9
    return v1

    :cond_1a
    move v1, v0

    goto :goto_9
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "http://xml.org/sax/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "xml-string"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "xml-string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method protected createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    return-object v0
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_7
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v0

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_9
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_b
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v0

    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_d
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_f
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object v0

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_11
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_12

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    return-object v0

    :cond_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_13
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x32f

    const/16 v1, 0x321

    if-eq v0, v1, :cond_14

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object v0

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_15
    const-string/jumbo v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "psvi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v0

    throw v0

    :cond_16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_17
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_18

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    return-object v0

    :cond_18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    if-nez v0, :cond_1d

    :cond_1c
    return-object v2

    :cond_1d
    instance-of v1, v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v1, :cond_1c

    check-cast v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v0

    return-object v0

    :cond_1e
    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1f
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    return-object v0

    :cond_20
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    return-object v0

    :cond_21
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_22
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_23
    const-string/jumbo v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "schema-type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "schema-location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    goto/16 :goto_0
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    return-void
.end method

.method protected final setDTDValidatorFactory(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_20

    :cond_0
    const-string/jumbo v1, "error-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "resource-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "schema-location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string/jumbo v1, "schema-type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v1, "comments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "datatype-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "namespaces"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "cdata-sections"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "entities"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "split-cdata-sections"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "validate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "well-formed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "namespace-declarations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v1, "infoset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "normalize-characters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_2
    if-nez v4, :cond_19

    move v1, v2

    goto/16 :goto_0

    :cond_3
    if-nez v4, :cond_4

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x21

    :goto_1
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x20

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    if-nez v4, :cond_6

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x3

    :goto_2
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    if-nez v4, :cond_7

    move v1, v2

    goto/16 :goto_0

    :cond_6
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_7
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_8
    if-nez v4, :cond_9

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x2

    :goto_3
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_9
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    if-nez v4, :cond_b

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x9

    :goto_4
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_b
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x8

    goto :goto_4

    :cond_c
    if-nez v4, :cond_d

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x5

    :goto_5
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_d
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x4

    goto :goto_5

    :cond_e
    if-nez v4, :cond_f

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x11

    :goto_6
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_f
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x10

    goto :goto_6

    :cond_10
    if-nez v4, :cond_11

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x41

    :goto_7
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_11
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x40

    goto :goto_7

    :cond_12
    if-nez v4, :cond_13

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v1, v1, -0x101

    :goto_8
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_13
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v1, v1, 0x100

    goto :goto_8

    :cond_14
    if-nez v4, :cond_15

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v1, v1, -0x201

    :goto_9
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_15
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v1, v1, 0x200

    goto :goto_9

    :cond_16
    if-nez v4, :cond_17

    move v1, v2

    goto/16 :goto_0

    :cond_17
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v1, v1, 0x321

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0xf

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move v1, v2

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v1, "canonical-form"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "validate-if-schema"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "check-character-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "element-content-whitespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string/jumbo v1, "psvi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    move v1, v3

    goto/16 :goto_0

    :cond_19
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_1a
    if-eqz v4, :cond_1b

    move v1, v2

    goto/16 :goto_0

    :cond_1b
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_1c
    if-eqz v4, :cond_1d

    move v1, v2

    goto/16 :goto_0

    :cond_1d
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_1e
    if-nez v4, :cond_1f

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v1, v1, -0x81

    :goto_a
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    goto/16 :goto_0

    :cond_1f
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v1, v1, 0x80

    goto :goto_a

    :cond_20
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    :cond_21
    :goto_b
    return-void

    :cond_22
    instance-of v1, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_24

    :cond_23
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->setErrorHandler(Lmf/org/w3c/dom/DOMErrorHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    goto :goto_b

    :cond_24
    if-eqz p2, :cond_23

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_25
    instance-of v1, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v1, :cond_27

    :cond_26
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    invoke-direct {v1, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v1

    goto :goto_b

    :cond_27
    if-eqz p2, :cond_26

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_28
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2a

    :cond_29
    if-eqz p2, :cond_2b

    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    const-string/jumbo v3, " \n\t\r"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_b

    :cond_2a
    if-eqz p2, :cond_29

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_2b
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2d
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_b

    :cond_2e
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_30

    :cond_2f
    if-eqz p2, :cond_31

    :try_start_3
    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v1

    goto/16 :goto_b

    :cond_30
    if-eqz p2, :cond_2f

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_31
    :try_start_4
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_32
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_b

    :cond_33
    instance-of v1, p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v1, :cond_35

    :cond_34
    :try_start_5
    check-cast p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_b

    :catch_3
    move-exception v1

    goto/16 :goto_b

    :cond_35
    if-eqz p2, :cond_34

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_36
    instance-of v1, p2, Lmf/org/apache/xerces/util/SymbolTable;

    if-nez v1, :cond_37

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_37
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_38
    instance-of v1, p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_3a

    :cond_39
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_3a
    if-eqz p2, :cond_39

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_3b
    instance-of v1, p2, Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz v1, :cond_3d

    :cond_3c
    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_3d
    if-eqz p2, :cond_3c

    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
