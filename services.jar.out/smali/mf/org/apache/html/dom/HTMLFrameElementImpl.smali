.class public Lmf/org/apache/html/dom/HTMLFrameElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLFrameElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLFrameElement;


# static fields
.field private static final serialVersionUID:J = 0x8d0d0bce500adf0L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFrameBorder()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "frameborder"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongDesc()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "longdesc"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginHeight()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "marginheight"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginWidth()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "marginwidth"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoResize()Z
    .locals 1

    const-string/jumbo v0, "noresize"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getScrolling()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "scrolling"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFrameBorder(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "frameborder"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "longdesc"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMarginHeight(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "marginheight"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMarginWidth(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "marginwidth"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNoResize(Z)V
    .locals 1

    const-string/jumbo v0, "noresize"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setScrolling(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "scrolling"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
