.class public Lcom/thoughtworks/xstream/io/xml/DomWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;


# instance fields
.field private final document:Lorg/w3c/dom/Document;

.field private hasRootElement:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/DomWriter;-><init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/DomWriter;-><init>(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/DomWriter;-><init>(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/DomWriter;-><init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/DomWriter;-><init>(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/DomWriter;-><init>(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/DomWriter;->document:Lorg/w3c/dom/Document;

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/DomWriter;->hasRootElement:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/DomWriter;-><init>(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private top()Lorg/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/DomWriter;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/DomWriter;->top()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/DomWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createNode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomWriter;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/DomWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/DomWriter;->top()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/DomWriter;->top()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/DomWriter;->hasRootElement:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomWriter;->document:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/DomWriter;->hasRootElement:Z

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/DomWriter;->top()Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomWriter;->document:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method
