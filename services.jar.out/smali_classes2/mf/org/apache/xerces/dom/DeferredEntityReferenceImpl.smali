.class public Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;
.super Lmf/org/apache/xerces/dom/EntityReferenceImpl;
.source "DeferredEntityReferenceImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x56ab1254629fc5fL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->needsSyncData(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->isReadOnly(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    invoke-virtual {p0, v2, v2}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->setReadOnly(ZZ)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->name:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;->baseURI:Ljava/lang/String;

    return-void
.end method
