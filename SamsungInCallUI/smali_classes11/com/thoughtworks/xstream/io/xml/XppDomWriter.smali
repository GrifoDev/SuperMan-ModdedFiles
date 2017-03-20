.class public Lcom/thoughtworks/xstream/io/xml/XppDomWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;
.source "XppDomWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 1
    .param p1, "parent"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .prologue
    .line 27
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "parent"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "parent"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 58
    return-void
.end method

.method private top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected createNode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "newNode":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v1

    .line 67
    .local v1, "top":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    if-eqz v1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->addChild(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V

    .line 70
    :cond_0
    return-object v0
.end method

.method public getConfiguration()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->getTopLevelNodes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setValue(Ljava/lang/String;)V

    .line 75
    return-void
.end method
