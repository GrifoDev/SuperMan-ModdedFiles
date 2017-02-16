.class public Lcom/samsung/android/animation/SemSweepListAnimator;
.super Lcom/samsung/android/animation/SemAbsSweepListAnimator;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemSweepListAnimator$1;,
        Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;,
        Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE_LOW:Z

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

.field private mListOnTouchListener:Landroid/view/View$OnTouchListener;

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

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimatinFilter()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mPreviousDeltaX:F

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "foregroundViewResId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE:Z

    .line 67
    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    .line 71
    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mEnableSweep:Z

    .line 81
    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    new-instance v0, Lcom/samsung/android/animation/SemSweepListAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemSweepListAnimator$1;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-gtz p3, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Resource ids should be positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    .line 115
    iput p3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundViewResId:I

    .line 116
    iput-object p2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setSweepListAnimator(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    .line 106
    :cond_2
    return-void
.end method

.method private resetSweepAnimatinFilter()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->doRefresh()V

    .line 485
    :cond_0
    return-void
.end method

.method private resetSweepInfo()V
    .locals 2

    .prologue
    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    .line 480
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 477
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->draw(Landroid/graphics/Canvas;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 627
    :cond_1
    return-void
.end method

.method public isSweepAnimatorEnabled()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mEnableSweep:Z

    return v0
.end method

.method public isSwiping()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    return v0
.end method

.method public onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "viewForeground"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 469
    invoke-virtual {p0, p2}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->showForeground(Landroid/view/View;)V

    .line 470
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->resetTouchState()V

    .line 472
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimatinFilter()V

    .line 473
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 467
    return-void
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mActivePointerId:I

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mItemPressed:Z

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    .line 162
    return-void
.end method

.method public onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "viewForeground"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 178
    .local v14, "x":F
    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    sub-float v4, v14, v2

    .line 179
    .local v4, "deltaX":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 184
    .local v9, "deltaXAbs":F
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v2, :cond_8

    .line 187
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-nez v2, :cond_1

    .line 191
    :cond_0
    return-void

    .line 194
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v4, v2

    .line 196
    .local v13, "sweepProgress":F
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowLeftToRight:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_5

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v4, v1}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->doMoveAction(Landroid/view/View;FI)V

    .line 227
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget v5, Lcom/samsung/android/animation/SemSweepListAnimator;->VELOCITY_UNITS:I

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 228
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocityIndex:I

    sget v6, Lcom/samsung/android/animation/SemSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    rem-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    aput v6, v2, v5

    .line 172
    .end local v13    # "sweepProgress":F
    :cond_4
    :goto_1
    return-void

    .line 197
    .restart local v13    # "sweepProgress":F
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowRightToLeft:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    cmpg-float v2, v4, v2

    if-lez v2, :cond_2

    .line 200
    :cond_6
    sget v2, Lcom/samsung/android/animation/SemSweepListAnimator;->mPreviousDeltaX:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    .line 203
    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 204
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 205
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v2}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getBitmapDrawableBound()Landroid/graphics/Rect;

    move-result-object v8

    .line 208
    .local v8, "bitmapDrawableBound":Landroid/graphics/Rect;
    if-eqz v8, :cond_7

    .line 209
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 213
    .local v10, "invalidateBound":Landroid/graphics/Rect;
    if-eqz v10, :cond_7

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimatinFilter()V

    .line 217
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_7

    .line 218
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v10}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 223
    .end local v10    # "invalidateBound":Landroid/graphics/Rect;
    :cond_7
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    goto :goto_0

    .line 229
    .end local v8    # "bitmapDrawableBound":Landroid/graphics/Rect;
    .end local v13    # "sweepProgress":F
    :cond_8
    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v9, v2

    if-lez v2, :cond_4

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    .line 232
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    .line 233
    move/from16 v0, p3

    iput v0, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    .line 234
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_9

    .line 235
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 237
    :cond_9
    sput v4, Lcom/samsung/android/animation/SemSweepListAnimator;->mPreviousDeltaX:F

    .line 239
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 240
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v6

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 240
    invoke-direct {v12, v2, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 245
    .local v12, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    const/4 v5, 0x0

    move/from16 v0, p3

    invoke-interface {v2, v0, v5, v12}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepStart(IFLandroid/graphics/Rect;)Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    .line 246
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-eqz v2, :cond_4

    .line 248
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowLeftToRight:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_c

    .line 252
    :cond_a
    const/4 v3, 0x0

    .line 253
    .local v3, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 254
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 255
    .local v3, "v":Landroid/view/View;
    iput-object v3, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundView:Landroid/view/View;

    .line 260
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_b

    .line 261
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 262
    .local v11, "listViewSelector":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 263
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 266
    .end local v11    # "listViewSelector":Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V

    goto/16 :goto_1

    .line 249
    .end local v3    # "v":Landroid/view/View;
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowRightToLeft:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    cmpg-float v2, v4, v2

    if-lez v2, :cond_a

    .line 269
    :cond_d
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    .line 270
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->setForegroundView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 257
    .local v3, "v":Landroid/view/View;
    :cond_e
    move-object/from16 v3, p2

    .local v3, "v":Landroid/view/View;
    goto :goto_2
.end method

.method public onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "viewForeground"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "isSweepPattern"    # Z

    .prologue
    .line 284
    const/4 v14, 0x0

    .line 285
    .local v14, "x":F
    const/4 v8, 0x0

    .line 287
    .local v8, "animationStarted":Z
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    if-eqz v2, :cond_1

    .line 288
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    .line 289
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    .line 290
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwipingPosition:I

    .line 291
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->resetTouchState()V

    .line 294
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    move/from16 v0, p3

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    .line 298
    :cond_0
    return-void

    .line 301
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-eqz v2, :cond_14

    .line 302
    if-nez p2, :cond_4

    .line 303
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SemSweepListAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SemSweepListAnimator : onActionUp : viewForeground = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SemSweepListAnimator"

    const-string/jumbo v3, "SemSweepListAnimator : **** End onActionUp *****, return #1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_3
    return-void

    .line 308
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v12

    .line 310
    .local v12, "translationX":F
    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 316
    :cond_5
    :goto_0
    iget v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mDownX:F

    sub-float v6, v14, v2

    .line 317
    .local v6, "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 318
    .local v13, "width":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mHistoricalVelocities:[F

    invoke-virtual {p0, v2}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->getAdjustedVelocityX([F)F

    move-result v4

    .line 320
    .local v4, "adjustedVelocityX":F
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "SemSweepListAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SemSweepListAnimator : onActionUp : viewForeground = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_6
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "SemSweepListAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SemSweepListAnimator : onActionUp : adjustedVelocityX = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_7
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "SemSweepListAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SemSweepListAnimator : onActionUp : mScaledTouchSlop = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_8
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "SemSweepListAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SemSweepListAnimator : onActionUp : deltaX = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_9
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "SemSweepListAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SemSweepListAnimator : onActionUp : isSweepPattern = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_a
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "SemSweepListAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SemSweepListAnimator : onActionUp : mSweepAnimationFilter = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    if-nez v2, :cond_f

    .line 328
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "SemSweepListAnimator"

    const-string/jumbo v3, "SemSweepListAnimator : onActionUp : mSweepAnimationFilter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_c
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "SemSweepListAnimator"

    const-string/jumbo v3, "SemSweepListAnimator : **** End onActionUp *****, return #2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_d
    return-void

    .line 312
    .end local v4    # "adjustedVelocityX":F
    .end local v6    # "deltaX":F
    .end local v13    # "width":I
    :cond_e
    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    goto/16 :goto_0

    .line 333
    .restart local v4    # "adjustedVelocityX":F
    .restart local v6    # "deltaX":F
    .restart local v13    # "width":I
    :cond_f
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "SemSweepListAnimator"

    const-string/jumbo v3, "SemSweepListAnimator : onActionUp : create sweepAnimation.. #1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_10
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    .line 335
    iget v5, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mScaledTouchSlop:I

    move-object/from16 v3, p2

    move/from16 v7, p4

    .line 334
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 337
    .local v9, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/samsung/android/animation/SemSweepListAnimator$2;

    move/from16 v0, p3

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$2;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator;I)V

    invoke-virtual {v9, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 419
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_11

    .line 420
    new-instance v2, Lcom/samsung/android/animation/SemSweepListAnimator$3;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v2, p0, v0, v13, v1}, Lcom/samsung/android/animation/SemSweepListAnimator$3;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/view/View;II)V

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    :cond_11
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 437
    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "SemSweepListAnimator"

    const-string/jumbo v3, "SemSweepListAnimator : onActionUp : call animator.start()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_12
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 440
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 441
    .local v11, "listViewSelector":Landroid/graphics/drawable/Drawable;
    instance-of v2, v11, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_13

    .line 442
    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 444
    nop

    nop

    .end local v11    # "listViewSelector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/DrawableContainer;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 446
    .local v10, "currentDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v10, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_13

    .line 448
    nop

    nop

    .end local v10    # "currentDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    .line 453
    :cond_13
    const/4 v8, 0x1

    .line 455
    .end local v4    # "adjustedVelocityX":F
    .end local v6    # "deltaX":F
    .end local v9    # "animator":Landroid/animation/ValueAnimator;
    .end local v12    # "translationX":F
    .end local v13    # "width":I
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->resetTouchState()V

    .line 457
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mSwiping:Z

    if-nez v2, :cond_15

    if-eqz v8, :cond_16

    .line 280
    :cond_15
    :goto_1
    return-void

    .line 459
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimatinFilter()V

    goto :goto_1
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setForegroundViewResId(I)V
    .locals 0
    .param p1, "foregroundViewResId"    # I

    .prologue
    .line 649
    iput p1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mForegroundViewResId:I

    .line 648
    return-void
.end method

.method public setOnSweepListener(Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .line 497
    return-void
.end method

.method public setSweepAnimationType(I)V
    .locals 3
    .param p1, "sweepAnimationType"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    .line 144
    iget v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 146
    :pswitch_0
    new-instance v0, Lcom/samsung/android/animation/SemSweepWaveFilter;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemSweepWaveFilter;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    goto :goto_0

    .line 150
    :pswitch_1
    new-instance v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemSweepTranslationFilter;-><init>(Landroid/widget/ListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSweepAnimatorEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mEnableSweep:Z

    .line 89
    return-void
.end method
