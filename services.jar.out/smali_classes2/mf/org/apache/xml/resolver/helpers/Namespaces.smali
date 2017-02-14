.class public Lmf/org/apache/xml/resolver/helpers/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x3a

    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNamespaceURI(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getPrefix(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getNamespaceURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNamespaceURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xmlns:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Lmf/org/w3c/dom/Element;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0, p1}, Lmf/org/apache/xml/resolver/helpers/Namespaces;->getNamespaceURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, p0

    check-cast v0, Lmf/org/w3c/dom/Element;

    const-string/jumbo v1, "xmlns"

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Lmf/org/w3c/dom/Element;

    const-string/jumbo v0, "xmlns"

    invoke-interface {p0, v0}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    check-cast p0, Lmf/org/w3c/dom/Element;

    invoke-interface {p0, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x3a

    const/4 v3, 0x0

    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
