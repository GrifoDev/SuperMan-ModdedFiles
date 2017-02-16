.class final Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
.super Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PendingMoveSmoothScroller"
.end annotation


# instance fields
.field private mPendingMoves:I

.field private final mStaggeredGrid:Z

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;IZ)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    iput-boolean p3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->setTargetPosition(I)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get11(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v1, :cond_3

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get8(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_2
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-ltz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method consumePendingMovesAfterLayout()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap8(Landroid/support/v17/leanback/widget/GridLayoutManager;ZI)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap2(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-gez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap1(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->stop()V

    :cond_3
    return-void
.end method

.method consumePendingMovesBeforeLayout()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-nez v4, :cond_0

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v4, :cond_4

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get7(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v5

    add-int v2, v4, v5

    :goto_0
    move v1, v2

    :goto_1
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set2(Landroid/support/v17/leanback/widget/GridLayoutManager;Z)Z

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set2(Landroid/support/v17/leanback/widget/GridLayoutManager;Z)Z

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get7(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_2
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v4, :cond_8

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get7(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    :cond_6
    move-object v0, v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set0(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set4(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v4, :cond_7

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    goto :goto_2

    :cond_7
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    goto :goto_2

    :cond_8
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get7(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_1
.end method

.method decreasePendingMoves()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    const/16 v1, -0xa

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_0
    return-void
.end method

.method increasePendingMoves()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->onStop()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set3(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->getTargetPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap14(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    return-void
.end method
