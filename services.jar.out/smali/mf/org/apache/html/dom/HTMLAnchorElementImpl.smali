.class public Lmf/org/apache/html/dom/HTMLAnchorElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLAnchorElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLAnchorElement;


# static fields
.field private static final serialVersionUID:J = -0x1f35d48de1c9897L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blur()V
    .locals 0

    return-void
.end method

.method public focus()V
    .locals 0

    return-void
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "accesskey"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "charset"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoords()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "coords"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "href"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHreflang()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "hreflang"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rel"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRev()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rev"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "shape"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 1

    const-string/jumbo v0, "tabindex"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "accesskey"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "charset"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCoords(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "coords"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "href"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHreflang(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "hreflang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "rel"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRev(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "rev"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShape(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "shape"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 2

    const-string/jumbo v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLAnchorElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
