.class public Lmf/org/apache/html/dom/HTMLFrameSetElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLFrameSetElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLFrameSetElement;


# static fields
.field private static final serialVersionUID:J = 0x749df6c8c931c0d4L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCols()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "cols"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameSetElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRows()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rows"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameSetElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCols(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "cols"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameSetElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRows(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "rows"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameSetElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
