.class public Lcom/android/systemui/swipe/SwipeAnimator;
.super Ljava/lang/Object;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/swipe/SwipeAnimator$1;,
        Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;
    }
.end annotation


# instance fields
.field private mAffordancePivotX:I

.field private mAffordancePivotY:I

.field private mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

.field private mBottomViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceOut:Lcom/android/keyguard/swipe/BounceEaseOut;

.field private mCenterIcon:Landroid/view/View;

.field private mClockView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDistance:D

.field private mFullScreenAnimSet:Landroid/animation/AnimatorSet;

.field private mFullScreenModeEnabled:Z

.field private mIconSlotView:Landroid/view/View;

.field private mIntercepting:Z

.field private mIrisTextPreview:Landroid/view/View;

.field private mIsFullScreenModeShown:Z

.field private mIsTouching:Z

.field private mLeftShortcut:Landroid/view/View;

.field private mLongPressAllowHeight:I

.field private mLongPressCallback:Ljava/lang/Runnable;

.field private mNotiPanelView:Landroid/view/View;

.field private mNotiView:Landroid/view/View;

.field private mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

.field private mRestoreAnimSet:Landroid/animation/AnimatorSet;

.field private mRightShortcut:Landroid/view/View;

.field private mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

.field private final mSineIn33:Landroid/view/animation/Interpolator;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineOut33:Landroid/view/animation/Interpolator;

.field private mStatusBarView:Landroid/view/View;

.field private mSwipeUnlockRadius:I

.field private mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

.field private mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchSlop:I

.field private mUnlockExecuted:Z

.field private mUnlockViewHideAnim:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/swipe/SwipeAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/swipe/SwipeAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/swipe/SwipeAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/swipe/SwipeAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const v6, 0x3f2b851f    # 0.67f

    const v5, 0x3ea8f5c3    # 0.33f

    const v2, 0x3e2e147b    # 0.17f

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    new-instance v0, Lcom/android/keyguard/swipe/BounceEaseOut;

    invoke-direct {v0}, Lcom/android/keyguard/swipe/BounceEaseOut;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBounceOut:Lcom/android/keyguard/swipe/BounceEaseOut;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineInOut33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/swipe/SwipeAnimator$1;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;)V
    .locals 7

    const v6, 0x3f2b851f    # 0.67f

    const v5, 0x3ea8f5c3    # 0.33f

    const v2, 0x3e2e147b    # 0.17f

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    new-instance v0, Lcom/android/keyguard/swipe/BounceEaseOut;

    invoke-direct {v0}, Lcom/android/keyguard/swipe/BounceEaseOut;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBounceOut:Lcom/android/keyguard/swipe/BounceEaseOut;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineInOut33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/swipe/SwipeAnimator$1;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    const v1, 0x7f1301b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    const v1, 0x7f1303bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    const v1, 0x7f1301cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/android/systemui/swipe/SwipeAnimator;->setBottomViewsList(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressAllowHeight:I

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->setChildViewPivot()V

    return-void
.end method

.method private isAnimationRunning()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTapAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetChildViewVI()V
    .locals 5

    const/4 v4, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v2}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v2

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v2}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v2

    if-gt v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private restoreChildViewVI()V
    .locals 12

    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SwipeAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreChildViewVI(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private setChildViewPivot()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    iget v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setFullScreenMode(Z)V
    .locals 12

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v1}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v1

    if-ne v1, v9, :cond_4

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    const-wide/16 v2, 0x96

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/swipe/SwipeAnimator$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/swipe/SwipeAnimator$2;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_7

    const v0, 0x3f733333    # 0.95f

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    aput v1, v8, v10

    if-eqz p1, :cond_8

    move v1, v4

    :goto_3
    aput v1, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    aput v1, v8, v10

    if-eqz p1, :cond_9

    move v1, v4

    :goto_4
    aput v1, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v10

    if-eqz p1, :cond_a

    :goto_5
    aput v4, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    goto/16 :goto_0

    :cond_6
    const-wide/16 v2, 0x12c

    goto/16 :goto_1

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_8
    move v1, v5

    goto/16 :goto_3

    :cond_9
    move v1, v5

    goto/16 :goto_4

    :cond_a
    move v4, v5

    goto :goto_5
.end method

.method private showTapAffordanceAnimation()V
    .locals 12

    const v11, 0x3f733333    # 0.95f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBounceOut:Lcom/android/keyguard/swipe/BounceEaseOut;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/swipe/SwipeAnimator$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/swipe/SwipeAnimator$3;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    const v7, 0x3f7d70a4    # 0.99f

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v8

    aput v11, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v11, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateChildViewVI(D)V
    .locals 13

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double/2addr v6, p1

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-float v0, v6

    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double/2addr v6, p1

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide v8, 0x3fc9999a00000000L    # 0.20000004768371582

    mul-double/2addr v6, v8

    const-wide v8, 0x3ff3333340000000L    # 1.2000000476837158

    sub-double v6, v8, v6

    double-to-float v1, v6

    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double/2addr v6, p1

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide v8, 0x3fa9999800000000L    # 0.04999995231628418

    mul-double/2addr v6, v8

    const-wide v8, 0x3ff0ccccc0000000L    # 1.0499999523162842

    sub-double v6, v8, v6

    double-to-float v2, v6

    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v8, v8

    sub-double v8, p1, v8

    sub-double/2addr v6, v8

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide v8, 0x3fd3333300000000L    # 0.2999999523162842

    mul-double/2addr v6, v8

    const-wide v8, 0x3ff4ccccc0000000L    # 1.2999999523162842

    sub-double v6, v8, v6

    double-to-float v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v6, 0x3f99999a    # 1.2f

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v6, 0x3f866666    # 1.05f

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v6, 0x3fa66666    # 1.3f

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v6, v6

    cmpl-double v6, p1, v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    iget-object v11, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    iget-object v11, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/4 v11, 0x0

    aput v10, v9, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v10, v9, v11

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method


# virtual methods
.method public isViRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    if-nez v8, :cond_0

    const/4 v8, 0x0

    return v8

    :cond_0
    sget-boolean v8, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    return v8

    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v3, v8, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-wide/16 v8, 0x1f4

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    const-string/jumbo v8, "SwipeAnimator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Touch processing took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v8, 0x1

    return v8

    :pswitch_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->setChildViewPivot()V

    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressAllowHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    if-nez v8, :cond_4

    const/4 v8, 0x0

    return v8

    :cond_4
    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    return v8

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    sub-float v8, v6, v8

    float-to-int v0, v8

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    sub-float v8, v7, v8

    float-to-int v1, v8

    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    int-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    iget-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/swipe/SwipeAnimator;->updateChildViewVI(D)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/swipe/SwipeAnimator;->setIntercept(Z)V

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V

    :cond_7
    iget-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v10, v10

    cmpg-double v8, v8, v10

    if-lez v8, :cond_8

    const/4 v8, 0x6

    if-ne v3, v8, :cond_a

    :cond_8
    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v8, "SwipeAnimator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onTouchEvent(UP CANCEL POINTER_UP) ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), grayZone?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v8

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-eqz v8, :cond_c

    :cond_9
    :goto_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x3

    if-ne v3, v8, :cond_b

    const/4 v2, 0x1

    goto :goto_1

    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    :cond_c
    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_9

    iget-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v10, v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetChildViewVI()V

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->showTapAffordanceAnimation()V

    goto :goto_2

    :cond_d
    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->restoreChildViewVI()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onUnlockExecuted()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SwipeAnimator"

    const-string/jumbo v1, "onUnlockExecuted() Already Call Unlock!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetChildViewVI()V

    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setBottomViewsList(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockSecureIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getUSimCarrierTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getEmergencyButtonView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIconSlotView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    return-void
.end method

.method public setIntercept(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    return-void
.end method

.method public startPhoneLaunchAnimationInSecured()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startPreviewFocusAnim(Z)V
    .locals 11

    const/4 v10, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x96

    :goto_1
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/swipe/SwipeAnimator$4;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    aput v0, v7, v8

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    aput v0, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    aput v0, v7, v8

    if-eqz p1, :cond_4

    move v0, v2

    :goto_3
    aput v0, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    if-eqz p1, :cond_5

    :goto_4
    aput v2, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4
.end method
