.class public Lmf/org/apache/xml/resolver/tools/CatalogResolver;
.super Ljava/lang/Object;
.source "CatalogResolver.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lmf/javax/xml/transform/URIResolver;


# instance fields
.field private catalog:Lmf/org/apache/xml/resolver/Catalog;

.field private catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field public namespaceAware:Z

.field public validating:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->namespaceAware:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->validating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {p0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->namespaceAware:Z

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->validating:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->namespaceAware:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->validating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->initializeCatalogs(Z)V

    return-void
.end method

.method private initializeCatalogs(Z)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-void
.end method

.method private makeAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    return-object p1
.end method

.method private setEntityResolver(Lmf/javax/xml/transform/sax/SAXSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lmf/javax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-virtual {p1, v0}, Lmf/javax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    return-void

    :cond_0
    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    :try_start_0
    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lmf/javax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-object v0
.end method

.method public getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    if-eqz v1, :cond_1

    if-nez p2, :cond_2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "Resolved system"

    invoke-virtual {v1, v4, v2, p2, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "Catalog resolution attempted with null catalog; ignored"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    return-object v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "Malformed URL exception trying to resolve"

    invoke-virtual {v1, v3, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "I/O exception trying to resolve"

    invoke-virtual {v1, v3, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "Resolved public"

    invoke-virtual {v1, v4, v2, p1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    goto :goto_2

    :catch_2
    move-exception v1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "Malformed URL exception trying to resolve"

    invoke-virtual {v1, v3, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "I/O exception trying to resolve"

    invoke-virtual {v1, v3, v2, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v0, p1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v2, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    move-object v0, v1

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x2

    const-string/jumbo v3, "Resolved URI"

    invoke-virtual {v1, v2, v3, p1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lmf/javax/xml/transform/sax/SAXSource;

    invoke-direct {v1}, Lmf/javax/xml/transform/sax/SAXSource;-><init>()V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmf/javax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    invoke-direct {p0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->setEntityResolver(Lmf/javax/xml/transform/sax/SAXSource;)V

    return-object v1

    :cond_0
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v1

    :goto_3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-direct {p0, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lmf/javax/xml/transform/TransformerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Malformed URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(base "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v6

    :cond_0
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

    iget-object v2, p0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

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
