.class public Lcom/thoughtworks/xstream/io/xml/JDom2Reader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;


# instance fields
.field private currentElement:Lorg/jdom2/Element;


# direct methods
.method public constructor <init>(Lorg/jdom2/Document;)V
    .locals 1

    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public getAttribute(I)Ljava/lang/String;
    .locals 1

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

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1

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

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected reassignCurrentElement(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/jdom2/Element;

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;->currentElement:Lorg/jdom2/Element;

    return-void
.end method
