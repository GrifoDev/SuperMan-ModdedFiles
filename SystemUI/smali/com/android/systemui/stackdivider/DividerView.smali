.class public Lcom/android/systemui/stackdivider/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerView$-void_closeTask__LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerView$1;,
        Lcom/android/systemui/stackdivider/DividerView$2;,
        Lcom/android/systemui/stackdivider/DividerView$GuideView;,
        Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;,
        Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;
    }
.end annotation


# static fields
.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private adjStartPosition:Z

.field private mAdjustedForIme:Z

.field private mAnimateAfterRecentsDrawn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackground:Landroid/view/View;

.field private mBackgroundLifted:Z

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mDimming:Z

.field private mDismissEndPosition:I

.field private mDismissStartPosition:I

.field private mDisplayHeight:I

.field private final mDisplayRect:Landroid/graphics/Rect;

.field private mDisplayWidth:I

.field private mDissmissEnd:Z

.field private mDividerFlag:I

.field private mDividerInsets:I

.field private mDividerSize:I

.field private mDividerWindowWidth:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

.field private final mFocusedStackSnapTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowAfterRecentsDrawn:Z

.field private mGrowRecents:Z

.field private mGuideHeight:I

.field private mGuideRect:Landroid/graphics/Rect;

.field private mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mHasAutoResizingSnapTarget:Z

.field private mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

.field private mLastOrientation:I

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field protected mLiftBackgroundScale:F

.field private mLongPressEntraceAnimDuration:I

.field mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mMaximizeAnimationRunning:Z

.field private mMaximizeGuideView:Z

.field private mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

.field private mMoving:Z

.field private mOriginalDockedTaskRect:Landroid/graphics/Rect;

.field private mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field private mResizeTaskToStackBounds:Z

.field private mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mSnapGuideVisible:Z

.field protected mSnapModeRunning:Z

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mSure:Z

.field private final mTempInt2:[I

.field private mToggleSplitScreen:Z

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mUserId:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field private personaBadge:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->playTouchSound()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v5, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f5eb852    # 0.87f

    const v3, 0x3f051eb8    # 0.52f

    const v4, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    return-void
.end method

.method private EnterFreeformTask()V
    .locals 4

    const/4 v2, 0x0

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->adjustFocusForClose(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v2, v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->enterFreeformTask(I)V

    :cond_1
    return-void
.end method

.method private adjustFocusForClose(Z)I
    .locals 5

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    :try_start_0
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catchall_0
    move-exception v3

    return v2
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v8, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt p4, v7, :cond_4

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v5, p5

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    cmpl-float v7, v1, v9

    if-lez v7, :cond_2

    invoke-static {v4, p4, p2}, Lcom/android/systemui/stackdivider/DividerView;->isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result v1

    int-to-float v7, v5

    iget v8, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v9, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    float-to-int v3, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v7, :cond_0

    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, v7, :cond_1

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    :pswitch_0
    sub-int v7, v3, v6

    iput v7, p1, Landroid/graphics/Rect;->left:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_1
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->left:I

    add-int v7, v3, v6

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_2
    sub-int v7, v3, v2

    iput v7, p1, Landroid/graphics/Rect;->top:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_3
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->top:I

    add-int v7, v3, v2

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method private calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p2, v6, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v3, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v2, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_3
    if-ge v0, v3, :cond_b

    move v0, v3

    :cond_1
    :goto_4
    return v0

    :cond_2
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_0

    :cond_3
    if-ne p2, v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int v0, v4, v5

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne p2, v6, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eq p2, v5, :cond_5

    :cond_7
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne p2, v5, :cond_8

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int v0, v4, v5

    goto :goto_1

    :cond_8
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p2, v6, :cond_0

    goto :goto_5

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v3

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getEndInset()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_3

    :cond_b
    if-le v0, v2, :cond_1

    move v0, v2

    goto :goto_4
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .locals 3

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    div-float v0, v1, v2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private calculatePosition(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateYPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateXPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private calculateXPosition(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private calculateYPosition(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private cancelFlingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private closeTask()V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->adjustFocusForClose(Z)I

    move-result v0

    new-instance v2, Lcom/android/systemui/stackdivider/DividerView$-void_closeTask__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/DividerView$-void_closeTask__LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->animateMaximizingFocusedStack(ILcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SPAC"

    const-string/jumbo v4, "Close"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    invoke-interface {v1}, Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;->work()V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    return-void

    :cond_1
    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    goto :goto_0
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method

.method private static dockSideBottomRight(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawGuideView(II)V
    .locals 9

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    move p1, v5

    :cond_1
    iput p1, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_6

    :goto_1
    iput p2, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_7

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    :goto_2
    iput v5, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    add-int/2addr v5, v7

    :goto_3
    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->show(Landroid/graphics/Rect;)V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f040035

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v1, v8, :cond_4

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v7, 0x2

    invoke-virtual {p0, p2, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_5
    new-instance v6, Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v2}, Lcom/android/systemui/stackdivider/DividerView$GuideView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7, v1, v0, v8}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setFocusedZone(Lcom/android/systemui/stackdivider/FocusedFrameView;ILandroid/graphics/Rect;I)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDividerView(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v7, 0x4

    invoke-virtual {p0, p2, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_6
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v8, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_6

    :cond_6
    move p2, v5

    goto/16 :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    add-int/2addr v5, v7

    goto/16 :goto_2

    :cond_8
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    goto :goto_3
.end method

.method private drawGuideViewDimLayer(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v1

    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDimlayer(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDimlayer(F)V

    goto :goto_0
.end method

.method private drawKnoxBadge(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move v4, v7

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/stackdivider/DividerView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    return-void

    :cond_2
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredHeight()I

    move-result v2

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v9, v1, 0x2

    sub-int v9, v6, v9

    sub-int v10, v2, v0

    sub-int v11, v6, v1

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    if-nez v4, :cond_4

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_5
    move v3, v7

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    sub-int v9, v6, v1

    mul-int/lit8 v10, v0, 0x2

    sub-int v10, v2, v10

    sub-int v11, v2, v0

    invoke-virtual {v8, v9, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method

.method private fling(IFZZ)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne v7, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_1
    iget v0, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le v0, p1, :cond_4

    :cond_2
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v7, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    int-to-float v1, p1

    iget v2, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    iget v0, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOOF"

    const-string/jumbo v2, "DividerDragging"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt v0, p1, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    goto :goto_0
.end method

.method private flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    :cond_1
    return v0
.end method

.method private getDividerButtonsTarget()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_0
    const/4 v3, 0x3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v3, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget v3, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v3, v6, :cond_1

    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    :goto_1
    new-array v3, v6, [I

    aput p1, v3, v4

    iget v4, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$5;

    invoke-direct {v3, p0, v0, v2, p2}, Lcom/android/systemui/stackdivider/DividerView$5;-><init>(Lcom/android/systemui/stackdivider/DividerView;Landroid/animation/ValueAnimator;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$6;

    invoke-direct {v3, p0, p3, p4, v1}, Lcom/android/systemui/stackdivider/DividerView$6;-><init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    goto :goto_1
.end method

.method private getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "knox_name"

    invoke-static {v10, v11, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v9, :cond_3

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isECContainer(I)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getECBadge(I)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    array-length v11, v1

    invoke-static {v1, v12, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v2

    :cond_1
    if-eqz v5, :cond_3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v10, "ic_sf_badge_bottom"

    const-string/jumbo v11, "drawable"

    invoke-virtual {v7, v10, v11, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    return-object v10

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10804c2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10803ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    return-object v10

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v10, v12}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    return-object v10
.end method

.method private hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_6

    :goto_3
    return v0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private hideGuideView(Landroid/graphics/Point;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->dismiss(Landroid/graphics/Point;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->cancelAnimation()V

    goto :goto_0
.end method

.method private initializeSnapAlgorithm()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :cond_0
    return-void
.end method

.method private static isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    if-ne p2, v0, :cond_2

    :cond_0
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private liftBackground()V
    .locals 6

    const-wide/16 v4, 0x96

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->liftFocusedFrameView(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 6

    const/16 v5, 0x186

    const/4 v2, 0x2

    const/16 v4, 0x185

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_5

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    invoke-static {v1, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_4
    invoke-static {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_8
    move v2, v0

    goto :goto_4
.end method

.method private playTouchSound()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method private registerKnoxBadgeReceiver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private releaseBackground()V
    .locals 6

    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->releaseFocusedFrameView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void
.end method

.method private resetBackground()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2

    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    return p1
.end method

.method private scrollGuideView(II)V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, p2

    :goto_0
    const/4 v1, 0x0

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :cond_1
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v1, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xe9

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/stackdivider/DividerView$9;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView$9;-><init>(Lcom/android/systemui/stackdivider/DividerView;ZII)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    return-void

    :cond_3
    move v2, p1

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1
.end method

.method private setBackgroundFraction()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float v2, v0, v1

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    return-void
.end method

.method private stopDragging()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method private updateDisplayInfo()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    return-void
.end method

.method private updateDockSide()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_DividerView_lambda$1(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->areTasksOverlapping(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    goto :goto_0
.end method

.method synthetic -com_android_systemui_stackdivider_DividerView_lambda$3()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeFocusedStackByDivider(Z)V

    return-void
.end method

.method public animateMaximizingFocusedStack(ILcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;)Z
    .locals 13

    const-wide/16 v4, 0x14d

    const/4 v12, 0x1

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    move v1, v12

    :goto_0
    if-ne v6, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    iput-boolean v12, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v10}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    move-object v1, p0

    move-wide v6, v4

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return v12

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    goto :goto_1
.end method

.method public areTasksOverlapping(ILandroid/graphics/Rect;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    goto :goto_1
.end method

.method public calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 6

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    move v0, p1

    move v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-void
.end method

.method public checkDividerFlag(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method completeToggleSplitScreen()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->completeToggleSplitScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    :cond_0
    return-void
.end method

.method public dismissDockStack(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerView$7;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public flingToFocusedStackSnapTarget(IZ)V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    :cond_0
    return-void
.end method

.method public flingToNewFocusedStackSnapTarget(Landroid/graphics/Rect;I)V
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    if-eq p2, v11, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->initiateAutoResizingTargets(Landroid/graphics/Rect;I)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method public getAutoResizingTargetPos(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method public getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method public growsRecents()I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public hasSameAutoResizingTarget(ILandroid/graphics/Rect;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/stackdivider/DividerView;->calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initTaskBounds(ILandroid/graphics/Rect;)V
    .locals 3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/stackdivider/DividerView;->calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I

    move-result v0

    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public initiateAutoResizingTargets(Landroid/graphics/Rect;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x3

    if-ne p2, v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v6}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I

    move-result v4

    if-eqz v1, :cond_3

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_3

    :cond_0
    if-eqz v1, :cond_5

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v6}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v6

    :goto_2
    invoke-virtual {p0, v4, v6, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_3
    if-eqz v1, :cond_7

    const/4 v2, 0x1

    :goto_4
    new-instance v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v6, v4, v4, v8}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v6, p2}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    new-instance v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v6, v0, v0, v8}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v6, :cond_0

    :cond_4
    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    :goto_5
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    goto :goto_5

    :cond_7
    const/4 v2, 0x3

    goto :goto_4
.end method

.method public isFlingAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHorizontalDivision()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    return v0
.end method

.method public needToShowHiddenArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDockSideChanged(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-eqz v0, :cond_1

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowAfterRecentsDrawn:Z

    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mAnimateAfterRecentsDrawn:Z

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v0

    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/stackdivider/DividerView;->performHapticFeedback(I)Z

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowAfterRecentsDrawn:Z

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    sget v4, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_INVISIBLE:I

    invoke-direct {v2, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0, v5, v5}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    :goto_1
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    const-wide/16 v4, 0x150

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v11}, Lcom/android/systemui/stackdivider/DividerView;->performHapticFeedback(I)Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DOOF"

    const-string/jumbo v4, "RecentsLong"

    invoke-static {v1, v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 9

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAnimateAfterRecentsDrawn:Z

    if-eqz v0, :cond_0

    iput-boolean v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mAnimateAfterRecentsDrawn:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    int-to-long v3, v0

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0xc8

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowAfterRecentsDrawn:Z

    if-eqz v0, :cond_1

    iput-boolean v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowAfterRecentsDrawn:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    const-wide/16 v4, 0x150

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v4, p1, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;->mType:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v6, 0x4

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v7, v2, v4}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    goto :goto_3

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_5

    invoke-virtual {p0, v8, v2, v1}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    goto :goto_1

    :pswitch_2
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->swapTask()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->swapTask()V

    goto :goto_1

    :pswitch_3
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->closeTask()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->closeTask()V

    goto :goto_1

    :pswitch_4
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->EnterFreeformTask()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->EnterFreeformTask()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setSnapViewMode(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getLastDimLayerTargetStack()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x7f13012a

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const v1, 0x7f130127

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const v1, 0x7f130128

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_1

    const/16 v1, 0x3f6

    :goto_1
    invoke-static {v3, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setPointerIcon(Landroid/view/PointerIcon;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    const v1, 0x7f130129

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->initialize(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->setBackgroundFraction()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f7

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    add-int v5, v1, v3

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    invoke-virtual {v4, v1, v2, v5, v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->updateLayout()V

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_4
    sub-int v1, v4, v3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v3

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v3

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_5
    add-int/2addr v3, v1

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    goto :goto_5
.end method

.method onMultiWindowAppTransitionFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->onMultiWindowAppTransitionFinished()V

    return-void
.end method

.method onMultiWindowFocusedStackChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setFocusedStack(I)V

    return-void
.end method

.method onMultiWindowSettingChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v0

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/stackdivider/DividerView$8;-><init>(Lcom/android/systemui/stackdivider/DividerView;I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    return v13

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v2, v13, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v13, 0x1

    return v13

    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    return v8

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v13, v14, :cond_7

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-nez v13, :cond_4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/16 v14, 0x32

    if-le v13, v14, :cond_5

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v13, :cond_b

    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v6, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v13, v14, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    if-eqz v13, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(Z)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v14, v15}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6, v9}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    if-nez v13, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-lt v7, v13, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v7, v13, :cond_f

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(II)V

    :cond_e
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideViewDimLayer(I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-lt v7, v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v7, v13, :cond_12

    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(II)V

    goto :goto_3

    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-le v7, v13, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-ge v7, v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    goto :goto_3

    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    float-to-int v11, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    float-to-int v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    if-nez v13, :cond_1c

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13, v14, v15}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v14, v15}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    const v13, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13, v9}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt v7, v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le v7, v13, :cond_18

    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v13, v14, :cond_16

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v14

    iget v14, v14, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v13, v14, :cond_17

    const/4 v5, 0x1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_1a

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v11, v7}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v5, :cond_19

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    :goto_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v13, :cond_1

    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x1

    goto :goto_5

    :cond_17
    const/4 v5, 0x0

    goto :goto_5

    :cond_18
    const/4 v5, 0x0

    goto :goto_5

    :cond_19
    const/4 v13, 0x1

    goto :goto_6

    :cond_1a
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v7, v12}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v5, :cond_1b

    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_7

    :cond_1b
    const/4 v13, 0x1

    goto :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v14, v15}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-ge v7, v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    :cond_1d
    :goto_9
    iget v10, v9, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-virtual {v3, v11, v10}, Landroid/graphics/Point;->set(II)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_20

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/android/systemui/stackdivider/DividerView$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v3}, Lcom/android/systemui/stackdivider/DividerView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v15}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v7, v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    goto :goto_9

    :cond_1f
    invoke-virtual {v3, v10, v12}, Landroid/graphics/Point;->set(II)V

    goto :goto_a

    :cond_20
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v14, v15}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetAutoResizingState(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_6

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    if-eqz v3, :cond_11

    return-void

    :cond_3
    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-eqz v3, :cond_7

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    if-eqz v3, :cond_b

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    const/16 v23, 0x1

    :goto_3
    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_8
    const/16 v23, 0x0

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    goto :goto_5

    :cond_b
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-ne v0, v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v3, :cond_10

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v8

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    if-eqz v3, :cond_e

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v9, p0

    move-object/from16 v12, p3

    move/from16 v13, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v5

    move/from16 v0, v22

    invoke-virtual {v4, v3, v5, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    :goto_9
    return-void

    :cond_12
    const/4 v3, 0x0

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    goto :goto_9
.end method

.method public setAdjustedForIme(Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    if-nez p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_2
.end method

.method public setAdjustedForIme(ZJ)V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    if-nez p1, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_1
.end method

.method public setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    :cond_3
    return-void

    :cond_4
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDividerFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    goto :goto_0
.end method

.method public setMinimizedDockStack(Z)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz p1, :cond_7

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v5, :cond_5

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v5, :cond_6

    move v0, v3

    :goto_3
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method public setMinimizedDockStack(ZJ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_9

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(ZJ)V

    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v5, :cond_7

    move v0, v3

    :goto_4
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    move v2, v1

    goto :goto_3
.end method

.method public setOriginalTaskBounds(ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setWindowManager(Lcom/android/systemui/stackdivider/DividerWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    return-void
.end method

.method public showSnapGuide(ZILandroid/graphics/Rect;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public startDragging(ZZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->startDividerDragging()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    invoke-direct {v3}, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public startSnapMode(Z)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public stopDragging(IFZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->stopDividerDragging()V

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    goto :goto_0
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 11

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V
    .locals 11

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v8, p6

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public swapTask()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->setDividerFlag(IZ)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->resetAutoResizingState(Z)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->swapTasks()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SPAC"

    const-string/jumbo v3, "Switch"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
