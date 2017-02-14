.class public Lmf/org/apache/html/dom/HTMLFormElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLFormElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLFormElement;


# static fields
.field private static final serialVersionUID:J = -0x65a6bcfac23fbc5aL


# instance fields
.field private _elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLFormElementImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lmf/org/apache/html/dom/HTMLFormElementImpl;->_elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getAcceptCharset()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "accept-charset"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "action"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->getChildNodesUnoptimized()Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLFormElementImpl;->_elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLFormElementImpl;->_elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLFormElementImpl;->_elements:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    goto :goto_0
.end method

.method public getEnctype()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "enctype"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->getElements()Lmf/org/w3c/dom/html/HTMLCollection;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/html/HTMLCollection;->getLength()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "method"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setAcceptCharset(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "accept-charset"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "action"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnctype(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "enctype"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "method"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public submit()V
    .locals 0

    return-void
.end method
