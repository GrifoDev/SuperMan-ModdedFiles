.class public Lcom/thoughtworks/xstream/io/xml/JDom2Writer;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;


# instance fields
.field private final documentFactory:Lorg/jdom2/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/JDOMFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;)V
    .locals 1

    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->documentFactory:Lorg/jdom2/JDOMFactory;

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/JDOMFactory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;-><init>(Lorg/jdom2/Element;Lorg/jdom2/JDOMFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private top()Lorg/jdom2/Element;
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->top()Lorg/jdom2/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->documentFactory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    return-void
.end method

.method protected createNode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->documentFactory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->top()Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_0
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->top()Lorg/jdom2/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Writer;->documentFactory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v1, p1}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    return-void
.end method
