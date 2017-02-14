.class public Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;
.super Ljava/lang/Object;
.source "NamedNodeMapImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/NamedNodeMap;


# instance fields
.field attrs:[Lmf/org/w3c/dom/Attr;


# direct methods
.method public constructor <init>([Lmf/org/w3c/dom/Attr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v0, v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v0, v1, v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 1

    if-ltz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    aget-object v0, v0, p1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NamedNodeMapImpl;->getLength()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
