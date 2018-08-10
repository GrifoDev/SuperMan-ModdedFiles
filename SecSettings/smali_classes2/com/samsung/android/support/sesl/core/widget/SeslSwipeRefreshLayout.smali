.class public Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SeslSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mActionDown:Z

.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101000e

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    new-array v2, v6, [I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentScrollConsumed:[I

    new-array v2, v6, [I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentOffsetInWindow:[I

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$7;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTouchSlop:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mMediumAnimationDuration:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setWillNotDraw(Z)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->createProgressView()V

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setChildrenDrawingOrderEnabled(Z)V

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42940000    # 74.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    new-instance v2, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    new-instance v2, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    neg-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->moveToStart(F)V

    sget-object v2, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private createProgressView()V
    .locals 3

    const v2, -0x50506

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ensureTarget()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    goto :goto_0
.end method

.method private finishSpinner(F)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->showArrow(Z)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v6, p1, v13

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-double v14, v3

    const-wide v16, 0x3fd999999999999aL    # 0.4

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40400000    # 3.0f

    div-float v2, v13, v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    sub-float v5, v13, v14

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v8, v13

    :goto_0
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v8

    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    div-float/2addr v13, v8

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v14, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v11, v13, v14

    mul-float v13, v8, v11

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v4, v13, v14

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_2

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-eqz v13, :cond_3

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-nez v13, :cond_4

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v13, p1, v13

    if-gez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0x4c

    if-gt v13, v14, :cond_5

    :cond_0
    :goto_4
    const v13, 0x3f51eb85    # 0.82f

    mul-float v9, v3, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const v14, 0x3f51eb85    # 0.82f

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v15, 0x3e800000    # 0.25f

    sub-float/2addr v14, v15

    const/high16 v15, -0x41800000    # -0.25f

    invoke-virtual {v13, v15, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setStartEndTrim(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setArrowScale(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v14, v3

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    const/high16 v13, 0x3fe00000    # 1.75f

    mul-float v7, v3, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v13, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setProgressRotation(F)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v13, v10, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v13, v14

    int-to-float v8, v13

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setScaleY(F)V

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v13, p1, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setAnimationProgress(F)V

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0xff

    if-ge v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto/16 :goto_4
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    if-eq v1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNotify:Z

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startRotateAnimation()V

    goto :goto_0
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;II)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private startDragging(F)V
    .locals 3

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialDownY:F

    sub-float v0, p1, v1

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialDownY:F

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialMotionY:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startRotateAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->start()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNotify:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    goto :goto_1
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    :goto_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$3;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez p1, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    if-eq p2, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    if-ge p2, v0, :cond_2

    return p2

    :cond_0
    return p2

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    return v0

    :cond_2
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method moveToStart(F)V
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mFrom:I

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->reset()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v3, :cond_3

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-nez v3, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_2
    return v5

    :cond_3
    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    goto :goto_0

    :cond_4
    if-ne v0, v7, :cond_6

    :cond_5
    sget-object v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInterceptTouchEvent() refresh cancelled by list scrolling or touch release, mActionDown = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    goto :goto_1

    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-nez v3, :cond_2

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    return v3

    :pswitch_1
    sget-object v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInterceptTouchEvent() ACTION_DOWN >>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialDownY:F

    goto :goto_2

    :cond_8
    return v5

    :pswitch_2
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    if-eq v3, v6, :cond_9

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_a

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-nez v3, :cond_b

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    return v5

    :cond_9
    sget-object v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_a
    return v5

    :cond_b
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startDragging(F)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_2

    :pswitch_4
    sget-object v3, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInterceptTouchEvent() ACTION_UP_CANCEL !!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    iput v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v9, :cond_1

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v9, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingBottom()I

    move-result v10

    sub-int v1, v9, v10

    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getMeasuredWidth()I

    move-result v6

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getMeasuredHeight()I

    move-result v5

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v12, v8, 0x2

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    iget v13, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->layout(IIII)V

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->measure(II)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    :goto_2
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    if-eq v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-gtz p3, :cond_2

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v1, :cond_4

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentScrollConsumed:[I

    aget v1, p4, v4

    sub-int v1, p2, v1

    aget v2, p4, v5

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    return-void

    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-eqz v1, :cond_0

    int-to-float v1, p3

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v5

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    :goto_3
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v2, p3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    aput p3, p4, v5

    goto :goto_3

    :cond_4
    if-lez p3, :cond_1

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    aget v1, p4, v5

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    aget v1, p4, v4

    aget v2, v0, v4

    add-int/2addr v1, v2

    aput v1, p4, v4

    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    goto :goto_2
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int v6, p5, v0

    if-ltz v6, :cond_2

    :cond_0
    if-eqz v6, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-eqz v0, :cond_1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNestedScroll() scroll up then cancelled actiondown event !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_0

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->finishSpinner(F)V

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, -0x1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v4, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    return v6

    :cond_2
    if-nez v0, :cond_0

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-nez v4, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    return v4

    :pswitch_1
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_1

    :pswitch_2
    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-nez v4, :cond_6

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    return v6

    :cond_5
    sget-object v4, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startDragging(F)V

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialMotionY:F

    sub-float v4, v3, v4

    mul-float v1, v4, v7

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_7

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_1

    :cond_7
    return v6

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-ltz v2, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_5
    sget-object v4, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onTouchEvent() ACTION_UP !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-ltz v2, :cond_9

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_a

    :goto_2
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    return v6

    :cond_9
    sget-object v4, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialMotionY:F

    sub-float v4, v3, v4

    mul-float v1, v4, v7

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->finishSpinner(F)V

    goto :goto_2

    :pswitch_6
    sget-object v4, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onTouchEvent() ACTION_CANCEL XXXXXXX"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_3

    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method reset()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setColorViewAlpha(I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_0
.end method

.method setAnimationProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setScaleY(F)V

    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    array-length v3, p1

    new-array v0, v3, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void

    :cond_0
    aget v3, p1, v2

    invoke-static {v1, v3}, Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->reset()V

    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

    return-void
.end method

.method public setOnRefreshListener(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1

    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    iput p3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    return-void
.end method

.method public setRefreshOnce(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setOnAnimationEndCallback(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    new-instance v1, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$2;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setOnAnimationEndCallback(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;)V

    goto :goto_0
.end method

.method public setRefreshing(Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    :goto_1
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNotify:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int v0, v1, v2

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz p1, :cond_2

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->updateSizes(I)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return-void

    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_0
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->bringToFront()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mStartingScale:F

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$4;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_IN_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
