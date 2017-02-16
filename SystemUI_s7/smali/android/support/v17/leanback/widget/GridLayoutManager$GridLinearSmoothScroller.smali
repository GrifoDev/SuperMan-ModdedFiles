.class abstract Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GridLinearSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get15(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/WindowAlignment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get15(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/WindowAlignment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    div-float v2, v3, v2

    int-to-float v3, p1

    mul-float v0, v2, v3

    int-to-float v2, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    float-to-int v1, v0

    :cond_0
    return v1
.end method

.method protected onStop()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v2

    invoke-static {v1, v2, v3, v3, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap13(Landroid/support/v17/leanback/widget/GridLayoutManager;IIZI)V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStop()V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set2(Landroid/support/v17/leanback/widget/GridLayoutManager;Z)Z

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v1, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set2(Landroid/support/v17/leanback/widget/GridLayoutManager;Z)Z

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap10(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStop()V

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get16()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, p1, v6, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap0(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;Landroid/view/View;[I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get8(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get16()[I

    move-result-object v4

    aget v1, v4, v7

    invoke-static {}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get16()[I

    move-result-object v4

    aget v2, v4, v8

    :goto_0
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get16()[I

    move-result-object v4

    aget v1, v4, v8

    invoke-static {}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get16()[I

    move-result-object v4

    aget v2, v4, v7

    goto :goto_0
.end method
