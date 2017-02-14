.class public Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;
.super Lmf/javax/xml/parsers/DocumentBuilder;
.source "DocumentBuilderImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/JAXPConstants;


# static fields
.field private static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field private static final CREATE_ENTITY_REF_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field private static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field private static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field private static final XMLSCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private final domParser:Lmf/org/apache/xerces/parsers/DOMParser;

.field private final fInitEntityResolver:Lorg/xml/sax/EntityResolver;

.field private final fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private final fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

.field private final fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

.field private final fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

.field private final grammar:Lmf/javax/xml/validation/Schema;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lmf/javax/xml/parsers/DocumentBuilder;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v3, "http://xml.org/sax/features/validation"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v4, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringElementContentWhitespace()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v4, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isExpandEntityReferences()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v4, "http://apache.org/xml/features/include-comments"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringComments()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v4, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v3, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isCoalescing()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_4
    if-nez p4, :cond_6

    :goto_5
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->getSchema()Lmf/javax/xml/validation/Schema;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    if-nez v0, :cond_7

    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    :goto_6
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->setFeatures(Ljava/util/Hashtable;)V

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v2, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    new-instance v2, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/DOMParser;->getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    instance-of v0, v0, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    if-nez v0, :cond_8

    new-instance v1, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    invoke-virtual {v0}, Lmf/javax/xml/validation/Schema;->newValidatorHandler()Lmf/javax/xml/validation/ValidatorHandler;

    move-result-object v0

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;-><init>(Lmf/javax/xml/validation/ValidatorHandler;)V

    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    :goto_7
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    goto :goto_6

    :cond_8
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    new-instance v0, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;-><init>(Lmf/org/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    new-instance v3, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    check-cast v0, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v3, v2, v0, v4}, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lmf/org/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    goto :goto_7
.end method

.method private resetSchemaValidator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-nez v2, :cond_2

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v2, v1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1, v6}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string/jumbo v2, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "jaxp-order-not-supported"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v4, v3, v5

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string/jumbo v4, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v2, v1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private setFeatures(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v3, v1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    return-object v0
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isValidating()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isXIncludeAware()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string/jumbo v1, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public newDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>()V

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lmf/org/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/DOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v1}, Lmf/org/apache/xerces/parsers/DOMParser;->dropDocumentReferences()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "jaxp-null-input-source"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->resetSchemaValidator()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    if-ne v0, v1, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_1
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method
