.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$SaveState;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private AREA_RATE_THRESHOLD:F

.field private AREA_THRESHOLD:F

.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private mAreaRateCalculating:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrLenBeforeSqrt:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevLenBeforeSqrt:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private final mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

.field private mStylusScaleEnabled:Z

.field private mTempLenBeforeSqrt:F

.field private mUpdatePrevious:Z

.field private mUseTwoFingerSweep:Z


# direct methods
.method static synthetic -get0(Landroid/view/ScaleGestureDetector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Landroid/view/ScaleGestureDetector;I)I
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return p1
.end method

.method static synthetic -set1(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return p1
.end method

.method static synthetic -set2(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 134
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    .line 135
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    .line 153
    const v2, 0x45bb8000    # 6000.0f

    iput v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    .line 154
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    .line 155
    new-instance v2, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v2}, Landroid/view/ScaleGestureDetector$SaveState;-><init>()V

    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 161
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 218
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 222
    .local v0, "res":Landroid/content/res/Resources;
    iget v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    .line 223
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 226
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    .line 227
    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 230
    :cond_0
    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    .line 231
    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    .line 217
    :cond_1
    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "bInitialized":Z
    const/4 v2, 0x0

    .local v2, "focusX":F
    const/4 v3, 0x0

    .line 378
    .local v3, "focusY":F
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    .line 380
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 384
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 385
    .local v6, "y":F
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 386
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 387
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v2, v5

    if-lez v7, :cond_0

    sub-float v7, v2, v5

    :goto_0
    iput v7, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    .line 388
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v3, v6

    if-lez v7, :cond_1

    sub-float v7, v3, v6

    :goto_1
    iput v7, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    .line 389
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 390
    cmpg-float v7, v6, v3

    if-gez v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    .line 431
    .end local v5    # "x":F
    .end local v6    # "y":F
    :goto_3
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 432
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 373
    return-void

    .line 387
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :cond_0
    sub-float v7, v5, v2

    goto :goto_0

    .line 388
    :cond_1
    sub-float v7, v6, v3

    goto :goto_1

    .line 390
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 392
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 393
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v1, :cond_9

    .line 395
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 396
    .restart local v5    # "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 398
    .restart local v6    # "y":F
    if-eqz v0, :cond_8

    .line 399
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_4

    .line 400
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 402
    :cond_4
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_5

    .line 403
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 405
    :cond_5
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_6

    .line 406
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 408
    :cond_6
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v7, v7, v6

    if-gez v7, :cond_7

    .line 409
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 419
    :cond_7
    :goto_5
    add-float/2addr v2, v5

    .line 420
    add-float/2addr v3, v6

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 412
    :cond_8
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 413
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 414
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 415
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 416
    const/4 v0, 0x1

    goto :goto_5

    .line 423
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_9
    int-to-float v7, v1

    div-float/2addr v2, v7

    .line 424
    int-to-float v7, v1

    div-float/2addr v3, v7

    .line 425
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    .line 426
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    .line 427
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 428
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v10, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 427
    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    goto/16 :goto_3
.end method

.method private inAnchoredScaleMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 443
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 438
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    .line 439
    iput v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 435
    return-void
.end method


# virtual methods
.method public getAreaRateThreshold()F
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    return v0
.end method

.method public getAreaThreshold()F
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrentSpan()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getEnableEdgeZoom()Z
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 650
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 621
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 626
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v0, 0x1

    .line 628
    .local v0, "scaleUp":Z
    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v3, v4

    .line 629
    .local v1, "spanDiff":F
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2

    :goto_1
    return v2

    .line 627
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_0
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v3, :cond_1

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .restart local v0    # "scaleUp":Z
    goto :goto_0

    .end local v0    # "scaleUp":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "scaleUp":Z
    goto :goto_0

    .line 629
    .restart local v1    # "spanDiff":F
    :cond_2
    if-eqz v0, :cond_3

    add-float/2addr v2, v1

    goto :goto_1

    :cond_3
    sub-float/2addr v2, v1

    goto :goto_1

    .line 631
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_4
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    :cond_5
    return v2
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    .line 641
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isEdgeZoomInProgress()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 254
    .local v0, "action":I
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v7, :cond_0

    .line 255
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_5

    const/4 v4, 0x1

    .line 262
    .local v4, "isStylusButtonDown":Z
    :goto_0
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    if-eqz v4, :cond_6

    :cond_1
    const/4 v1, 0x0

    .line 263
    .local v1, "anchoredScaleCancelled":Z
    :goto_1
    const/4 v7, 0x1

    if-eq v0, v7, :cond_2

    .line 264
    const/4 v7, 0x3

    if-ne v0, v7, :cond_7

    .line 263
    :cond_2
    const/4 v6, 0x1

    .line 266
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v6, :cond_9

    .line 270
    :cond_3
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v7, :cond_8

    .line 271
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 272
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 273
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 279
    :cond_4
    :goto_3
    if-eqz v6, :cond_9

    .line 280
    const/4 v7, 0x1

    return v7

    .line 259
    .end local v1    # "anchoredScaleCancelled":Z
    .end local v4    # "isStylusButtonDown":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "isStylusButtonDown":Z
    goto :goto_0

    .line 262
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "anchoredScaleCancelled":Z
    goto :goto_1

    .line 264
    :cond_7
    move v6, v1

    .local v6, "streamComplete":Z
    goto :goto_2

    .line 274
    .end local v6    # "streamComplete":Z
    :cond_8
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 275
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 276
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_3

    .line 285
    :cond_9
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v7, :cond_1d

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_a

    const/4 v7, 0x1

    if-ne v0, v7, :cond_c

    .line 287
    :cond_a
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 370
    :cond_b
    :goto_4
    const/4 v7, 0x1

    return v7

    .line 286
    :cond_c
    const/4 v7, 0x3

    if-eq v0, v7, :cond_a

    .line 289
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v7, :cond_d

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 296
    :cond_d
    :goto_5
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 298
    if-eqz v0, :cond_e

    .line 299
    const/4 v7, 0x6

    if-ne v0, v7, :cond_13

    .line 298
    :cond_e
    const/4 v3, 0x1

    .line 302
    .local v3, "configChanged":Z
    :goto_6
    if-eqz v3, :cond_f

    .line 303
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 304
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 305
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    .line 308
    :cond_f
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1b

    .line 309
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-nez v7, :cond_10

    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v7, :cond_14

    .line 313
    :cond_10
    :goto_7
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v7, :cond_11

    .line 314
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 318
    :cond_11
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v7, :cond_16

    .line 319
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    .line 320
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    :goto_8
    div-float v2, v7, v8

    .line 326
    .local v2, "areaRate":F
    :goto_9
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v7, :cond_19

    iget v7, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_18

    const/4 v5, 0x1

    .line 328
    .local v5, "scaleDecision":Z
    :goto_a
    if-eqz v5, :cond_b

    .line 329
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 330
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 331
    iget-wide v8, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v8, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 332
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 333
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 334
    const-string/jumbo v7, "ScaleGestureDetector"

    const-string/jumbo v8, "TwScaleGestureDetector"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    goto/16 :goto_4

    .line 289
    .end local v2    # "areaRate":F
    .end local v3    # "configChanged":Z
    .end local v5    # "scaleDecision":Z
    :cond_12
    if-nez v6, :cond_d

    if-eqz v4, :cond_d

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 293
    const/4 v7, 0x2

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto/16 :goto_5

    .line 300
    :cond_13
    const/4 v7, 0x5

    if-eq v0, v7, :cond_e

    move v3, v1

    goto/16 :goto_6

    .line 310
    .restart local v3    # "configChanged":Z
    :cond_14
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    .line 311
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    goto/16 :goto_7

    .line 320
    :cond_15
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    goto :goto_8

    .line 322
    :cond_16
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_17

    .line 323
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    :goto_b
    div-float v2, v7, v8

    .restart local v2    # "areaRate":F
    goto :goto_9

    .end local v2    # "areaRate":F
    :cond_17
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    goto :goto_b

    .line 326
    .restart local v2    # "areaRate":F
    :cond_18
    const/4 v5, 0x0

    goto :goto_a

    .line 327
    :cond_19
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v7, :cond_1a

    iget v7, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1a

    const/4 v5, 0x1

    goto/16 :goto_a

    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 338
    .end local v2    # "areaRate":F
    :cond_1b
    const/4 v7, 0x2

    if-eq v0, v7, :cond_1c

    const/16 v7, 0xd5

    if-ne v0, v7, :cond_b

    .line 339
    :cond_1c
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v7, :cond_b

    .line 340
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 341
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 342
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 343
    iget-wide v8, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v8, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto/16 :goto_4

    .line 349
    .end local v3    # "configChanged":Z
    :cond_1d
    const/4 v7, 0x2

    if-eq v0, v7, :cond_1e

    const/16 v7, 0xd5

    if-ne v0, v7, :cond_20

    .line 350
    :cond_1e
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 351
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1f

    const/4 v7, 0x1

    return v7

    .line 352
    :cond_1f
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 353
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 354
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    .line 356
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 362
    :goto_c
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v7, :cond_b

    .line 363
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 364
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 365
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 366
    iget-wide v8, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v8, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto/16 :goto_4

    .line 358
    :cond_20
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 359
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_c
.end method

.method public semSetUseTwoFingerSweep(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 724
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    .line 723
    return-void
.end method

.method public setAreaRateThreshold(F)V
    .locals 0
    .param p1, "areaRate"    # F

    .prologue
    .line 674
    iput p1, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    .line 673
    return-void
.end method

.method public setAreaThreshold(F)V
    .locals 0
    .param p1, "threshold"    # F

    .prologue
    .line 658
    iput p1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    .line 657
    return-void
.end method

.method public setEnableEdgeZoom(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 699
    return-void
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4
    .param p1, "scales"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 454
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    .line 456
    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 477
    .local v0, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 478
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 452
    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0
    .param p1, "scales"    # Z

    .prologue
    .line 498
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    .line 497
    return-void
.end method

.method public setUseTwoFingerSweep(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 712
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    .line 711
    return-void
.end method
