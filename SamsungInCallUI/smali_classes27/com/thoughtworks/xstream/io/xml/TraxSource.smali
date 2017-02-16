.class public Lcom/thoughtworks/xstream/io/xml/TraxSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "TraxSource.java"


# static fields
.field public static final XSTREAM_FEATURE:Ljava/lang/String; = "http://com.thoughtworks.xstream/XStreamSource/feature"


# instance fields
.field private source:Ljava/util/List;

.field private xmlReader:Lorg/xml/sax/XMLReader;

.field private xstream:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 72
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 77
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 82
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 103
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 72
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 77
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 82
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 105
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSource(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/XStream;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "xstream"    # Lcom/thoughtworks/xstream/XStream;

    .prologue
    const/4 v1, 0x0

    .line 120
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 72
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 77
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 82
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 122
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSource(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setXStream(Lcom/thoughtworks/xstream/XStream;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1, "source"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x0

    .line 135
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 72
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 77
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 82
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 137
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSourceAsList(Ljava/util/List;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/thoughtworks/xstream/XStream;)V
    .locals 2
    .param p1, "source"    # Ljava/util/List;
    .param p2, "xstream"    # Lcom/thoughtworks/xstream/XStream;

    .prologue
    const/4 v1, 0x0

    .line 152
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 72
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 77
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 82
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 154
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSourceAsList(Ljava/util/List;)V

    .line 155
    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setXStream(Lcom/thoughtworks/xstream/XStream;)V

    .line 156
    return-void
.end method

.method private configureXMLReader()V
    .locals 4

    .prologue
    .line 293
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-eqz v1, :cond_1

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v2, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v2, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_1
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p1, "filterChain"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/SaxWriter;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>()V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 289
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->configureXMLReader()V

    .line 290
    return-void

    .line 273
    :cond_0
    instance-of v1, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 275
    check-cast v0, Lorg/xml/sax/XMLFilter;

    .line 276
    .local v0, "filter":Lorg/xml/sax/XMLFilter;
    :goto_1
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_1

    .line 277
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/XMLFilter;

    move-object v0, v1

    check-cast v0, Lorg/xml/sax/XMLFilter;

    goto :goto_1

    .line 279
    :cond_1
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lcom/thoughtworks/xstream/io/xml/SaxWriter;

    if-nez v1, :cond_2

    .line 280
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/SaxWriter;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 284
    :cond_2
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    goto :goto_0

    .line 286
    .end local v0    # "filter":Lorg/xml/sax/XMLFilter;
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method


# virtual methods
.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->createXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 1
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSource(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "obj"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSourceAsList(Ljava/util/List;)V

    .line 244
    return-void
.end method

.method public setSourceAsList(Ljava/util/List;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 266
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->configureXMLReader()V

    .line 267
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->createXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 193
    return-void
.end method

.method public setXStream(Lcom/thoughtworks/xstream/XStream;)V
    .locals 2
    .param p1, "xstream"    # Lcom/thoughtworks/xstream/XStream;

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "xstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 227
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->configureXMLReader()V

    .line 228
    return-void
.end method
