.class public Lcom/thoughtworks/xstream/io/xml/JDomWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;
.source "JDomWriter.java"


# instance fields
.field private final documentFactory:Lorg/jdom/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;-><init>(Lorg/jdom/JDOMFactory;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 1
    .param p1, "container"    # Lorg/jdom/Element;

    .prologue
    .line 87
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;-><init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "container"    # Lorg/jdom/Element;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 75
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;-><init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "container"    # Lorg/jdom/Element;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 83
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;-><init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;)V
    .locals 1
    .param p1, "container"    # Lorg/jdom/Element;
    .param p2, "factory"    # Lorg/jdom/JDOMFactory;

    .prologue
    .line 49
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;-><init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "container"    # Lorg/jdom/Element;
    .param p2, "factory"    # Lorg/jdom/JDOMFactory;
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 34
    invoke-direct {p0, p1, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 35
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->documentFactory:Lorg/jdom/JDOMFactory;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "container"    # Lorg/jdom/Element;
    .param p2, "factory"    # Lorg/jdom/JDOMFactory;
    .param p3, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;-><init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/jdom/JDOMFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;-><init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;-><init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;-><init>(Lorg/jdom/Element;Lorg/jdom/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 65
    return-void
.end method

.method private top()Lorg/jdom/Element;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->top()Lorg/jdom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->documentFactory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Attribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom/Element;->setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;

    .line 109
    return-void
.end method

.method protected createNode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->documentFactory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    .line 96
    .local v0, "element":Lorg/jdom/Element;
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->top()Lorg/jdom/Element;

    move-result-object v1

    .line 97
    .local v1, "parent":Lorg/jdom/Element;
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    .line 100
    :cond_0
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->top()Lorg/jdom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/JDomWriter;->documentFactory:Lorg/jdom/JDOMFactory;

    invoke-interface {v1, p1}, Lorg/jdom/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    .line 105
    return-void
.end method
