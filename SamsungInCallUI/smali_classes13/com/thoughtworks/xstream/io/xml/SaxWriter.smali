.class public final Lcom/thoughtworks/xstream/io/xml/SaxWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;
.source "SaxWriter.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# static fields
.field public static final CONFIGURED_XSTREAM_PROPERTY:Ljava/lang/String; = "http://com.thoughtworks.xstream/sax/property/configured-xstream"

.field public static final SOURCE_OBJECT_LIST_PROPERTY:Ljava/lang/String; = "http://com.thoughtworks.xstream/sax/property/source-object-list"


# instance fields
.field private final attributeList:Lorg/xml/sax/helpers/AttributesImpl;

.field private buffer:[C

.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private depth:I

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private elementStack:Ljava/util/List;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private features:Ljava/util/Map;

.field private final includeEnclosingDocument:Z

.field private final properties:Ljava/util/Map;

.field private startTagInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->features:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    iput v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->elementStack:Ljava/util/List;

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    iput-boolean p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->includeEnclosingDocument:Z

    return-void
.end method

.method public constructor <init>(ZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private endDocument(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    :cond_1
    return-void
.end method

.method private flushStartTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->elementStack:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v1, v2, v0, v0, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    iput-boolean v4, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    :cond_0
    return-void
.end method

.method private parse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    const-string v5, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thoughtworks/xstream/XStream;

    move-object v3, v4

    check-cast v3, Lcom/thoughtworks/xstream/XStream;

    if-nez v3, :cond_0

    new-instance v3, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    :cond_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    const-string v5, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v2, v4

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "Missing or empty source object list. Setting property \"http://com.thoughtworks.xstream/sax/property/source-object-list\" is mandatory"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startDocument(Z)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    :try_end_0
    .catch Lcom/thoughtworks/xstream/io/StreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StreamException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StreamException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Lorg/xml/sax/SAXException;

    check-cast v4, Lorg/xml/sax/SAXException;

    throw v4

    :cond_3
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v4}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->endDocument(Z)V
    :try_end_1
    .catch Lcom/thoughtworks/xstream/io/StreamException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_4
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private startDocument(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->escapeXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v1, ""

    const-string v4, "CDATA"

    move-object v3, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "No startElement being processed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public endNode()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->flushStartTag()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->elementStack:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v4, ""

    invoke-interface {v3, v4, v2, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    iget v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->includeEnclosingDocument:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->endDocument(Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->features:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_2
    new-instance v1, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v1, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    const-string v0, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->parse()V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->parse()V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resolver"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->features:Ljava/util/Map;

    if-eqz p2, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v1, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/thoughtworks/xstream/XStream;

    if-nez v1, :cond_2

    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    const-string v2, "Value for property \"http://com.thoughtworks.xstream/sax/property/configured-xstream\" must be a non-null XStream object"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    const-string v2, "Value for property \"http://com.thoughtworks.xstream/sax/property/source-object-list\" shall not be an empty list"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :cond_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    const-string v2, "Value for property \"http://com.thoughtworks.xstream/sax/property/source-object-list\" must be a non-null List object"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v1, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->flushStartTag()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->flushStartTag()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->elementStack:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->escapeXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    iget v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->includeEnclosingDocument:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startDocument(Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
