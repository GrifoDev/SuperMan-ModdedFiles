.class public Lcom/thoughtworks/xstream/io/xml/XppDomWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createNode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->addChild(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V

    :cond_0
    return-object v0
.end method

.method public getConfiguration()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 2

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

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XppDomWriter;->top()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setValue(Ljava/lang/String;)V

    return-void
.end method
