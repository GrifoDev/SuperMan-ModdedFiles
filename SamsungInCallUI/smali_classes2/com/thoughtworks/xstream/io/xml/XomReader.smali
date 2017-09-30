.class public Lcom/thoughtworks/xstream/io/xml/XomReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;


# instance fields
.field private currentElement:Lnu/xom/Element;


# direct methods
.method public constructor <init>(Lnu/xom/Document;)V
    .locals 1

    invoke-virtual {p1}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    invoke-virtual {p1}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    invoke-virtual {p1}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Element;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Element;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public getAttribute(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0, p1}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XomReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0, p1}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XomReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChild(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getChildElements()Lnu/xom/Elements;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnu/xom/Elements;->get(I)Lnu/xom/Element;

    move-result-object v0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getChildElements()Lnu/xom/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Elements;->size()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0, v1}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    instance-of v4, v0, Lnu/xom/Text;

    if-eqz v4, :cond_0

    check-cast v0, Lnu/xom/Text;

    invoke-virtual {v0}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getChildElements()Lnu/xom/Elements;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnu/xom/Elements;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnu/xom/Elements;->get(I)Lnu/xom/Element;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected reassignCurrentElement(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnu/xom/Element;

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XomReader;->currentElement:Lnu/xom/Element;

    return-void
.end method
