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

.field private static final IGNORE_POINTER_COUNT:I = 0x4

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private mAreaRateCalculating:Z

.field private mAreaRateThreshold:F

.field private mAreaThreshold:F

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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    const v2, 0x45bb8000    # 6000.0f

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    new-instance v2, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v2}, Landroid/view/ScaleGestureDetector$SaveState;-><init>()V

    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_1
    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v1, v5

    if-lez v7, :cond_0

    sub-float v7, v1, v5

    :goto_0
    iput v7, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    sub-float v7, v2, v6

    :goto_1
    iput v7, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    cmpg-float v7, v6, v2

    if-gez v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    :goto_3
    iput v1, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return-void

    :cond_0
    sub-float v7, v5, v1

    goto :goto_0

    :cond_1
    sub-float v7, v6, v2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    if-eqz v4, :cond_8

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_4

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    :cond_4
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_5

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    :cond_5
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_6

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    :cond_6
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v7, v7, v6

    if-gez v7, :cond_7

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    :cond_7
    :goto_5
    add-float/2addr v1, v5

    add-float/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    int-to-float v7, v0

    div-float/2addr v1, v7

    int-to-float v7, v0

    div-float/2addr v2, v7

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

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

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    goto/16 :goto_3
.end method

.method private inAnchoredScaleMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return-void
.end method


# virtual methods
.method public getAreaRateThreshold()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    return v0
.end method

.method public getAreaThreshold()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    return v0
.end method

.method public getCurrentSpan()F
    .locals 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getEnableEdgeZoom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 7

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v3, v4

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_2

    :goto_1
    return v2

    :cond_0
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v3, :cond_1

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    add-float/2addr v2, v1

    goto :goto_1

    :cond_3
    sub-float/2addr v2, v1

    goto :goto_1

    :cond_4
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    :cond_5
    return v2
.end method

.method public getTimeDelta()J
    .locals 4

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isEdgeZoomInProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    :goto_0
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    xor-int/lit8 v1, v4, 0x1

    :goto_1
    const/4 v7, 0x1

    if-eq v0, v7, :cond_1

    const/4 v7, 0x3

    if-ne v0, v7, :cond_6

    :cond_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v0, :cond_2

    if-eqz v6, :cond_8

    :cond_2
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_3
    :goto_3
    if-eqz v6, :cond_8

    const/4 v7, 0x1

    return v7

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move v6, v1

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_3

    :cond_8
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v7, :cond_1a

    const/4 v7, 0x1

    if-eq v0, v7, :cond_9

    const/4 v7, 0x3

    if-ne v0, v7, :cond_b

    :cond_9
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    :cond_a
    :goto_4
    const/4 v7, 0x1

    return v7

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_9

    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v7, :cond_c

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_c

    xor-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_c

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    const/4 v7, 0x2

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_c
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    if-eqz v0, :cond_d

    const/4 v7, 0x6

    if-ne v0, v7, :cond_11

    :cond_d
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_e

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    :cond_e
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_18

    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-nez v7, :cond_f

    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    :cond_f
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    :cond_10
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    div-float v2, v7, v8

    :goto_6
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v7, :cond_16

    iget v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_15

    const/4 v5, 0x1

    :goto_7
    if-eqz v5, :cond_a

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget-wide v8, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v8, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const-string/jumbo v7, "ScaleGestureDetector"

    const-string/jumbo v8, "TwScaleGestureDetector"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    goto/16 :goto_4

    :cond_11
    const/4 v7, 0x5

    if-eq v0, v7, :cond_d

    move v3, v1

    goto/16 :goto_5

    :cond_12
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v2, v7, v8

    goto :goto_6

    :cond_13
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_14

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float v2, v7, v8

    goto :goto_6

    :cond_14
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v2, v7, v8

    goto :goto_6

    :cond_15
    const/4 v5, 0x0

    goto :goto_7

    :cond_16
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v7, :cond_17

    iget v7, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    cmpl-float v7, v2, v7

    if-lez v7, :cond_17

    const/4 v5, 0x1

    goto :goto_7

    :cond_17
    const/4 v5, 0x0

    goto :goto_7

    :cond_18
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    if-eq v0, v7, :cond_19

    const/16 v7, 0xd5

    if-ne v0, v7, :cond_a

    :cond_19
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-wide v8, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v8, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto/16 :goto_4

    :cond_1a
    const/4 v7, 0x2

    if-eq v0, v7, :cond_1b

    const/16 v7, 0xd5

    if-ne v0, v7, :cond_1d

    :cond_1b
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1c

    const/4 v7, 0x1

    return v7

    :cond_1c
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    :goto_8
    iget-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v7, :cond_a

    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget v7, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-wide v8, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v8, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto/16 :goto_4

    :cond_1d
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_8
.end method

.method public semSetUseTwoFingerSweep(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    return-void
.end method

.method public setAreaRateThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAreaRateThreshold:F

    return-void
.end method

.method public setAreaThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAreaThreshold:F

    return-void
.end method

.method public setEnableEdgeZoom(Z)V
    .locals 0

    return-void
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method

.method public setUseTwoFingerSweep(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    return-void
.end method
