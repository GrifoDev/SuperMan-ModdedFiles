.class public Lcom/android/internal/widget/LinearSmoothScroller;
.super Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput v1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iput v1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    return-void
.end method

.method private clampApplyScroll(II)I
    .locals 3

    const/4 v2, 0x0

    move v0, p1

    sub-int/2addr p1, p2

    mul-int v1, v0, p1

    if-gtz v1, :cond_0

    return v2

    :cond_0
    return p1
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 4

    const/4 v2, 0x0

    packed-switch p5, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    sub-int v2, p3, p1

    return v2

    :pswitch_1
    sub-int v2, p4, p2

    return v2

    :pswitch_2
    sub-int v1, p3, p1

    if-lez v1, :cond_0

    return v1

    :cond_0
    sub-int v0, p4, p2

    if-gez v0, :cond_1

    return v0

    :cond_1
    return v2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v1, v0, v5

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v2, v0, v5

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v4, v0, v5

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v0

    return v0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v1, v0, v5

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v2, v0, v5

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v4, v0, v5

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v0

    return v0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    div-float v0, v1, v0

    return v0
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "LinearSmoothScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method protected getHorizontalSnapPreference()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getVerticalSnapPreference()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->stop()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iget v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iget v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/LinearSmoothScroller;->updateActionForInterimTarget(Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v2

    mul-int v4, v1, v1

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    if-lez v3, :cond_0

    neg-int v4, v1

    neg-int v5, v2

    iget-object v6, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 7

    const v5, 0x461c4000    # 10000.0f

    const/4 v4, 0x0

    const v6, 0x3f99999a    # 1.2f

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->stop()V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    const/16 v3, 0x2710

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method
