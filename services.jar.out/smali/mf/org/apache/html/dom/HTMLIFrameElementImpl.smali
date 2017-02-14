.class public Lmf/org/apache/html/dom/HTMLIFrameElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLIFrameElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLIFrameElement;


# static fields
.field private static final serialVersionUID:J = 0x2137db36a48e8c9dL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameBorder()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "frameborder"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongDesc()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "longdesc"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginHeight()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "marginheight"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginWidth()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "marginwidth"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrolling()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "scrolling"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFrameBorder(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "frameborder"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "longdesc"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMarginHeight(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "marginheight"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMarginWidth(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "marginwidth"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScrolling(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "scrolling"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
