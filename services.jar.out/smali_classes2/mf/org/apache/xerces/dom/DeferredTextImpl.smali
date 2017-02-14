.class public Lmf/org/apache/xerces/dom/DeferredTextImpl;
.super Lmf/org/apache/xerces/dom/TextImpl;
.source "DeferredTextImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x2010f31313a241d1L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/TextImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredTextImpl;->fNodeIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredTextImpl;->needsSyncData(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredTextImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeData()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredTextImpl;->needsSyncData(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredTextImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredTextImpl;->fNodeIndex:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredTextImpl;->data:Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredTextImpl;->fNodeIndex:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredTextImpl;->isIgnorableWhitespace(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
