.class Landroid/support/v7/widget/PagerSnapHelper$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "PagerSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/PagerSnapHelper;->createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/PagerSnapHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/PagerSnapHelper;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/PagerSnapHelper$1;->this$0:Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, v1, v0

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/PagerSnapHelper$1;->this$0:Landroid/support/v7/widget/PagerSnapHelper;

    iget-object v5, p0, Landroid/support/v7/widget/PagerSnapHelper$1;->this$0:Landroid/support/v7/widget/PagerSnapHelper;

    iget-object v5, v5, Landroid/support/v7/widget/PagerSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/support/v7/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v2

    aget v0, v2, v6

    const/4 v4, 0x1

    aget v1, v2, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/PagerSnapHelper$1;->calculateTimeForDeceleration(I)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/PagerSnapHelper$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v0, v1, v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method
