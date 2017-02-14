.class public abstract Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.super Ljava/lang/Object;
.source "CMNode.java"


# instance fields
.field private fCompactedForUPA:Z

.field private fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fFollowPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fMaxStates:I

.field private final fType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFollowPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fMaxStates:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fCompactedForUPA:Z

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fType:I

    return-void
.end method


# virtual methods
.method protected abstract calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
.end method

.method protected abstract calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
.end method

.method public final firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fMaxStates:I

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fCompactedForUPA:Z

    return v0
.end method

.method public abstract isNullable()Z
.end method

.method public final lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fMaxStates:I

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0
.end method

.method final setFollowPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFollowPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    return-void
.end method

.method public setIsCompactUPAModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fCompactedForUPA:Z

    return-void
.end method

.method public final setMaxStates(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fMaxStates:I

    return-void
.end method

.method public final type()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fType:I

    return v0
.end method
