.class public abstract Lcom/android/internal/widget/SimpleItemAnimator;
.super Lcom/android/internal/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    if-eqz p2, :cond_1

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v2, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SimpleItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public abstract animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7

    iget v3, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v4, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v5, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/SimpleItemAnimator;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    :cond_0
    iget v5, p4, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p4, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    goto :goto_0
.end method

.method public animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7

    iget v2, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget-object v6, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p3, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_3

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SimpleItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    :cond_1
    iget v4, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    goto :goto_0

    :cond_2
    iget v5, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public abstract animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v2, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p3, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SimpleItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    return v0
.end method

.method public abstract animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->onChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->onChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SimpleItemAnimator;->onRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public onAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method
