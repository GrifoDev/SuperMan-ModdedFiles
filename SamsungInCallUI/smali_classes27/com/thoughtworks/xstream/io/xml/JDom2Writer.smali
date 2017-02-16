.class public Lcom/thoughtworks/xstream/io/xml/JDom2Writer;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;
.source "JDom2Writer.java"


# instance fields
.field private final documentFactory:Lorg/jdom2/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/JDOMFactory;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;)V
    .locals 1
    .param p1, "container"    # Lorg/jdom2/Element;

    .prologue
    .line 69
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "container"    # Lorg/jdom2/Element;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 62
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;)V
    .locals 1
    .param p1, "container"    # Lorg/jdom2/Element;
    .param p2, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    .line 41
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "container"    # Lorg/jdom2/Element;
    .param p2, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 33
    invoke-direct {p0, p1, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 34
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->documentFactory:Lorg/jdom2/JDOMFactory;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/JDOMFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 49
    return-void
.end method

.method private top()Lorg/jdom2/Element;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->top()Lorg/jdom2/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->documentFactory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 94
    return-void
.end method

.method protected createNode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->documentFactory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 81
    .local v0, "element":Lorg/jdom2/Element;
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->top()Lorg/jdom2/Element;

    move-result-object v1

    .line 82
    .local v1, "parent":Lorg/jdom2/Element;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 85
    :cond_0
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->top()Lorg/jdom2/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->documentFactory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v1, p1}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 90
    return-void
.end method
