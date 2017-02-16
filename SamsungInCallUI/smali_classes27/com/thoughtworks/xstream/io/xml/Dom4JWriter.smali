.class public Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;
.source "Dom4JWriter.java"


# instance fields
.field private final documentFactory:Lorg/dom4j/DocumentFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;)V
    .locals 2
    .param p1, "root"    # Lorg/dom4j/Branch;

    .prologue
    .line 81
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "root"    # Lorg/dom4j/Branch;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 45
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "root"    # Lorg/dom4j/Branch;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 77
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "root"    # Lorg/dom4j/Branch;
    .param p2, "factory"    # Lorg/dom4j/DocumentFactory;
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 30
    invoke-direct {p0, p1, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 31
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "root"    # Lorg/dom4j/Branch;
    .param p2, "factory"    # Lorg/dom4j/DocumentFactory;
    .param p3, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;

    .prologue
    .line 69
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "factory"    # Lorg/dom4j/DocumentFactory;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "factory"    # Lorg/dom4j/DocumentFactory;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 63
    return-void
.end method

.method private top()Lorg/dom4j/Branch;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Branch;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->top()Lorg/dom4j/Branch;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 106
    return-void
.end method

.method protected createNode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 93
    .local v0, "element":Lorg/dom4j/Element;
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->top()Lorg/dom4j/Branch;

    move-result-object v1

    .line 94
    .local v1, "top":Lorg/dom4j/Branch;
    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->top()Lorg/dom4j/Branch;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/dom4j/Branch;->add(Lorg/dom4j/Element;)V

    .line 97
    :cond_0
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->top()Lorg/dom4j/Branch;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/dom4j/Branch;->setText(Ljava/lang/String;)V

    .line 102
    return-void
.end method
