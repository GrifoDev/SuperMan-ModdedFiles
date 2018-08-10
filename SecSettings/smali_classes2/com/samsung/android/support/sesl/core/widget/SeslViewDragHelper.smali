.class public Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;
.super Ljava/lang/Object;
.source "SeslViewDragHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$2;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    new-instance v2, Landroid/widget/OverScroller;

    sget-object v3, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_1

    :cond_0
    return v2

    :cond_1
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-lez v3, :cond_0

    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eqz v3, :cond_6

    :cond_4
    :goto_0
    return v2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    return v2

    :cond_6
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-gtz v4, :cond_2

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-gtz v4, :cond_3

    move v1, v2

    :goto_1
    if-nez v0, :cond_4

    :cond_0
    if-nez v0, :cond_6

    if-nez v1, :cond_8

    return v2

    :cond_1
    return v2

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    :goto_2
    return v3

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    :goto_3
    return v3

    :cond_7
    move v3, v2

    goto :goto_3

    :cond_8
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    :goto_4
    return v3

    :cond_9
    move v3, v2

    goto :goto_4
.end method

.method private clampMag(FFF)F
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v1, v0, p2

    if-gez v1, :cond_0

    return v2

    :cond_0
    cmpl-float v1, v0, p3

    if-lez v1, :cond_2

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    :goto_0
    return p3

    :cond_1
    neg-float p3, p3

    goto :goto_0

    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p2, :cond_0

    if-gt v0, p3, :cond_1

    return p1

    :cond_0
    return v1

    :cond_1
    if-gtz p1, :cond_2

    neg-int p3, p3

    :cond_2
    return p3
.end method

.method private clearMotionHistory()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    return-void

    :cond_0
    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v6, v3

    int-to-float v7, v3

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gtz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    :goto_0
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    return v6

    :cond_0
    return v6

    :cond_1
    int-to-float v6, p2

    div-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    goto :goto_0
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14

    iget v12, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clampMag(III)I

    move-result p4

    iget v12, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clampMag(III)I

    move-result p5

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v7, v4, v5

    add-int v6, v2, v3

    if-nez p4, :cond_0

    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    :goto_0
    if-nez p5, :cond_1

    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    :goto_1
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    :cond_0
    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    goto :goto_0

    :cond_1
    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;
    .locals 3

    invoke-static {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mReleaseInProgress:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mReleaseInProgress:Z

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-eq v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    goto :goto_0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8

    move v2, p1

    move v3, p2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    if-nez p3, :cond_1

    :goto_0
    if-nez p4, :cond_2

    :goto_1
    if-eqz p3, :cond_3

    :cond_0
    sub-int v4, v2, v6

    sub-int v5, v3, v7

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    if-nez p4, :cond_0

    goto :goto_2
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    if-nez v7, :cond_1

    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    if-nez v7, :cond_2

    :goto_0
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    :goto_1
    return-void

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-le v7, p1, :cond_0

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v2, p1, v10

    sub-int v3, p2, v6

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    return v1
.end method

.method private getEdgesTouched(II)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_3

    :goto_3
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_2
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    or-int/lit8 v0, v0, 0x8

    goto :goto_3
.end method

.method private isValidPointerForActionMove(I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  SeslViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeslViewDragHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clampMag(FFF)F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clampMag(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    if-nez v0, :cond_4

    :goto_4
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_2
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeDragStarted(II)V

    goto :goto_4
.end method

.method private saveInitialMotion(FFI)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->ensureMotionHistorySizeForId(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clearMotionHistory()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureChildView: parameter must be a descendant of the SeslViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkTouchSlop(I)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public checkTouchSlop(II)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/lit8 v6, p1, 0x1

    if-eq v6, v5, :cond_2

    move v0, v4

    :goto_0
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    move v1, v4

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    if-nez v0, :cond_4

    :cond_0
    if-nez v0, :cond_6

    if-nez v1, :cond_8

    return v4

    :cond_1
    return v4

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    :goto_2
    return v5

    :cond_5
    move v5, v4

    goto :goto_2

    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    :goto_3
    return v5

    :cond_7
    move v5, v4

    goto :goto_3

    :cond_8
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    :goto_4
    return v5

    :cond_9
    move v5, v4

    goto :goto_4
.end method

.method public continueSettling(Z)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-eq v0, v8, :cond_1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-eq v0, v8, :cond_9

    move v0, v7

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    if-nez v4, :cond_4

    :goto_2
    if-nez v5, :cond_5

    :goto_3
    if-eqz v4, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :goto_4
    if-nez v6, :cond_7

    :cond_3
    :goto_5
    if-nez v6, :cond_0

    if-nez p1, :cond_8

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_3

    :cond_6
    if-nez v5, :cond_2

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-gez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge p1, v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_1

    return-object v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isPointerDown(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    shl-int v3, v1, p1

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge p2, v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-eqz v3, :cond_1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_2
    :pswitch_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_2

    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v8, 0x0

    :goto_3
    if-lt v8, v14, :cond_6

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->dragTo(IIII)V

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->reportNewEdgeDrags(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-nez v19, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_4

    goto :goto_4

    :pswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_9

    const/4 v13, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v8, 0x0

    :goto_6
    if-lt v8, v14, :cond_b

    :goto_7
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->releaseViewForPointerUp()V

    goto :goto_5

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v9, v0, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_d

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    goto :goto_7

    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto/16 :goto_2

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->releaseViewForPointerUp()V

    goto :goto_8

    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto/16 :goto_2

    :cond_f
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->dispatchViewReleased(FF)V

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewDragStateChanged(I)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    goto :goto_0
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-eqz v4, :cond_1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    const/16 v24, 0x0

    :goto_3
    return v24

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveInitialMotion(FFI)V

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_4

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    const/4 v10, 0x0

    :goto_5
    move/from16 v0, v16

    if-lt v10, v0, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v6, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v7, v23, v24

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    if-nez v20, :cond_b

    :cond_8
    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_c

    :cond_9
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v7, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->reportNewEdgeDrags(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    if-nez v15, :cond_f

    :cond_a
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v24

    if-eqz v24, :cond_8

    const/4 v15, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v13

    float-to-int v0, v6

    move/from16 v24, v0

    add-int v18, v13, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    float-to-int v0, v6

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v11

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v14

    float-to-int v0, v7

    move/from16 v24, v0

    add-int v19, v14, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    float-to-int v0, v7

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v21

    if-nez v9, :cond_e

    :cond_d
    if-eqz v21, :cond_6

    if-lez v21, :cond_9

    if-eq v12, v14, :cond_6

    goto/16 :goto_7

    :cond_e
    if-lez v9, :cond_9

    if-eq v11, v13, :cond_d

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v24

    if-nez v24, :cond_6

    goto/16 :goto_8

    :pswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto/16 :goto_2

    :cond_10
    const/16 v24, 0x1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, p2, p3, v2, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    goto :goto_0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eq p1, v0, :cond_2

    :cond_0
    if-nez p1, :cond_3

    :cond_1
    return v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    return v2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v2
.end method
