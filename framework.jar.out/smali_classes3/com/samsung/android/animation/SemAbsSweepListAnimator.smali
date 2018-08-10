.class abstract Lcom/samsung/android/animation/SemAbsSweepListAnimator;
.super Ljava/lang/Object;
.source "SemAbsSweepListAnimator.java"


# static fields
.field private static final COSINE_VALUE_THESHOLD:F = 0.57f

.field private static final DEBUGGABLE_LOW:Z

.field private static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field protected static HISTORICAL_VELOCITY_COUNT:I = 0x0

.field private static INVALID_POINTER_ID:I = 0x0

.field protected static final MOVE_DURATION:I = 0x96

.field protected static final SWIPE_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SemAbsSweepListAnimator"

.field protected static VELOCITY_UNITS:I

.field protected static sAccelDecel:Landroid/view/animation/Interpolator;

.field protected static sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private final DEBUGGABLE:Z

.field private SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

.field private downX:F

.field private downY:F

.field protected mActivePointerId:I

.field protected mCurrentFirstVisiblePos:I

.field protected mCurrentLastVisiblePos:I

.field protected mCurrentPosition:I

.field protected mDownX:F

.field protected mForegroundView:Landroid/view/View;

.field protected mForegroundViewResId:I

.field protected mHistoricalVelocities:[F

.field protected mHistoricalVelocityIndex:I

.field protected mItemIdTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemPressed:Z

.field protected mListView:Landroid/widget/ListView;

.field private mPrevSweepDirection:I

.field protected mScaledTouchSlop:I

.field private mSweepDirection:I

.field private mSweepLeftDistance:F

.field private mSweepPrevPosX:F

.field private mSweepRightDistance:F

.field protected mSwiping:Z

.field protected mSwipingPosition:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mViewToRemoveFg:Landroid/view/View;

.field private upX:F

.field private upY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sDecel:Landroid/view/animation/Interpolator;

    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->VELOCITY_UNITS:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE:Z

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    sget v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    iput v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    sget v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemIdTopMap:Ljava/util/HashMap;

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentFirstVisiblePos:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentLastVisiblePos:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    return-void
.end method

.method private addVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private calculateDistanceX(Landroid/view/MotionEvent;)F
    .locals 3

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private findTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v4, v3, v0

    iget-object v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundViewResId:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private getCurrentSweepDirection(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "No direction"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "Left to Right"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "Right to Left"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleTouchCancelEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->initSweepDistanceVariables()V

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removePendingCallbacks()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private handleTouchDownEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->findTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downY:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionDown(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private handleTouchMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v9

    if-le v8, v9, :cond_1

    :cond_0
    return v10

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-boolean v4, v8, Landroid/widget/ListView;->mSemFastScrollEffectState:Z

    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->semGetLastScrollState()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v5, 0x1

    :goto_0
    if-nez v4, :cond_2

    xor-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_4

    :cond_2
    return v10

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upY:F

    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downX:F

    iget v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upX:F

    sub-float v2, v8, v9

    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downY:F

    iget v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upY:F

    sub-float v3, v8, v9

    mul-float v8, v2, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float v9, v3, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    float-to-double v8, v2

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-boolean v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v8, v9}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    return v11

    :cond_5
    const-wide v8, 0x3fe23d70a0000000L    # 0.5699999928474426

    cmpg-double v8, v0, v8

    if-gez v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v8, v9}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V

    return v11

    :cond_6
    return v10
.end method

.method private handleTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sweepPatternIsIndeedFling(F)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V

    :cond_0
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->initSweepDistanceVariables()V

    return-void

    :cond_1
    const-string/jumbo v3, "SemAbsSweepListAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleTouchUpEvent : event.getAction() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", currentPointerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mActivePointerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mItemPressed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mSwiping = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SemAbsSweepListAnimator"

    const-string/jumbo v4, "handleTouchUpEvent : call onActionCancel to remove remaining sweepBitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method private initSweepDistanceVariables()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    return-void
.end method

.method private isTouchEventSkipped()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private sweepPatternIsIndeedFling(F)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "***** Start sweepPatternIsIndeedFling *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sweepPatternIsIndeedFling : velocity ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sweepPatternIsIndeedFling : mSweepRightDistance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sweepPatternIsIndeedFling : mSweepLeftDistance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    mul-int/lit8 v0, v1, 0x2

    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sweepPatternIsIndeedFling : minimalDistanceThreshold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    cmpl-float v1, p1, v4

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    :cond_2
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "sweepPatternIsIndeedFling : SweepDistance is less than minDistance, return false #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "***** End sweepPatternIsIndeedFling *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    return v1

    :cond_4
    cmpg-float v1, p1, v4

    if-gez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    :cond_5
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "sweepPatternIsIndeedFling : return true #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "***** End sweepPatternIsIndeedFling *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method private trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : first calling trackSweepDistanceAndDirection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trackSweepDistanceAndDirection : mSweepPrevPosX is set to mDownX, mSweepPrevPosX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    :cond_1
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : sweep to left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput v7, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    :cond_3
    :goto_0
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    if-eq v1, v2, :cond_c

    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : SweepDirection is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trackSweepDistanceAndDirection : changed direction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    invoke-direct {p0, v3}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->getCurrentSweepDirection(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    if-ne v1, v7, :cond_9

    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : Set mSweepRightDistance = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : sweep to right"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : Set mSweepLeftDistance = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    goto :goto_1

    :cond_b
    iput v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : Clear velocityTracker"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    return-void
.end method


# virtual methods
.method protected getAdjustedVelocityX([F)F
    .locals 8

    const/4 v7, 0x0

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    if-nez v5, :cond_0

    return v7

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget v5, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    if-ge v1, v5, :cond_2

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v5, v1

    sget v6, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    rem-int/2addr v5, v6

    aget v4, p1, v5

    cmpl-float v5, v4, v7

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    int-to-float v5, v3

    div-float v5, v2, v5

    return v5
.end method

.method protected getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method abstract onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;)V
.end method

.method abstract onActionDown(Landroid/view/MotionEvent;)V
.end method

.method abstract onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V
.end method

.method abstract onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->isTouchEventSkipped()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->addVelocityTracker(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchDownEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->calculateDistanceX(Landroid/view/MotionEvent;)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    return v2

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchCancelEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->isTouchEventSkipped()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->addVelocityTracker(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchCancelEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected resetTouchState()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    sget v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    return-void
.end method

.method abstract setForegroundViewResId(I)V
.end method

.method protected showForeground(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
