.class final Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;
.super Ljava/lang/Object;
.source "StreamValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/ValidatorHelper;


# static fields
.field private static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfiguration:Ljava/lang/ref/SoftReference;

.field private fParser:Ljava/lang/ref/SoftReference;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    return-void
.end method

.method private initialize()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-direct {v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>()V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-resolver"

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-handler"

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "http://apache.org/xml/properties/security-manager"

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    return-object v1

    :cond_0
    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_0
.end method


# virtual methods
.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    instance-of v0, p2, Lmf/javax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p1, Lmf/javax/xml/transform/stream/StreamSource;

    check-cast p2, Lmf/javax/xml/transform/stream/StreamResult;

    new-instance v4, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3, v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v3, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    if-nez p2, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    :goto_1
    :try_start_0
    invoke-interface {v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "SourceResultMismatch"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->initialize()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-handler"

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "http://apache.org/xml/properties/security-manager"

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {p2}, Lmf/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lmf/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lmf/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "StreamResultNotInitialized"

    invoke-static {v1, v2, v6}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string/jumbo v0, "xml"

    invoke-static {v0}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSerializerFactory(Ljava/lang/String;)Lmf/org/apache/xml/serialize/SerializerFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {p2}, Lmf/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v3

    new-instance v5, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v5}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v0, v3, v5}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    move-object v3, v0

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/parsers/SAXParser;

    if-eqz v2, :cond_a

    :cond_7
    new-instance v0, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-interface {v3}, Lmf/org/apache/xml/serialize/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/parsers/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {p2}, Lmf/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    new-instance v5, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v5}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v0, v3, v5}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Lmf/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    new-instance v5, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v5}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v3, v0, v5}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    :cond_a
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/SAXParser;->reset()V

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
