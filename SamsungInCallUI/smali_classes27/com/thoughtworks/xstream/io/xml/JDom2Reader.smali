.class public Lcom/thoughtworks/xstream/io/xml/JDom2Reader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;
.source "JDom2Reader.java"


# instance fields
.field private currentElement:Lorg/jdom2/Element;


# direct methods
.method public constructor <init>(Lorg/jdom2/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/jdom2/Document;

    .prologue
    .line 36
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "document"    # Lorg/jdom2/Document;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 50
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "root"    # Lorg/jdom2/Element;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "root"    # Lorg/jdom2/Element;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAttribute(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChild(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v1}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "list":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    invoke-virtual {v1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected reassignCurrentElement(Ljava/lang/Object;)V
    .locals 0
    .param p1, "current"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "current":Ljava/lang/Object;
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    .line 55
    return-void
.end method
