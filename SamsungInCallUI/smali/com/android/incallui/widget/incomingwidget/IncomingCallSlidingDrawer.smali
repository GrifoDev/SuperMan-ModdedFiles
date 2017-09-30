.class public Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;
.super Landroid/view/ViewGroup;


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
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "IncomingCallSlidingDrawer"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    sget-object v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_orientation:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    sget v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_bottomOffset:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    sget v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_topOffset:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sget v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_allowSingleTap:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAllowSingleTap:Z

    sget v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_animateOnClick:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimateOnClick:Z

    sget v0, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_handle:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_content:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content and handle attributes must refer to different children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleId:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContentId:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumTapVelocity:I

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 v1, 0x44fa0000    # 2000.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

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

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "animateCloseByFling"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "animateCloseByFling: failed to close"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateClose()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

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

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "animateOpenByFling"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "animateOpenByFling: failed to open"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->open()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateOpen()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

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
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBackKey(Landroid/app/Activity;Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_3

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
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    iget v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private moveHandle(I)V
    .locals 8

    const/4 v7, 0x0

    const/16 v3, -0x2711

    const/16 v2, -0x2712

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_4

    if-ne p1, v3, :cond_0

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v2, :cond_1

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v0, p1, v2

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    if-ge p1, v3, :cond_3

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v0, v2

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3, v7, v1, v4, v0}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_2

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_4
    if-ne p1, v3, :cond_5

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, p1, v2

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    if-ge p1, v3, :cond_8

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v0, v2

    :cond_7
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v7, v0, v2}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_7

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

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
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBackKey(Landroid/app/Activity;Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 5

    const/16 v4, 0x3e8

    const/4 v2, 0x0

    int-to-float v0, p1

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v0, v1

    if-le p1, v0, :cond_3

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->stopTracking()V

    return-void

    :cond_2
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_4
    if-nez p3, :cond_7

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHeight()I

    move-result v0

    :goto_2
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_7

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_7

    :cond_5
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v6, v1, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 6

    const/16 v4, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v0, v3

    :goto_1
    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    iput-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    iput-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

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

    const v3, 0x7f0e0118

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_2

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

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
    .locals 2

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "animateClose"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose(I)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateClose()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "animateOpen"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpen(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateOpen()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

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
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v1, :cond_6

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v5, :cond_5

    move v1, v0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

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
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-nez v7, :cond_2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-nez v2, :cond_4

    iput-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    float-to-int v3, v4

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mStartPointY:F

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mIsFlingProcessing:Z

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    float-to-int v3, v3

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v0, p4, p2

    sub-int v2, p5, p3

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    sub-int/2addr v0, v4

    div-int/lit8 v1, v0, 0x2

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    :goto_1
    const/4 v2, 0x0

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int v2, v1, v4

    add-int v4, v0, v5

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_1
    sub-int v0, v2, v5

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    :goto_3
    sub-int v1, v2, v5

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v2, v4

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    :cond_3
    sub-int/2addr v0, v4

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IncomingCallSlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v3, v0

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/view/View;->measure(II)V

    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const v5, 0x3e99999a    # 0.3f

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mIsFlingProcessing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mStartPointY:F

    float-to-int v2, v2

    float-to-int v1, v1

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_4
    move v0, v4

    :goto_2
    move v4, v0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBackKey(Landroid/app/Activity;Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    if-ge v1, v0, :cond_7

    int-to-float v0, v1

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v5

    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_6

    sub-float v0, v5, v0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->updateHandlerAlphaAndTextColor(Z)V

    :cond_8
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_3
    float-to-int v0, v0

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_3

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBackKey(Landroid/app/Activity;Z)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    if-ge v1, v0, :cond_d

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->open()V

    :goto_4
    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->stopTracking()V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_12

    cmpg-float v2, v1, v6

    if-gez v2, :cond_11

    move v2, v4

    :goto_5
    cmpg-float v6, v0, v6

    if-gez v6, :cond_e

    neg-float v0, v0

    :cond_e
    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_22

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v0, v0

    move v10, v2

    move v2, v1

    move v1, v0

    move v0, v10

    :goto_6
    float-to-double v6, v1

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    if-eqz v0, :cond_21

    neg-float v0, v1

    :goto_7
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1e

    if-eqz v5, :cond_15

    iget-boolean v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v6, :cond_f

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v7

    if-lt v1, v6, :cond_10

    :cond_f
    iget-boolean v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v6, :cond_17

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-le v1, v6, :cond_17

    :cond_10
    iget-boolean v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v6, :cond_1b

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->playSoundEffect(I)V

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_19

    if-eqz v5, :cond_18

    move v0, v1

    :goto_8
    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    :cond_11
    move v2, v3

    goto :goto_5

    :cond_12
    cmpg-float v2, v0, v6

    if-gez v2, :cond_14

    move v2, v4

    :goto_9
    cmpg-float v6, v1, v6

    if-gez v6, :cond_13

    neg-float v1, v1

    :cond_13
    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_22

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v1, v1

    move v10, v2

    move v2, v1

    move v1, v0

    move v0, v10

    goto :goto_6

    :cond_14
    move v2, v3

    goto :goto_9

    :cond_15
    iget-boolean v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v6, :cond_16

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v7

    if-lt v2, v6, :cond_10

    :cond_16
    iget-boolean v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v6, :cond_17

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-gt v2, v6, :cond_10

    :cond_17
    if-eqz v5, :cond_1d

    :goto_a
    invoke-direct {p0, v1, v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    :cond_18
    move v0, v2

    goto :goto_8

    :cond_19
    if-eqz v5, :cond_1a

    :goto_b
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    :cond_1a
    move v1, v2

    goto :goto_b

    :cond_1b
    if-eqz v5, :cond_1c

    :goto_c
    invoke-direct {p0, v1, v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    :cond_1c
    move v1, v2

    goto :goto_c

    :cond_1d
    move v1, v2

    goto :goto_a

    :cond_1e
    if-eqz v5, :cond_1f

    :goto_d
    invoke-direct {p0, v1, v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    :cond_1f
    move v1, v2

    goto :goto_d

    :cond_20
    move v0, v3

    goto/16 :goto_2

    :cond_21
    move v0, v1

    goto/16 :goto_7

    :cond_22
    move v10, v2

    move v2, v1

    move v1, v0

    move v0, v10

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
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
    .locals 2

    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "registerDetector..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMinFlingVelocity:I

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

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

.method public setTopOffset(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

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
