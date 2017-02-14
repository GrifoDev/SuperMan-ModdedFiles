.class public Lmf/org/apache/html/dom/HTMLScriptElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLScriptElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLScriptElement;


# static fields
.field private static final serialVersionUID:J = 0x46a47c35bd3a44deL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "charset"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefer()Z
    .locals 1

    const-string/jumbo v0, "defer"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "event"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlFor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "for"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    instance-of v0, v1, Lmf/org/w3c/dom/Text;

    if-nez v0, :cond_0

    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Text;

    invoke-interface {v0}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "charset"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefer(Z)V
    .locals 1

    const-string/jumbo v0, "defer"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "event"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHtmlFor(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "for"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
