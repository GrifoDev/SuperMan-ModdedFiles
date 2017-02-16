.class abstract Lcom/samsung/android/animation/SemAbsSweepListAnimator;
.super Ljava/lang/Object;
.source "SemAbsSweepListAnimator.java"


# static fields
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

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    .line 59
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;

    .line 61
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sDecel:Landroid/view/animation/Interpolator;

    .line 65
    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->VELOCITY_UNITS:I

    .line 67
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE:Z

    .line 50
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    .line 52
    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    .line 54
    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    .line 56
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    .line 69
    sget v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    .line 71
    iput v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    .line 75
    sget v0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemIdTopMap:Ljava/util/HashMap;

    .line 88
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentFirstVisiblePos:I

    .line 90
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentLastVisiblePos:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    .line 96
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    .line 126
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    .line 128
    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    .line 130
    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    .line 132
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    .line 134
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    .line 136
    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    .line 39
    return-void
.end method

.method private addVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 366
    return-void
.end method

.method private calculateDistanceX(Landroid/view/MotionEvent;)F
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 377
    const/high16 v0, -0x40800000    # -1.0f

    .line 378
    .local v0, "diff":F
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 380
    return v0
.end method

.method private findTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "foregroundView":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 146
    .local v3, "position":I
    iget-object v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 147
    .local v0, "firstPosition":I
    sub-int v4, v3, v0

    .line 149
    .local v4, "wantedChild":I
    iget-object v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 152
    .local v2, "itemView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 153
    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 155
    nop

    nop

    .end local v2    # "itemView":Landroid/view/View;
    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundViewResId:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 162
    .end local v1    # "foregroundView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v1

    .line 158
    .restart local v1    # "foregroundView":Landroid/view/View;
    .restart local v2    # "itemView":Landroid/view/View;
    :cond_1
    move-object v1, v2

    .local v1, "foregroundView":Landroid/view/View;
    goto :goto_0
.end method

.method private getCurrentSweepDirection(I)Ljava/lang/String;
    .locals 1
    .param p1, "sweepDirection"    # I

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "sSweepDirection":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 446
    const-string/jumbo v0, "No direction"

    .line 450
    .local v0, "sSweepDirection":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 438
    .local v0, "sSweepDirection":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "Left to Right"

    .local v0, "sSweepDirection":Ljava/lang/String;
    goto :goto_0

    .line 442
    .local v0, "sSweepDirection":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "Right to Left"

    .local v0, "sSweepDirection":Ljava/lang/String;
    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleTouchCancelEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->initSweepDistanceVariables()V

    .line 342
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_0

    .line 343
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    .line 345
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removePendingCallbacks()V

    .line 347
    const/4 v0, 0x1

    return v0

    .line 350
    :cond_0
    return v1
.end method

.method private handleTouchDownEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 242
    return v2

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->findTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 250
    return v2

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    .line 255
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 256
    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 260
    :cond_2
    return v2

    .line 265
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downX:F

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downY:F

    .line 267
    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionDown(Landroid/view/MotionEvent;)V

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method private handleTouchMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 275
    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v8, :cond_1

    .line 276
    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 277
    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    iget-object v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 278
    :cond_0
    return v10

    .line 281
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v8, :cond_2

    .line 282
    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-boolean v4, v8, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 283
    .local v4, "fastScrollOpened":Z
    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->semGetLastScrollState()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v5, 0x1

    .line 288
    .local v5, "isScrollStateIdle":Z
    :goto_0
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    .line 294
    .end local v4    # "fastScrollOpened":Z
    .end local v5    # "isScrollStateIdle":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upX:F

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upY:F

    .line 297
    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downX:F

    iget v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upX:F

    sub-float v2, v8, v9

    .line 298
    .local v2, "deltaX":F
    iget v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->downY:F

    iget v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->upY:F

    sub-float v3, v8, v9

    .line 300
    .local v3, "deltaY":F
    mul-float v8, v2, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 301
    mul-float v9, v3, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 300
    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 302
    .local v6, "sqrtValue":D
    float-to-double v8, v2

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 306
    .local v0, "cosineValue":D
    iget-boolean v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v8, :cond_5

    .line 308
    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v8, v9}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V

    .line 309
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    .line 310
    return v11

    .line 283
    .end local v0    # "cosineValue":D
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v6    # "sqrtValue":D
    .restart local v4    # "fastScrollOpened":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "isScrollStateIdle":Z
    goto :goto_0

    .line 290
    :cond_4
    return v10

    .line 313
    .end local v4    # "fastScrollOpened":Z
    .end local v5    # "isScrollStateIdle":Z
    .restart local v0    # "cosineValue":D
    .restart local v2    # "deltaX":F
    .restart local v3    # "deltaY":F
    .restart local v6    # "sqrtValue":D
    :cond_5
    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v0

    double-to-int v8, v8

    const/16 v9, 0x23a

    if-ge v8, v9, :cond_6

    .line 316
    iget-object v8, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v9, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v8, v9}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V

    .line 317
    return v11

    .line 321
    :cond_6
    return v10
.end method

.method private handleTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 326
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 328
    .local v1, "currentPointerId":I
    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    if-eqz v3, :cond_0

    .line 329
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->sweepPatternIsIndeedFling(F)Z

    move-result v2

    .line 332
    .local v2, "isSweepPattern":Z
    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V

    .line 334
    .end local v2    # "isSweepPattern":Z
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->initSweepDistanceVariables()V

    .line 324
    return-void
.end method

.method private initSweepDistanceVariables()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 428
    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    .line 429
    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    .line 430
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    .line 431
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    .line 427
    return-void
.end method

.method private isTouchEventSkipped()Z
    .locals 2

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mCurrentPosition:I

    if-eq v0, v1, :cond_1

    .line 360
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method private sweepPatternIsIndeedFling(F)Z
    .locals 5
    .param p1, "velocity"    # F

    .prologue
    const/4 v4, 0x0

    .line 519
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "***** Start sweepPatternIsIndeedFling *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_1

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

    .line 522
    :cond_1
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_2

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

    .line 523
    :cond_2
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_3

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

    .line 525
    :cond_3
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    mul-int/lit8 v0, v1, 0x2

    .line 526
    .local v0, "minimalDistanceThreshold":I
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_4

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

    .line 528
    :cond_4
    cmpl-float v1, p1, v4

    if-lez v1, :cond_8

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 530
    :cond_5
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "sweepPatternIsIndeedFling : SweepDistance is less than minDistance, return false #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_6
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "***** End sweepPatternIsIndeedFling *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_7
    const/4 v1, 0x0

    return v1

    .line 529
    :cond_8
    cmpg-float v1, p1, v4

    if-gez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 534
    :cond_9
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "sweepPatternIsIndeedFling : return true #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_a
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "***** End sweepPatternIsIndeedFling *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method private trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 466
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_2

    .line 467
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : first calling trackSweepDistanceAndDirection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_1

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

    .line 469
    :cond_1
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    .line 472
    :cond_2
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_4

    .line 473
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 474
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : sweep to left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_3
    iput v7, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    .line 476
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    .line 485
    :cond_4
    :goto_0
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    if-eq v1, v2, :cond_e

    .line 486
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    .line 487
    const-string/jumbo v2, "trackSweepDistanceAndDirection : SweepDirection is changed"

    .line 486
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_5
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trackSweepDistanceAndDirection : changed direction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 490
    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    invoke-direct {p0, v3}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->getCurrentSweepDirection(I)Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_6
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    if-ne v1, v7, :cond_b

    .line 493
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    .line 494
    const-string/jumbo v2, "trackSweepDistanceAndDirection : Set mSweepRightDistance = 0"

    .line 493
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_7
    iput v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    .line 502
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .line 504
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    aput v4, v1, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 477
    .end local v0    # "i":I
    :cond_9
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 478
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    const-string/jumbo v2, "trackSweepDistanceAndDirection : sweep to right"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_a
    iput v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    .line 480
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepRightDistance:F

    goto/16 :goto_0

    .line 496
    :cond_b
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    if-nez v1, :cond_8

    .line 497
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    .line 498
    const-string/jumbo v2, "trackSweepDistanceAndDirection : Set mSweepLeftDistance = 0"

    .line 497
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_c
    iput v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepLeftDistance:F

    goto :goto_1

    .line 506
    .restart local v0    # "i":I
    :cond_d
    iput v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    .line 507
    sget-boolean v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "SemAbsSweepListAnimator"

    .line 508
    const-string/jumbo v2, "trackSweepDistanceAndDirection : Clear velocityTracker"

    .line 507
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v0    # "i":I
    :cond_e
    iget v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepDirection:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mPrevSweepDirection:I

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSweepPrevPosX:F

    .line 453
    return-void
.end method


# virtual methods
.method protected getAdjustedVelocityX([F)F
    .locals 7
    .param p1, "mHistoricalVelocities"    # [F

    .prologue
    const/4 v6, 0x0

    .line 541
    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    if-nez v4, :cond_0

    return v6

    .line 543
    :cond_0
    const/4 v1, 0x0

    .line 544
    .local v1, "totalVelocity":F
    const/4 v2, 0x0

    .line 547
    .local v2, "totalWeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    if-ge v0, v4, :cond_2

    .line 548
    iget v4, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v4, v0

    sget v5, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    rem-int/2addr v4, v5

    aget v3, p1, v4

    .line 549
    .local v3, "vel":F
    cmpl-float v4, v3, v6

    if-nez v4, :cond_1

    .line 547
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    .end local v3    # "vel":F
    :cond_2
    int-to-float v4, v2

    div-float v4, v1, v4

    return v4
.end method

.method protected getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 582
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 583
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 584
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 585
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
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

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 587
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
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 172
    const/4 v1, 0x0

    .line 177
    .local v1, "touchConsumed":Z
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->isTouchEventSkipped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    return v4

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->addVelocityTracker(Landroid/view/MotionEvent;)V

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 234
    :cond_1
    :goto_0
    :pswitch_0
    return v4

    .line 187
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchDownEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 191
    .local v0, "isTouchDownValid":Z
    if-nez v0, :cond_1

    .line 194
    return v4

    .line 201
    .end local v0    # "isTouchDownValid":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->calculateDistanceX(Landroid/view/MotionEvent;)F

    move-result v2

    .line 208
    .local v2, "xDiff":F
    iget v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 214
    const/4 v3, 0x1

    return v3

    .line 220
    .end local v2    # "xDiff":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchCancelEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 227
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 184
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
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 390
    .local v0, "touchConsumed":Z
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->isTouchEventSkipped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const/4 v1, 0x0

    return v1

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->addVelocityTracker(Landroid/view/MotionEvent;)V

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 424
    .end local v0    # "touchConsumed":Z
    :goto_0
    :pswitch_0
    return v0

    .line 405
    .restart local v0    # "touchConsumed":Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "touchConsumed":Z
    goto :goto_0

    .line 410
    .local v0, "touchConsumed":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchCancelEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "touchConsumed":Z
    goto :goto_0

    .line 417
    .local v0, "touchConsumed":Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->handleTouchUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 398
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

    .prologue
    const/4 v3, 0x0

    .line 559
    iput-boolean v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    .line 560
    sget v1, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->INVALID_POINTER_ID:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    .line 561
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 562
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    iput v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    .line 558
    return-void
.end method

.method abstract setForegroundViewResId(I)V
.end method

.method protected showForeground(Landroid/view/View;)V
    .locals 1
    .param p1, "viewForeground"    # Landroid/view/View;

    .prologue
    .line 572
    if-nez p1, :cond_0

    return-void

    .line 574
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 575
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 570
    return-void
.end method
