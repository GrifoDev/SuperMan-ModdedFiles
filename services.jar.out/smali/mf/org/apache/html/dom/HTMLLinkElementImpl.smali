.class public Lmf/org/apache/html/dom/HTMLLinkElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLLinkElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLLinkElement;


# static fields
.field private static final serialVersionUID:J = 0xc224c9e365591ffL


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

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "href"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHreflang()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "hreflang"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMedia()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "media"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rel"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRev()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rev"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "charset"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "href"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHreflang(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "hreflang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMedia(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "media"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "rel"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRev(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "rev"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
