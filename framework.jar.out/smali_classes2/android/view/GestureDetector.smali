.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SAFE_DEBUG:Z

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I

.field private static sCfmsService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/view/GestureDetector;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1

    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic -get4(Landroid/view/GestureDetector;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method static synthetic -set0(Landroid/view/GestureDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/view/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/GestureDetector;->DEBUG:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/view/GestureDetector;->SAFE_DEBUG:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    const/4 v0, 0x0

    sput-object v0, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :cond_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz p3, :cond_3

    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    :goto_0
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_1
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/GestureDetector$OnContextClickListener;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    :cond_2
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    return-void

    :cond_3
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method private cancel()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    return-void
.end method

.method private cancelTaps()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    sget-boolean v0, Landroid/view/GestureDetector;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GestureDetector"

    const-string/jumbo v1, "GD onLP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    iget-object v4, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    move v2, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    :goto_0
    mul-int v4, v3, v3

    iput v4, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    mul-int v4, v2, v2

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    mul-int v4, v1, v1

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v6, 0x0

    iget-boolean v7, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v7, :cond_0

    return v6

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v0, v8, v10

    sget v7, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-gtz v7, :cond_1

    sget v7, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-gez v7, :cond_2

    :cond_1
    return v6

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v2, v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v3, v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_5

    const/4 v5, 0x0

    :goto_1
    mul-int v7, v2, v2

    mul-int v8, v3, v3

    add-int/2addr v7, v8

    if-ge v7, v5, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    iget v5, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    goto :goto_1
.end method

.method private triggerGDBoost(IFF)V
    .locals 6

    :try_start_0
    sget-object v2, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v2, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/GestureDetector;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v3, "GESTURE_DETECTED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    iget-object v1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    if-eq v0, v5, :cond_2

    if-ne v0, v4, :cond_1

    :cond_2
    iget-object v1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    return v3

    :pswitch_1
    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v1, :cond_1

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    :cond_3
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    iput-boolean v3, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    if-nez v39, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v6, 0xff

    move/from16 v39, v0

    const/16 v40, 0x6

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    const/16 v24, 0x1

    :goto_0
    if-eqz v24, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v39

    and-int/lit8 v39, v39, 0x8

    if-eqz v39, :cond_4

    const/16 v22, 0x1

    :goto_2
    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v0, v7, :cond_6

    move/from16 v0, v27

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    :cond_3
    const/16 v27, -0x1

    goto :goto_1

    :cond_4
    const/16 v22, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v39

    add-float v29, v29, v39

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v39

    add-float v30, v30, v39

    goto :goto_4

    :cond_6
    if-eqz v24, :cond_9

    add-int/lit8 v12, v7, -0x1

    :goto_5
    int-to-float v0, v12

    move/from16 v39, v0

    div-float v15, v29, v39

    int-to-float v0, v12

    move/from16 v39, v0

    div-float v16, v30, v39

    const/16 v18, 0x0

    and-int/lit16 v0, v6, 0xff

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_0

    :cond_7
    :goto_6
    :pswitch_0
    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    if-eqz v39, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_8
    return v18

    :cond_9
    move v12, v7

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mDownFocusY:F

    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    goto :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mDownFocusY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3e8

    move-object/from16 v0, v39

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v38

    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_7

    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v39

    mul-float v35, v36, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v39

    mul-float v37, v38, v39

    add-float v13, v35, v37

    const/16 v39, 0x0

    cmpg-float v39, v13, v39

    if-gez v39, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    if-eqz v39, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_11

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v39

    if-eqz v39, :cond_11

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    invoke-interface/range {v39 .. v40}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v39

    or-int v18, v18, v39

    sget-boolean v39, Landroid/view/GestureDetector;->SAFE_DEBUG:Z

    if-eqz v39, :cond_d

    const-string/jumbo v39, "GestureDetector"

    const-string/jumbo v40, "GD onDT"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->triggerGDBoost(IFF)V

    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mDownFocusY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/MotionEvent;->recycle()V

    :cond_f
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v39, v0

    if-eqz v39, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v40

    sget v42, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    const/16 v42, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v40

    sget v42, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    const/16 v42, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v39

    or-int v18, v18, v39

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    sget v40, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const/16 v42, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v39, v0

    if-nez v39, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    move/from16 v39, v0

    if-nez v39, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v39, v0

    sub-float v25, v39, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v39, v0

    sub-float v26, v39, v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v39, v0

    if-eqz v39, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v39, v0

    if-eqz v39, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v39, v0

    sub-float v39, v15, v39

    move/from16 v0, v39

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    move/from16 v39, v0

    sub-float v39, v16, v39

    move/from16 v0, v39

    float-to-int v10, v0

    mul-int v39, v9, v9

    mul-int v40, v10, v10

    add-int v11, v39, v40

    if-eqz v22, :cond_14

    const/16 v28, 0x0

    :goto_9
    move/from16 v0, v28

    if-le v11, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v18

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    if-eqz v22, :cond_15

    const/4 v14, 0x0

    :goto_a
    if-le v11, v14, :cond_7

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v28, v0

    goto :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    goto :goto_a

    :cond_16
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    cmpl-float v39, v39, v40

    if-gez v39, :cond_17

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    cmpl-float v39, v39, v40

    if-ltz v39, :cond_7

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v18

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    goto/16 :goto_6

    :pswitch_5
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->triggerGDBoost(IFF)V

    :cond_18
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/MotionEvent;->recycle()V

    :cond_19
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1a
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_b

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    move/from16 v39, v0

    xor-int/lit8 v39, v39, 0x1

    if-eqz v39, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    move/from16 v39, v0

    if-eqz v39, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    if-eqz v39, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    sget-boolean v39, Landroid/view/GestureDetector;->SAFE_DEBUG:Z

    if-eqz v39, :cond_18

    const-string/jumbo v39, "GestureDetector"

    const-string/jumbo v40, "GD onSTC#2"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    move/from16 v39, v0

    if-nez v39, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    const/16 v40, 0x3e8

    move-object/from16 v0, v32

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v34

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v33

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v39, v39, v40

    if-gtz v39, :cond_1e

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(F)F

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v39, v39, v40

    if-lez v39, :cond_18

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v18

    const/16 v39, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->triggerGDBoost(IFF)V

    goto/16 :goto_b

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method
