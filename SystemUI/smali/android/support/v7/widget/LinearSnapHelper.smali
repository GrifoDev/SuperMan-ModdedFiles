.class public Landroid/support/v7/widget/LinearSnapHelper;
.super Landroid/support/v7/widget/SnapHelper;
.source "LinearSnapHelper.java"


# instance fields
.field private mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private computeDistancePerChild(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)F
    .locals 13

    const/4 v8, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/high16 v5, -0x80000000

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    return v11

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v9, v7, :cond_3

    move v7, v9

    move-object v8, v0

    :cond_3
    if-le v9, v5, :cond_1

    move v5, v9

    move-object v6, v0

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    if-nez v6, :cond_6

    :cond_5
    const/high16 v11, 0x3f800000    # 1.0f

    return v11

    :cond_6
    invoke-virtual {p2, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p2, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v2, v3, v10

    if-nez v2, :cond_7

    const/high16 v11, 0x3f800000    # 1.0f

    return v11

    :cond_7
    int-to-float v11, v2

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    sub-int v12, v5, v7

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    div-float/2addr v11, v12

    return v11
.end method

.method private distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    :goto_0
    sub-int v2, v0, v1

    return v2

    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    goto :goto_0
.end method

.method private estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p3, p4}, Landroid/support/v7/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearSnapHelper;->computeDistancePerChild(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    return v5

    :cond_0
    aget v3, v2, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_1

    aget v0, v2, v5

    :goto_0
    int-to-float v3, v0

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3

    :cond_1
    aget v0, v2, v6

    goto :goto_0
.end method

.method private findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v8, 0x0

    return-object v8

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    :goto_0
    const v0, 0x7fffffff

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    invoke-virtual {p1, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    sub-int v8, v4, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_1

    move v0, v1

    move-object v6, v3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    goto :goto_0

    :cond_3
    return-object v6
.end method

.method private getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method

.method private getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/LinearSnapHelper;->distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/LinearSnapHelper;->distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    :goto_1
    return-object v0

    :cond_0
    aput v2, v0, v2

    goto :goto_0

    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method

.method public findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearSnapHelper;->findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearSnapHelper;->findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
    .locals 11

    instance-of v9, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v9, :cond_0

    const/4 v9, -0x1

    return v9

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v9, -0x1

    return v9

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v9, -0x1

    return v9

    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_3

    const/4 v9, -0x1

    return v9

    :cond_3
    move-object v8, p1

    check-cast v8, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    add-int/lit8 v9, v4, -0x1

    invoke-interface {v8, v9}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v9, -0x1

    return v9

    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, p2, v10}, Landroid/support/v7/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I

    move-result v3

    iget v9, v7, Landroid/graphics/PointF;->x:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    neg-int v3, v3

    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10, p3}, Landroid/support/v7/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I

    move-result v6

    iget v9, v7, Landroid/graphics/PointF;->y:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    neg-int v6, v6

    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_9

    move v2, v6

    :goto_2
    if-nez v2, :cond_a

    const/4 v9, -0x1

    return v9

    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    :cond_9
    move v2, v3

    goto :goto_2

    :cond_a
    add-int v5, v0, v2

    if-gez v5, :cond_b

    const/4 v5, 0x0

    :cond_b
    if-lt v5, v4, :cond_c

    add-int/lit8 v5, v4, -0x1

    :cond_c
    return v5
.end method
