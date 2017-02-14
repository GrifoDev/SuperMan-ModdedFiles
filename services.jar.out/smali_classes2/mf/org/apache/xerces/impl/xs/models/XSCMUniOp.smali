.class public Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "XSCMUniOp.java"


# instance fields
.field private fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->type()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_UST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method final getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method public isNullable()Z
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->type()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    return v0
.end method
