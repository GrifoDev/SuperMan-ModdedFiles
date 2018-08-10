.class Landroid/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field mAnimation:Landroid/animation/Animator;

.field mChildNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mEndTime:J

.field mEnded:Z

.field mLatestParent:Landroid/animation/AnimatorSet$Node;

.field mParents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mParentsAdded:Z

.field mSiblings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mStartTime:J

.field mTotalDuration:J


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iput-boolean v2, p0, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iput-object v3, p0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    iput-boolean v2, p0, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    iput-wide v0, p0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v0, p0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-wide v0, p0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    iput-object p1, p0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method addChild(Landroid/animation/AnimatorSet$Node;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    :cond_1
    return-void
.end method

.method public addParent(Landroid/animation/AnimatorSet$Node;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addChild(Landroid/animation/AnimatorSet$Node;)V

    :cond_1
    return-void
.end method

.method public addParents(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addSibling(Landroid/animation/AnimatorSet$Node;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addSibling(Landroid/animation/AnimatorSet$Node;)V

    :cond_1
    return-void
.end method

.method public clone()Landroid/animation/AnimatorSet$Node;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    :cond_1
    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/animation/AnimatorSet$Node;->mEnded:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
