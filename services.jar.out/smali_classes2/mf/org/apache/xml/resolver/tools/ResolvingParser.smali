.class public Lmf/org/apache/xml/resolver/tools/ResolvingParser;
.super Ljava/lang/Object;
.source "ResolvingParser.java"

# interfaces
.implements Lorg/xml/sax/Parser;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/EntityResolver;


# static fields
.field public static namespaceAware:Z

.field public static suppressExplanation:Z

.field public static validating:Z


# instance fields
.field private allowXMLCatalogPI:Z

.field private baseURL:Ljava/net/URL;

.field private catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field private catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

.field private documentHandler:Lorg/xml/sax/DocumentHandler;

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private oasisXMLCatalogPI:Z

.field private parser:Lorg/xml/sax/Parser;

.field private piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

.field private saxParser:Lmf/javax/xml/parsers/SAXParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->namespaceAware:Z

    sput-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->validating:Z

    sput-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->suppressExplanation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->saxParser:Lmf/javax/xml/parsers/SAXParser;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->oasisXMLCatalogPI:Z

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->initParser()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->saxParser:Lmf/javax/xml/parsers/SAXParser;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->oasisXMLCatalogPI:Z

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->initParser()V

    return-void
.end method

.method private explain(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->suppressExplanation:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Parser probably encountered bad URI in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "For example, replace \'/some/uri\' with \'file:/some/uri\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initParser()V
    .locals 2

    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sget-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->namespaceAware:Z

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    sget-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->validating:Z

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    :try_start_0
    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->saxParser:Lmf/javax/xml/parsers/SAXParser;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->saxParser:Lmf/javax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParser;->getParser()Lorg/xml/sax/Parser;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupParse(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p0}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p0}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    :try_start_0
    const-string/jumbo v0, "basename"

    invoke-static {v0}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    if-nez v0, :cond_0

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    goto :goto_1

    :cond_0
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    goto :goto_1
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->setupParse(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->explain(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->setupParse(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->explain(Ljava/lang/String;)V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "oasis-xml-catalog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-nez v0, :cond_8

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "catalog="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    if-nez v1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PI oasis-xml-catalog occurred in an invalid place: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    if-nez v1, :cond_3

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->baseURL:Ljava/net/URL;

    invoke-direct {v1, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PI oasis-xml-catalog ignored: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "oasis-xml-catalog PI"

    invoke-virtual {v1, v6, v2, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PI oasis-xml-catalog unparseable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x4

    const-string/jumbo v3, "oasis-xml-catalog"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->oasisXMLCatalogPI:Z

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception parsing oasis-xml-catalog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    new-instance v1, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Z)V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    return-object v6

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v2, v2, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to create InputSource ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    goto :goto_0
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->documentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    goto :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->allowXMLCatalogPI:Z

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
