.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$1;,
        Lcom/android/systemui/statusbar/phone/PanelView$2;,
        Lcom/android/systemui/statusbar/phone/PanelView$3;,
        Lcom/android/systemui/statusbar/phone/PanelView$5;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected NOTI_CENTER_TAG:Ljava/lang/String;

.field private mAnimateAfterExpanding:Z

.field private mAnimatingOnDown:Z

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mClosing:Z

.field private mCollapsedAndHeadsUpOnDown:Z

.field protected mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

.field private mDownTime:J

.field private mExpandLatencyTracking:Z

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field protected mExpanding:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mGestureWaitForTouchSlop:Z

.field private mGoToExpanded:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasLayoutedSinceDown:Z

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mIgnoreXTouchSlop:Z

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mIsFlingOnKeyguard:Z

.field private mIsNotiCenterPanelMoving:Z

.field private mJustPeeked:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMinExpandHeight:F

.field private mMotionAborted:Z

.field protected mNCP:Landroid/view/View;

.field private mNextCollapseSpeedUpFactor:F

.field private mNotiCenterPanelPredrawer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mNotificationsDragEnabled:Z

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPanelUpdateWhenAnimatorEnds:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekTouching:Z

.field protected final mPostCollapseRunnable:Ljava/lang/Runnable;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field protected mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mUpwardsWhenTresholdReached:Z

.field private mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

.field private mViewName:Ljava/lang/String;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsFlingOnKeyguard:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsNotiCenterPanelMoving:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mWatchLongPress:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->switchToNotiCenterPanel()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->updateNotiCenterPanel(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    const-string/jumbo v0, "NOTICENTER"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->NOTI_CENTER_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsNotiCenterPanelMoving:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotiCenterPanelPredrawer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-direct {v0, p1, v4, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-direct {v0, p1, v2, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e4ccccd    # 0.2f

    const v5, 0x3f570a3d    # 0.84f

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    const-class v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    return-void
.end method

.method private abortAnimations()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private createNotiCenterFlingAnimator(Z)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNCP:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/4 v3, 0x0

    aput v1, v2, v3

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :cond_0
    const/high16 v1, -0x3afe0000    # -2080.0f

    goto :goto_0
.end method

.method private endClosing()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    :cond_0
    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .locals 18

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    if-nez v13, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v13, p2, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_7

    :cond_1
    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    const/16 v14, 0x3e8

    invoke-interface {v13, v14}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getXVelocity()F

    move-result v13

    float-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    double-to-float v10, v14

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v11, v10, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_8

    :cond_3
    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v15

    invoke-static {v5, v13, v14, v15}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v13, p3, v13

    div-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v7, v13

    div-float v13, v11, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v14, 0xba

    invoke-virtual {v13, v14, v7, v12}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5, v13}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    xor-int/lit8 v13, v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v13, p3, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_1

    if-nez p4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v13

    int-to-long v14, v13

    cmp-long v13, v8, v14

    if-gez v13, :cond_a

    const-wide/16 v14, 0x168

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPeekHeight()F

    move-result v13

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v13, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation(JFZ)V

    goto :goto_2

    :cond_8
    move/from16 v5, p4

    goto/16 :goto_0

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/PanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    goto/16 :goto_2
.end method

.method private endNotiCenterPanelExpanding()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNCP:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGoToExpanded:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createNotiCenterFlingAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v1, :cond_0

    const/16 v3, 0x190

    :goto_0
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$6;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->NOTI_CENTER_TAG:Ljava/lang/String;

    const-string/jumbo v4, "ncp - STOP EXPANDING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsNotiCenterPanelMoving:Z

    return-void

    :cond_0
    const/16 v3, 0x12c

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNCP:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onMiddleClicked()Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->switchToNotiCenterPanel()V

    goto :goto_1
.end method

.method private getFalsingThreshold()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerFactory;->obtain(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    return-void
.end method

.method private isDirectionUpwards(FF)Z
    .locals 5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v0, p1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v1, p2, v3

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    return v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isFalseTouch(FF)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private notifyExpandingStarted()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    :cond_0
    return-void
.end method

.method private prepareNotiCenterPanel()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotiCenterPanelPredrawer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->invalidate()V

    return-void
.end method

.method private runPeekAnimation(JFZ)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCallStateIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Block to run peekanimation to jump call screen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    const-string/jumbo v0, "expandedHeight"

    new-array v1, v4, [F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$4;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui/statusbar/phone/PanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return-void
.end method

.method private setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    :cond_0
    return-void
.end method

.method private startNotiCenter()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->NOTI_CENTER_TAG:Ljava/lang/String;

    const-string/jumbo v3, " ncp - START NOTI CENTER "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.systemui.noticenter"

    const-string/jumbo v3, "com.samsung.systemui.noticenter.NotiCenterPage"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startOpening()V
    .locals 4

    const-wide/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOpeningHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation(JFZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 8

    const-wide/16 v6, 0xfa

    const-string/jumbo v3, "SEP"

    sget-object v4, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelView$11;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    neg-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/PanelView$12;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private switchToNotiCenterPanel()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startNotiCenter()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private updateNotiCenterPanel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNCP:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsNotiCenterPanelMoving:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->prepareNotiCenterPanel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endNotiCenterPanelExpanding()V

    goto :goto_0
.end method


# virtual methods
.method public canPanelBeCollapsed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cancelHeightAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    return-void
.end method

.method public cancelPeek()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    :cond_1
    return-void
.end method

.method public collapse(ZF)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz p1, :cond_1

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p2, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "T"

    :goto_0
    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "T"

    :goto_1
    const/4 v3, 0x4

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "T"

    :goto_2
    const/4 v3, 0x5

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x6

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, " (started)"

    :goto_3
    const/4 v3, 0x7

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const/16 v3, 0x8

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, " (started)"

    :goto_4
    const/16 v3, 0x9

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "T"

    :goto_5
    const/16 v3, 0xa

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "f"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "f"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "f"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_4

    :cond_5
    const-string/jumbo v0, "f"

    goto :goto_5
.end method

.method public expand(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestLayout()V

    return-void
.end method

.method protected fling(FZ)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    return-void
.end method

.method protected fling(FZFZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    :goto_0
    int-to-float v3, v0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fling(FZZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 10

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Expand blocked by panelsEnabled = false"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->fullyExpandedClearAllVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isClearAllVisible()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float p3, v0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p2, :cond_8

    if-eqz p5, :cond_5

    cmpg-float v0, p1, v7

    if-gez v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v3

    int-to-float v5, v3

    move v3, p3

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    cmpl-float v0, p1, v7

    if-nez v0, :cond_6

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_6
    :goto_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$8;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/phone/PanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldUseDismissingAnimation()Z

    move-result v0

    if-eqz v0, :cond_a

    cmpl-float v0, p1, v7

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43480000    # 200.0f

    add-float/2addr v0, v2

    float-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_3
    cmpl-float v0, p1, v7

    if-nez v0, :cond_6

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v0, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    float-to-long v8, v0

    long-to-float v0, v8

    div-float/2addr v0, p4

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v3

    int-to-float v5, v3

    move v3, p3

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_3

    :cond_a
    cmpl-float v0, p1, v7

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v3

    int-to-float v5, v3

    move v3, p3

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_3
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getClearAllHeight()I
.end method

.method protected getCurrentExpandVelocity()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v0

    return v0
.end method

.method public getExpandedFraction()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOpeningHeight()F
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected abstract getPeekHeight()F
.end method

.method protected abstract hasConflictingGestures()Z
.end method

.method public instantCollapse()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    :cond_1
    return-void
.end method

.method protected isCallStateIndicator()Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_ONECLICK_JUMP_CALL_SCREEN:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getIndicatorBgColor()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return v0
.end method

.method public isFlingOnKeyguard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsFlingOnKeyguard:Z

    return v0
.end method

.method public isFullyCollapsed()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected abstract isPanelVisibleBecauseOfHeadsUp()Z
.end method

.method protected isScrolledToBottom()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_PanelView_43754()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method protected loadDimens()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    const v2, 0x7f0701ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    const v2, 0x7f0706e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    return-void
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    const-string/jumbo v0, "KEEPLOCK"

    const-string/jumbo v2, "KEEPLOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsFlingOnKeyguard:Z

    :cond_1
    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected final notifyExpandingFinished()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    return-void
.end method

.method protected onEmptySpaceClick(F)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onMiddleClicked()Z

    move-result v0

    return v0
.end method

.method protected onExpandingFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v10, :cond_3

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    xor-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(Ljava/lang/String;)V

    return v11

    :cond_3
    const/4 v9, 0x3

    if-ne v0, v9, :cond_1

    goto :goto_0

    :cond_4
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isScrolledToBottom()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_6
    :goto_1
    :pswitch_0
    return v11

    :pswitch_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_a

    move v9, v10

    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_8

    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_b

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    xor-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v13, :cond_9

    move v11, v10

    :cond_9
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(Ljava/lang/String;)V

    return v10

    :cond_a
    move v9, v11

    goto :goto_2

    :cond_b
    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->isInContentBounds(FF)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v9, v6, :cond_6

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-eq v9, v6, :cond_c

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x1

    goto :goto_3

    :pswitch_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v9

    if-ne v9, v10, :cond_6

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    iput-object v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    goto/16 :goto_1

    :pswitch_4
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v1, v8, v9

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    if-nez v5, :cond_d

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    if-nez v9, :cond_d

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v9, :cond_6

    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v1, v9

    if-ltz v9, :cond_e

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-lez v9, :cond_6

    :cond_e
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v2, v9

    if-lez v9, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v7, v8, v10, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v13, v13

    int-to-float v13, v13

    cmpg-float v13, v1, v13

    if-gez v13, :cond_f

    move v11, v10

    :cond_f
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(Ljava/lang/String;)V

    return v10

    :pswitch_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    iput-object v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v1, 0x1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPanelLaidOut()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    :cond_0
    return-void
.end method

.method protected abstract onMiddleClicked()Z
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    :cond_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v10, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(Ljava/lang/String;)V

    const/4 v10, 0x0

    return v10

    :cond_3
    const/4 v10, 0x3

    if-ne v0, v10, :cond_1

    goto :goto_0

    :cond_4
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    const/4 v10, 0x0

    return v10

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x2002

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(Z)V

    :cond_8
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    const/4 v10, 0x1

    return v10

    :cond_9
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-gez v6, :cond_a

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    :cond_a
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->hasConflictingGestures()Z

    move-result v10

    :goto_1
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldGestureIgnoreXTouchSlop(FF)Z

    move-result v10

    :goto_2
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_c
    :goto_3
    :pswitch_0
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v10, :cond_21

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    :goto_4
    return v10

    :cond_d
    const/4 v10, 0x1

    goto :goto_1

    :cond_e
    const/4 v10, 0x1

    goto :goto_2

    :pswitch_1
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v11, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v10

    :goto_5
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-nez v10, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_10

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    xor-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_11

    :cond_10
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v10, :cond_13

    :cond_11
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_12

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    xor-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_15

    :cond_12
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    :goto_6
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startOpening()V

    goto/16 :goto_3

    :cond_14
    const/4 v10, 0x0

    goto :goto_5

    :cond_15
    const/4 v10, 0x1

    goto :goto_6

    :cond_16
    const/4 v10, 0x0

    goto :goto_6

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v10, v7, :cond_c

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-eq v10, v7, :cond_17

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v11, 0x1

    invoke-virtual {p0, v4, v5, v11, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    goto/16 :goto_3

    :cond_17
    const/4 v3, 0x1

    goto :goto_7

    :pswitch_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    const/4 v10, 0x1

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    const/4 v10, 0x0

    return v10

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v1, v9, v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1a

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_18

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    if-eqz v10, :cond_1a

    :cond_18
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v10, :cond_1a

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1a

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1a

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez v10, :cond_19

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_19

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v11, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    const/4 v1, 0x0

    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    :cond_1a
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v11, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    cmpl-float v10, v2, v10

    if-lez v10, :cond_1f

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    :cond_1c
    :goto_8
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    neg-float v10, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFalsingThreshold()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1d

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    :cond_1d
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez v10, :cond_c

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v10, :cond_1e

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v10, :cond_c

    :cond_1e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_20

    const/4 v10, 0x0

    cmpl-float v10, v2, v10

    if-lez v10, :cond_20

    sget-object v10, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Expand blocked by panelsEnabled = false"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    goto/16 :goto_3

    :cond_1f
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v10, :cond_1c

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v10, :cond_1c

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    goto :goto_8

    :cond_20
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    const/4 v10, 0x0

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    goto/16 :goto_3

    :cond_21
    const/4 v10, 0x1

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onTrackingStarted()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    const-string/jumbo v0, "KEEPLOCK"

    const-string/jumbo v1, "KEEPLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsFlingOnKeyguard:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUnlockHintStarted()V

    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    if-eqz v1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    return-void

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    return-void
.end method

.method public abstract resetViews()V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    if-eqz v3, :cond_0

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$-GB1oJTzKavveOkbg4uteUTJmbI;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$-GB1oJTzKavveOkbg4uteUTJmbI;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v4

    sub-float v0, v3, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    sub-float v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v3, :cond_3

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    cmpl-float v3, v0, v2

    if-nez v3, :cond_5

    :goto_1
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->onHeightUpdated(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void

    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    if-eqz v3, :cond_2

    sub-float v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    div-float/2addr v2, v0

    goto :goto_1
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchDisabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    :cond_1
    return-void
.end method

.method protected abstract shouldGestureIgnoreXTouchSlop(FF)Z
.end method

.method protected abstract shouldUseDismissingAnimation()Z
.end method

.method public startExpandLatencyTracking()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    :cond_0
    return-void
.end method

.method protected startExpandMotion(FFZF)V
    .locals 1

    iput p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    :cond_1
    return-void
.end method

.method protected startExpandingFromPeek()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handlePeekToExpandTransistion()V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    return-void
.end method
