.class public Lcom/samsung/android/animation/SemSweepListAnimator;
.super Lcom/samsung/android/animation/SemAbsSweepListAnimator;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;,
        Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE_LOW:Z

.field private static final FADEOUT_DURATION:I = 0x12c

.field public static final SWEEP_ANIMATION_TRANSLATION:I = 0x2

.field public static final SWEEP_ANIMATION_WAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemSweepListAnimator"

.field private static mPreviousDeltaX:F

.field private static mSkipActionUpAnimation:Z


# instance fields
.field private final DEBUGGABLE:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

.field private mEnableSweep:Z

.field private mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

.field private mSweepAnimationType:I

.field private mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

.field private mViewToRemovePosition:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/animation/SemSweepListAnimator;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimationFilter()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mPreviousDeltaX:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE:Z

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mEnableSweep:Z

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Resource ids should be positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mScaledTouchSlop:I

    iput p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mForegroundViewResId:I

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSweepListAnimator(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    :cond_2
    return-void
.end method

.method private resetSweepAnimationFilter()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->doRefresh()V

    :cond_0
    return-void
.end method

.method private resetSweepInfo()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwipingPosition:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public isSweepAnimatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mEnableSweep:Z

    return v0
.end method

.method public isSwiping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    return v0
.end method

.method public onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/samsung/android/animation/SemSweepListAnimator;->showForeground(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetTouchState()V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimationFilter()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    return-void
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mActivePointerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mItemPressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mDownX:F

    return-void
.end method

.method public onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mDownX:F

    sub-float v2, v10, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_8

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowLeftToRight:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v0, p2, v2, p3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->doMoveAction(Landroid/view/View;FI)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget v3, Lcom/samsung/android/animation/SemSweepListAnimator;->VELOCITY_UNITS:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mHistoricalVelocities:[F

    iget v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mHistoricalVelocityIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mHistoricalVelocityIndex:I

    sget v4, Lcom/samsung/android/animation/SemSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    rem-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    aput v4, v0, v3

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowRightToLeft:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-lez v0, :cond_2

    :cond_6
    sget v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mPreviousDeltaX:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getBitmapDrawableBound()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimationFilter()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mScaledTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mDownX:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    iput p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwipingPosition:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removePendingCallbacks()V

    :cond_9
    sput v2, Lcom/samsung/android/animation/SemSweepListAnimator;->mPreviousDeltaX:F

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v9, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    const/4 v3, 0x0

    invoke-interface {v0, p3, v3, v9}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepStart(IFLandroid/graphics/Rect;)Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowLeftToRight:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_c

    :cond_a
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mForegroundView:Landroid/view/View;

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setPressed(Z)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowRightToLeft:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-lez v0, :cond_a

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    sget-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "SemSweepListAnimator"

    const-string/jumbo v3, "onActionMove : send onSweepEnd #4"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    const/4 v3, 0x0

    invoke-interface {v0, p3, v3}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->setForegroundView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_f
    move-object v1, p2

    goto :goto_2
.end method

.method public onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x0

    sget-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwipingPosition:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetTouchState()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v2}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    move/from16 v0, p3

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    if-eqz v1, :cond_b

    if-nez p2, :cond_3

    sget-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActionUp : viewForeground = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "**** End onActionUp *****, return #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iget v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mDownX:F

    sub-float v5, v12, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mHistoricalVelocities:[F

    invoke-virtual {p0, v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->getAdjustedVelocityX([F)F

    move-result v3

    sget-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActionUp : viewForeground = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActionUp : adjustedVelocityX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActionUp : mScaledTouchSlop = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mScaledTouchSlop:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActionUp : deltaX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActionUp : isSweepPattern = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActionUp : mSweepAnimationFilter = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "onActionUp : mSweepAnimationFilter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "**** End onActionUp *****, return #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    sget-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "onActionUp : create sweepAnimation.. #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    iget v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mScaledTouchSlop:I

    move-object v2, p2

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;

    move/from16 v0, p3

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$1;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator;I)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v1, :cond_8

    new-instance v1, Lcom/samsung/android/animation/SemSweepListAnimator$2;

    move/from16 v0, p3

    invoke-direct {v1, p0, p2, v11, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$2;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/view/View;II)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    sget-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "onActionUp : call animator.start()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    instance-of v1, v10, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    check-cast v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    instance-of v1, v9, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_a

    check-cast v9, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    :cond_a
    const/4 v7, 0x1

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetTouchState()V

    iget-boolean v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    if-nez v1, :cond_c

    xor-int/lit8 v1, v7, 0x1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimationFilter()V

    :cond_c
    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setForegroundViewResId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mForegroundViewResId:I

    return-void
.end method

.method public setOnSweepListener(Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    return-void
.end method

.method public setSweepAnimationType(I)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    iget v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/samsung/android/animation/SemSweepWaveFilter;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemSweepWaveFilter;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemSweepTranslationFilter;-><init>(Landroid/widget/ListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSweepAnimatorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mEnableSweep:Z

    return-void
.end method
