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

    .prologue
    .line 105
    const/16 v0, 0xc8

    sput v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->MIN_FLING_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    .line 283
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    const-string v5, "IncomingCallSlidingDrawer"

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->LOG_TAG:Ljava/lang/String;

    .line 129
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 130
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 148
    new-instance v5, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 177
    new-instance v5, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 285
    sget-object v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 288
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_orientation:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 289
    .local v4, "orientation":I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    .line 290
    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_bottomOffset:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    .line 291
    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_topOffset:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    .line 292
    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_allowSingleTap:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAllowSingleTap:Z

    .line 293
    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_animateOnClick:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimateOnClick:Z

    .line 295
    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_handle:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 296
    .local v3, "handleId":I
    if-nez v3, :cond_1

    .line 297
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3    # "handleId":I
    :cond_0
    move v5, v7

    .line 289
    goto :goto_0

    .line 301
    .restart local v3    # "handleId":I
    :cond_1
    sget v5, Lcom/android/incallui/wrapper/AndroidRWrapper$styleable;->SlidingDrawer_content:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 302
    .local v1, "contentId":I
    if-nez v1, :cond_2

    .line 303
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 307
    :cond_2
    if-ne v3, v1, :cond_3

    .line 308
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 312
    :cond_3
    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleId:I

    .line 313
    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContentId:I

    .line 315
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 316
    .local v2, "density":F
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTapThreshold:I

    .line 317
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumTapVelocity:I

    .line 318
    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    .line 319
    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    .line 320
    const/high16 v5, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    .line 321
    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityUnits:I

    .line 323
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    invoke-virtual {p0, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 326
    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->MIN_FLING_THRESHOLD:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->doAnimation()V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 99
    sput p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->MIN_FLING_THRESHOLD:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMinFlingVelocity:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mIsFlingProcessing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpenByFling()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateCloseByFling()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method private animateClose(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 646
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    .line 647
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    .line 648
    return-void
.end method

.method private animateCloseByFling()V
    .locals 4

    .prologue
    .line 967
    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateCloseByFling"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v1, :cond_1

    .line 969
    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateCloseByFling: failed to close"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    .line 974
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    .line 975
    .local v0, "scrollListener":Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_2

    .line 976
    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 979
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

    .line 981
    if-eqz v0, :cond_3

    .line 982
    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 985
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateClose()V

    goto :goto_0

    .line 979
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1
.end method

.method private animateOpen(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    .line 652
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    .line 653
    return-void
.end method

.method private animateOpenByFling()V
    .locals 4

    .prologue
    .line 1020
    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateOpenByFling"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_1

    .line 1022
    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateOpenByFling: failed to open"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->open()V

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    .line 1027
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    .line 1028
    .local v0, "scrollListener":Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_2

    .line 1029
    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 1032
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

    .line 1034
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 1036
    if-eqz v0, :cond_3

    .line 1037
    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 1040
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v1, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateOpen()V

    goto :goto_0

    .line 1032
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1
.end method

.method private closeDrawer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1058
    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "closeDrawer"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    .line 1060
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1062
    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->updateHandlerAlphaAndTextColor(Z)V

    .line 1063
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1067
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_2

    .line 1075
    :cond_1
    :goto_0
    return-void

    .line 1071
    :cond_2
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    .line 1072
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->incrementAnimation()V

    .line 847
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

    .line 848
    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    .line 849
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->closeDrawer()V

    .line 860
    :cond_0
    :goto_1
    return-void

    .line 847
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 850
    :cond_2
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 851
    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    .line 852
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 854
    :cond_3
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    .line 855
    iget-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    .line 856
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

    .prologue
    .line 863
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 864
    .local v2, "now":J
    iget-wide v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v4, v6, v7

    .line 865
    .local v4, "t":F
    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    .line 866
    .local v1, "position":F
    iget v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    .line 867
    .local v5, "v":F
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    .line 868
    .local v0, "a":F
    mul-float v6, v5, v4

    add-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    .line 869
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    .line 870
    iput-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    .line 871
    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 730
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    .line 732
    .local v3, "handle":Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    .line 733
    if-ne p1, v9, :cond_0

    .line 734
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 735
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    .line 793
    :goto_0
    return-void

    .line 736
    :cond_0
    if-ne p1, v8, :cond_1

    .line 737
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    .line 738
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 737
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 739
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    goto :goto_0

    .line 741
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 742
    .local v6, "top":I
    sub-int v1, p1, v6

    .line 743
    .local v1, "deltaY":I
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    .line 744
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 748
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 750
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 751
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 753
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 754
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 756
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 757
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    .line 758
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 757
    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 760
    invoke-virtual {p0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 745
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
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

    .line 746
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

    .line 763
    .end local v1    # "deltaY":I
    .end local v6    # "top":I
    :cond_4
    if-ne p1, v9, :cond_5

    .line 764
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 765
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 766
    :cond_5
    if-ne p1, v8, :cond_6

    .line 767
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    .line 768
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    .line 767
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 769
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 771
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 772
    .local v4, "left":I
    sub-int v0, p1, v4

    .line 773
    .local v0, "deltaX":I
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_8

    .line 774
    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 778
    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 780
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 781
    .restart local v2    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 783
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 784
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 786
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 787
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    .line 788
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHeight()I

    move-result v9

    .line 787
    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 790
    invoke-virtual {p0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 775
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
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

    .line 776
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

    .prologue
    const/4 v2, 0x1

    .line 1078
    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "openDrawer"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    invoke-direct {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->updateHandlerAlphaAndTextColor(Z)V

    .line 1082
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1086
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_2

    .line 1095
    :cond_1
    :goto_0
    return-void

    .line 1090
    :cond_2
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    .line 1092
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 656
    int-to-float v2, p1

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    .line 657
    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    .line 659
    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    .line 660
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

    .line 665
    :cond_0
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    .line 666
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 667
    iput v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    .line 695
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 696
    .local v0, "now":J
    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    .line 697
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    .line 698
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    .line 699
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 700
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 701
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->stopTracking()V

    .line 702
    return-void

    .line 660
    .end local v0    # "now":J
    :cond_2
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 671
    :cond_3
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    .line 672
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 673
    iput v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 677
    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    .line 678
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

    .line 681
    :cond_5
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    .line 682
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 683
    iput v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 678
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    .line 688
    :cond_7
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    .line 689
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 690
    iput v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 796
    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 827
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    .line 803
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 804
    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_3

    .line 805
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    .line 806
    .local v0, "childHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 807
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 808
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 807
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 809
    iget v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    .line 810
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 809
    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 823
    .end local v0    # "childHeight":I
    .end local v3    # "height":I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 824
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 826
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 812
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 813
    .local v1, "childWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 814
    .local v4, "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 815
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 814
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 816
    iget v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    .line 817
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 818
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 816
    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 705
    iput-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    .line 706
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 707
    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 708
    .local v2, "opening":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 709
    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedAcceleration:F

    .line 710
    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimatedVelocity:F

    .line 711
    iget v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    .line 712
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    .line 713
    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    .line 714
    iput-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    .line 715
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 717
    .local v0, "now":J
    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimationLastTime:J

    .line 718
    const-wide/16 v6, 0x10

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mCurrentAnimationTime:J

    .line 719
    iput-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    .line 727
    .end local v0    # "now":J
    :goto_2
    return-void

    .end local v2    # "opening":Z
    :cond_0
    move v2, v3

    .line 707
    goto :goto_0

    .line 712
    .restart local v2    # "opening":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    .line 721
    :cond_2
    iget-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 722
    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    .line 723
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 831
    iput-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    .line 832
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->updateHandlerAlphaAndTextColor(Z)V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 842
    :cond_2
    return-void
.end method

.method private updateHandlerAlphaAndTextColor(Z)V
    .locals 4
    .param p1, "istouch"    # Z

    .prologue
    const v3, 0x7f0f00da

    .line 517
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 520
    .local v0, "handler":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 521
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 522
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 523
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 525
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 526
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 532
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 529
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method


# virtual methods
.method public animateClose()V
    .locals 3

    .prologue
    .line 949
    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateClose"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    .line 951
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    .line 952
    .local v0, "scrollListener":Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 953
    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 955
    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose(I)V

    .line 957
    if-eqz v0, :cond_1

    .line 958
    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v1, :cond_2

    .line 962
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateClose()V

    .line 964
    :cond_2
    return-void

    .line 955
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 3

    .prologue
    .line 1000
    const-string v1, "IncomingCallSlidingDrawer"

    const-string v2, "animateOpen"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    .line 1002
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    .line 1003
    .local v0, "scrollListener":Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 1004
    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 1006
    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpen(I)V

    .line 1008
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 1010
    if-eqz v0, :cond_1

    .line 1011
    invoke-interface {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 1014
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    if-eqz v1, :cond_2

    .line 1015
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    invoke-interface {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;->onAnimateOpen()V

    .line 1017
    :cond_2
    return-void

    .line 1006
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpen()V

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 933
    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->closeDrawer()V

    .line 935
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    .line 936
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->requestLayout()V

    .line 937
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    .line 394
    .local v2, "drawingTime":J
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    .line 395
    .local v1, "handle":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    .line 397
    .local v4, "isVertical":Z
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 399
    iget-boolean v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    .line 400
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 402
    if-eqz v4, :cond_2

    .line 403
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 417
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 405
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 409
    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    .line 410
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    .line 409
    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 411
    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 412
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 409
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    .line 414
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 415
    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1188
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

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    .line 1171
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 347
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 348
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    .line 349
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    .line 356
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1047
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1048
    const-class v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1049
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1053
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1054
    const-class v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1055
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 460
    iget-boolean v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v7

    .line 464
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 466
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 467
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 469
    .local v6, "y":F
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 470
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    .line 472
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 473
    iget-boolean v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 477
    :cond_2
    if-nez v0, :cond_4

    .line 478
    iput-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    .line 480
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 482
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareContent()V

    .line 485
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    if-eqz v9, :cond_3

    .line 486
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 489
    :cond_3
    iget-boolean v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_5

    .line 490
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v4

    .line 491
    .local v4, "top":I
    float-to-int v9, v6

    sub-int/2addr v9, v4

    iput v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTouchDelta:I

    .line 492
    invoke-direct {p0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    .line 498
    .end local v4    # "top":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mStartPointY:F

    .line 499
    iput-boolean v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mIsFlingProcessing:Z

    .line 501
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v7, v8

    .line 504
    goto :goto_0

    .line 494
    :cond_5
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 495
    .local v3, "left":I
    float-to-int v9, v5

    sub-int/2addr v9, v3

    iput v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTouchDelta:I

    .line 496
    invoke-direct {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 421
    iget-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 456
    :goto_0
    return-void

    .line 425
    :cond_0
    sub-int v7, p4, p2

    .line 426
    .local v7, "width":I
    sub-int v6, p5, p3

    .line 428
    .local v6, "height":I
    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    .line 430
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 431
    .local v3, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 436
    .local v0, "childHeight":I
    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    .line 438
    .local v4, "content":Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 439
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 440
    .local v1, "childLeft":I
    iget-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    .line 442
    .local v2, "childTop":I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    .line 443
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 442
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 453
    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 454
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleHeight:I

    .line 455
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 440
    .end local v2    # "childTop":I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    .line 445
    .end local v1    # "childLeft":I
    :cond_2
    iget-boolean v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    .line 446
    .restart local v1    # "childLeft":I
    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 448
    .restart local v2    # "childTop":I
    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    .line 449
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    .line 450
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 448
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 445
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 365
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 366
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 368
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 369
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 371
    .local v3, "heightSpecSize":I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 372
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IncomingCallSlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    .line 376
    .local v0, "handle":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 378
    iget-boolean v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 380
    .local v1, "height":I
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 381
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 380
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 388
    .end local v1    # "height":I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setMeasuredDimension(II)V

    .line 389
    return-void

    .line 383
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 384
    .local v4, "width":I
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 385
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 384
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 538
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    if-eqz v14, :cond_0

    .line 539
    const/4 v14, 0x1

    .line 642
    :goto_0
    return v14

    .line 542
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-eqz v14, :cond_3

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v14, :cond_2

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 545
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mIsFlingProcessing:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mTracking:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v14, :cond_2

    .line 546
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_0

    .line 549
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 551
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 552
    .local v7, "pointY":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mStartPointY:F

    float-to-int v14, v14

    float-to-int v15, v7

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 553
    .local v4, "deltaY":I
    packed-switch v2, :pswitch_data_0

    .line 642
    .end local v2    # "action":I
    .end local v4    # "deltaY":I
    .end local v7    # "pointY":F
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

    .line 555
    .restart local v2    # "action":I
    .restart local v4    # "deltaY":I
    .restart local v7    # "pointY":F
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    if-ge v4, v14, :cond_6

    .line 556
    int-to-float v14, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    const v15, 0x3e99999a    # 0.3f

    mul-float v3, v14, v15

    .line 557
    .local v3, "alphaValue":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v14, :cond_5

    .line 558
    const v14, 0x3e99999a    # 0.3f

    sub-float v3, v14, v3

    .line 560
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    if-eqz v14, :cond_6

    .line 561
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    invoke-virtual {v14, v3}, Landroid/view/View;->setAlpha(F)V

    .line 564
    .end local v3    # "alphaValue":F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->updateHandlerAlphaAndTextColor(Z)V

    .line 565
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

    .line 569
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    if-ge v4, v14, :cond_a

    .line 570
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->open()V

    .line 572
    :goto_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAnimating:Z

    .line 573
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->stopTracking()V

    goto/16 :goto_1

    .line 571
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    goto :goto_3

    .line 577
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 578
    .local v10, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v10, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 580
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v13

    .line 581
    .local v13, "yVelocity":F
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v12

    .line 584
    .local v12, "xVelocity":F
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mVertical:Z

    .line 585
    .local v11, "vertical":Z
    if-eqz v11, :cond_11

    .line 586
    const/4 v14, 0x0

    cmpg-float v14, v13, v14

    if-gez v14, :cond_10

    const/4 v6, 0x1

    .line 587
    .local v6, "negative":Z
    :goto_4
    const/4 v14, 0x0

    cmpg-float v14, v12, v14

    if-gez v14, :cond_b

    .line 588
    neg-float v12, v12

    .line 590
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v14, v14

    cmpl-float v14, v12, v14

    if-lez v14, :cond_c

    .line 591
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v12, v14

    .line 603
    :cond_c
    :goto_5
    float-to-double v14, v12

    float-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    double-to-float v9, v14

    .line 604
    .local v9, "velocity":F
    if-eqz v6, :cond_d

    .line 605
    neg-float v9, v9

    .line 608
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    .line 609
    .local v8, "top":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 611
    .local v5, "left":I
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v15, v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1d

    .line 612
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

    .line 613
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

    .line 619
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v14, :cond_1a

    .line 620
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->playSoundEffect(I)V

    .line 622
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-eqz v14, :cond_18

    .line 623
    if-eqz v11, :cond_17

    .end local v8    # "top":I
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 586
    .end local v5    # "left":I
    .end local v6    # "negative":Z
    .end local v9    # "velocity":F
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 594
    :cond_11
    const/4 v14, 0x0

    cmpg-float v14, v12, v14

    if-gez v14, :cond_13

    const/4 v6, 0x1

    .line 595
    .restart local v6    # "negative":Z
    :goto_7
    const/4 v14, 0x0

    cmpg-float v14, v13, v14

    if-gez v14, :cond_12

    .line 596
    neg-float v13, v13

    .line 598
    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v14, v14

    cmpl-float v14, v13, v14

    if-lez v14, :cond_c

    .line 599
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v13, v14

    goto/16 :goto_5

    .line 594
    .end local v6    # "negative":Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_7

    .line 613
    .restart local v5    # "left":I
    .restart local v6    # "negative":Z
    .restart local v8    # "top":I
    .restart local v9    # "velocity":F
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

    .line 616
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

    .line 632
    :cond_16
    if-eqz v11, :cond_1c

    .end local v8    # "top":I
    :goto_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v8    # "top":I
    :cond_17
    move v8, v5

    .line 623
    goto :goto_6

    .line 625
    :cond_18
    if-eqz v11, :cond_19

    .end local v8    # "top":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v8    # "top":I
    :cond_19
    move v8, v5

    goto :goto_9

    .line 628
    :cond_1a
    if-eqz v11, :cond_1b

    .end local v8    # "top":I
    :goto_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v8    # "top":I
    :cond_1b
    move v8, v5

    goto :goto_a

    :cond_1c
    move v8, v5

    .line 632
    goto :goto_8

    .line 635
    :cond_1d
    if-eqz v11, :cond_1e

    .end local v8    # "top":I
    :goto_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v8    # "top":I
    :cond_1e
    move v8, v5

    goto :goto_b

    .line 642
    .end local v2    # "action":I
    .end local v4    # "deltaY":I
    .end local v5    # "left":I
    .end local v6    # "negative":Z
    .end local v7    # "pointY":F
    .end local v8    # "top":I
    .end local v9    # "velocity":F
    .end local v10    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v11    # "vertical":Z
    .end local v12    # "xVelocity":F
    .end local v13    # "yVelocity":F
    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 553
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

    .prologue
    .line 917
    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "open"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->openDrawer()V

    .line 919
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    .line 920
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->requestLayout()V

    .line 922
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 923
    return-void
.end method

.method public registerDetector(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    const-string v3, "IncomingCallSlidingDrawer"

    const-string v4, "registerDetector..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v3, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v3, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 331
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 332
    .local v2, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMinFlingVelocity:I

    .line 334
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 335
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 336
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 337
    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I

    .line 338
    return-void
.end method

.method public setBackgroundPanel(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mBackgroundPanel:Landroid/view/View;

    .line 1133
    return-void
.end method

.method public setLinearLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "ll"    # Landroid/widget/LinearLayout;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;

    .line 509
    return-void
.end method

.method public setOnDrawerAnimateListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V
    .locals 0
    .param p1, "onDrawerAnimateListener"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerAnimateListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;

    .line 1129
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .param p1, "onDrawerCloseListener"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;

    .line 1113
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .param p1, "onDrawerOpenListener"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;

    .line 1104
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .param p1, "onDrawerScrollListener"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerScrollListener;

    .line 1125
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    .line 513
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mRejectCallWithMsgTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$DrawerToggler;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->openDrawer()V

    .line 888
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->invalidate()V

    .line 889
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->requestLayout()V

    .line 890
    return-void

    .line 886
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mLocked:Z

    .line 1162
    return-void
.end method

.method public unregisterDetector()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "IncomingCallSlidingDrawer"

    const-string v1, "unregisterDetector..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 343
    return-void
.end method
