.class public Lmf/org/apache/xerces/parsers/StandardParserConfiguration;
.super Lmf/org/apache/xerces/parsers/DTDConfiguration;
.source "StandardParserConfiguration.java"


# static fields
.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field protected fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/features/validate-annotations"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://apache.org/xml/features/namespace-growth"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "http://apache.org/xml/features/validation/id-idref-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "http://apache.org/xml/features/validation/identity-constraint-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->checkFeature(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "http://apache.org/xml/features/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "validation/schema"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_5

    :cond_2
    const-string/jumbo v1, "validation/schema-full-checking"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_6

    :cond_3
    const-string/jumbo v1, "validation/schema/normalized-value"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_7

    :cond_4
    const-string/jumbo v1, "validation/schema/element-default"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "validation/schema/element-default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_5
    const-string/jumbo v1, "validation/schema"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_6
    const-string/jumbo v1, "validation/schema-full-checking"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_7
    const-string/jumbo v1, "validation/schema/normalized-value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->checkProperty(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "http://apache.org/xml/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "schema/external-schemaLocation"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_3
    const-string/jumbo v1, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_4
    const-string/jumbo v1, "schema/external-schemaLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "schemaSource"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "schemaSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void
.end method

.method protected configurePipeline()V
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->configurePipeline()V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validator/schema"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_1
.end method
