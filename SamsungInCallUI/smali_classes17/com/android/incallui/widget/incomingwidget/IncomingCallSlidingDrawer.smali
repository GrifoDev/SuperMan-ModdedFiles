.class public Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "IncomingCallSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;,
        Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;,
        Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;,
        Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;,
        Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final MAX_OPACITY_BACKGROUND_PANEL:F = 0.3f

.field private static MIN_FLING_THRESHOLD:I = 0x0

.field private static final MIN_FLING_THRESHOLD_FOR_TABLET:I = 0x32

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBackgroundPanel:Landroid/view/View;

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mIsFlingProcessing:Z

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mMinFlingVelocity:I

.field private mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

.field private mOnDrawerCloseListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

.field private mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgTextView:Landroid/widget/TextView;

.field private mStartPointY:F

.field private final mTapThreshold:I

.field private mThresholdY:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    sput v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->MIN_FLING_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v5, "IncomingCallSlidingDrawer"

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    new-instance v5, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    sget-object v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_orientation:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_bottomOffset:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_topOffset:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_allowSingleTap:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAllowSingleTap:Z

    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_animateOnClick:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimateOnClick:Z

    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_handle:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_content:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    if-ne v3, v1, :cond_3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleId:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContentId:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumTapVelocity:I

    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 v5, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->MIN_FLING_THRESHOLD:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->doAnimation()V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->MIN_FLING_THRESHOLD:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMinFlingVelocity:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mIsFlingProcessing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpenByFling()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateCloseByFling()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method private animateClose(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private animateCloseByFling()V
    .locals 4

    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateCloseByFling"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v1, :cond_1

    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateCloseByFling: failed to close"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateClose()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1
.end method

.method private animateOpen(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private animateOpenByFling()V
    .locals 4

    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateOpenByFling"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_1

    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateOpenByFling: failed to open"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->open()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateOpen()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1
.end method

.method private closeDrawer()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "closeDrawer"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->updateHandlerAlphaAndTextColor(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->incrementAnimation()V

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->closeDrawer()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->openDrawer()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    iget-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v4, v6, v7

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    iget v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    mul-float v6, v5, v4

    add-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    iput-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private moveHandle(I)V
    .locals 12

    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    if-ne p1, v9, :cond_0

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v8, :cond_1

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v1, p1, v6

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_2

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_1

    :cond_4
    if-ne p1, v9, :cond_5

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v8, :cond_6

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v0, p1, v4

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_8

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_8
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_7

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "openDrawer"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->updateHandlerAlphaAndTextColor(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 6

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    int-to-float v2, p1

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->stopTracking()V

    return-void

    :cond_2
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iput v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    :cond_5
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iput v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_3

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    iget v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    iget v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8

    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    iget v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    iput-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    iput-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    :goto_2
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->updateHandlerAlphaAndTextColor(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    return-void
.end method

.method private updateHandlerAlphaAndTextColor(Z)V
    .locals 4

    const v3, 0x7f0f00da

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_2

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method


# virtual methods
.method public animateClose()V
    .locals 3

    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateClose"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateClose()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 3

    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateOpen"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpen(I)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateOpen()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpen()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->closeDrawer()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    :cond_6
    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_2
    if-nez v0, :cond_4

    iput-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_3
    iget-boolean v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v4

    float-to-int v9, v6

    sub-int/2addr v9, v4

    iput v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mStartPointY:F

    iput-boolean v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mIsFlingProcessing:Z

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v7, v8

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v3

    float-to-int v9, v5

    sub-int/2addr v9, v3

    iput v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    iget-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v7, p4, p2

    sub-int v6, p5, p3

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    iget-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    iget-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IncomingCallSlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    return v14

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mIsFlingProcessing:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v14, :cond_2

    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mStartPointY:F

    float-to-int v14, v14

    float-to-int v15, v7

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v4

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-nez v14, :cond_4

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_1f

    :cond_4
    const/4 v14, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    if-ge v4, v14, :cond_6

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    const v15, 0x3e99999a    # 0.3f

    mul-float v3, v14, v15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v14, :cond_5

    const v14, 0x3e99999a    # 0.3f

    sub-float v3, v14, v3

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    invoke-virtual {v14, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->updateHandlerAlphaAndTextColor(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v14, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    :goto_2
    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    if-ge v4, v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->open()V

    :goto_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->stopTracking()V

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v10, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v13

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v11, :cond_11

    const/4 v14, 0x0

    cmpg-float v14, v13, v14

    if-gez v14, :cond_10

    const/4 v6, 0x1

    :goto_4
    const/4 v14, 0x0

    cmpg-float v14, v12, v14

    if-gez v14, :cond_b

    neg-float v12, v12

    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v14, v14

    cmpl-float v14, v12, v14

    if-lez v14, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v12, v14

    :cond_c
    :goto_5
    float-to-double v14, v12

    float-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    double-to-float v9, v14

    if-eqz v6, :cond_d

    neg-float v9, v9

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v15, v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1d

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v14, v15

    if-lt v8, v14, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v14, v15

    if-le v8, v14, :cond_16

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v14, :cond_1a

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->playSoundEffect(I)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v14, :cond_18

    if-eqz v11, :cond_17

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v14, 0x0

    cmpg-float v14, v12, v14

    if-gez v14, :cond_13

    const/4 v6, 0x1

    :goto_7
    const/4 v14, 0x0

    cmpg-float v14, v13, v14

    if-gez v14, :cond_12

    neg-float v13, v13

    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v14, v14

    cmpl-float v14, v13, v14

    if-lez v14, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v13, v14

    goto/16 :goto_5

    :cond_13
    const/4 v6, 0x0

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v14, v15

    if-lt v5, v14, :cond_f

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v14, v15

    if-gt v5, v14, :cond_f

    :cond_16
    if-eqz v11, :cond_1c

    :goto_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    :cond_17
    move v8, v5

    goto :goto_6

    :cond_18
    if-eqz v11, :cond_19

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    :cond_19
    move v8, v5

    goto :goto_9

    :cond_1a
    if-eqz v11, :cond_1b

    :goto_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    :cond_1b
    move v8, v5

    goto :goto_a

    :cond_1c
    move v8, v5

    goto :goto_8

    :cond_1d
    if-eqz v11, :cond_1e

    :goto_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    :cond_1e
    move v8, v5

    goto :goto_b

    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 2

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "open"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->openDrawer()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->requestLayout()V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public registerDetector(Landroid/content/Context;)V
    .locals 5

    const-string v3, "IncomingCallSlidingDrawer"

    const-string v4, "registerDetector..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v3, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMinFlingVelocity:I

    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    return-void
.end method

.method public setBackgroundPanel(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    return-void
.end method

.method public setLinearLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setOnDrawerAnimateListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->openDrawer()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->requestLayout()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    return-void
.end method

.method public unregisterDetector()V
    .locals 2

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "unregisterDetector..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method
