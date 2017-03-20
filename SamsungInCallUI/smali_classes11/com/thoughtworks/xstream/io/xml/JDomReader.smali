.class public Lcom/thoughtworks/xstream/io/xml/JDomReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;
.source "JDomReader.java"


# instance fields
.field private currentElement:Lorg/jdom/Element;


# direct methods
.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/jdom/Document;

    .prologue
    .line 32
    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "document"    # Lorg/jdom/Document;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "document"    # Lorg/jdom/Document;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 62
    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/JDomReader;-><init>(Lorg/jdom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 0
    .param p1, "root"    # Lorg/jdom/Element;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "root"    # Lorg/jdom/Element;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "root"    # Lorg/jdom/Element;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/JDomReader;-><init>(Lorg/jdom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getAttribute(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v0}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    invoke-virtual {v0}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDomReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v0}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v0}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    invoke-virtual {v0}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/JDomReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChild(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v0}, Lorg/jdom/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v0}, Lorg/jdom/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v0}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/JDomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v0}, Lorg/jdom/Element;->getParentElement()Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v1}, Lorg/jdom/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "list":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    const/4 v1, 0x0

    .line 118
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    invoke-virtual {v1}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/xml/JDomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected reassignCurrentElement(Ljava/lang/Object;)V
    .locals 0
    .param p1, "current"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lorg/jdom/Element;

    .end local p1    # "current":Ljava/lang/Object;
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/JDomReader;->currentElement:Lorg/jdom/Element;

    .line 67
    return-void
.end method
