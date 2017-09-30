.class public Lcom/thoughtworks/xstream/io/xml/TraxSource;
.super Ljavax/xml/transform/sax/SAXSource;


# static fields
.field public static final XSTREAM_FEATURE:Ljava/lang/String; = "http://com.thoughtworks.xstream/XStreamSource/feature"


# instance fields
.field private source:Ljava/util/List;

.field private xmlReader:Lorg/xml/sax/XMLReader;

.field private xstream:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSource(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/XStream;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSource(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setXStream(Lcom/thoughtworks/xstream/XStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSourceAsList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/thoughtworks/xstream/XStream;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSourceAsList(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setXStream(Lcom/thoughtworks/xstream/XStream;)V

    return-void
.end method

.method private configureXMLReader()V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->configureXMLReader()V

    return-void

    :cond_0
    instance-of v0, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/XMLFilter;

    :goto_1
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/XMLFilter;

    check-cast v0, Lorg/xml/sax/XMLFilter;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lcom/thoughtworks/xstream/io/xml/SaxWriter;

    if-nez v1, :cond_2

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/SaxWriter;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    :cond_2
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->createXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSource(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "obj"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSourceAsList(Ljava/util/List;)V

    return-void
.end method

.method public setSourceAsList(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->configureXMLReader()V

    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->createXMLReader(Lorg/xml/sax/XMLReader;)V

    return-void
.end method

.method public setXStream(Lcom/thoughtworks/xstream/XStream;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "xstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->configureXMLReader()V

    return-void
.end method
