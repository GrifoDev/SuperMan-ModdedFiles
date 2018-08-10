.class public Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;,
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field private final mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateScrimControllerKeyguardFadingOutRunnable:Ljava/lang/Runnable;

.field protected mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field private mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

.field private mDeferScrimFadeOut:Z

.field private mDeskMode:Z

.field private mDeviceInteractive:Z

.field private mDeviceWillWakeUp:Z

.field private mDrawnOnce:Z

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field protected mFirstUpdate:Z

.field private mIsBiometricUnlocked:Z

.field private mIsDynamicResolutionChanged:Z

.field private mIsNotiClickedOnShadeLocked:Z

.field mIsSimStateReady:Z

.field private mIsSinglePageLockscreen:Z

.field private mLastBouncerDismissible:Z

.field private mLastBouncerShowing:Z

.field private mLastDeferScrimFadeOut:Z

.field private mLastDeskMode:Z

.field protected mLastOccluded:Z

.field protected mLastRemoteInputActive:Z

.field protected mLastShowing:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

.field protected mOccluded:Z

.field protected mRemoteInputActive:Z

.field public mResetNavBarTransitionAnim:Ljava/lang/Runnable;

.field private mScreenTurnedOn:Z

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field protected mShowing:Z

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field private mWallpaperDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static synthetic -com_android_systemui_statusbar_phone_StatusBarKeyguardViewManager-mthref-0(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAnimateScrimControllerKeyguardFadingOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSinglePageLockscreen:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAnimateScrimControllerKeyguardFadingOutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;JJZ)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;JJLjava/lang/Runnable;Z)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJLjava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "StatusBarKeyguardViewManager"

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsBiometricUnlocked:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDynamicResolutionChanged:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsNotiClickedOnShadeLocked:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAnimateScrimControllerKeyguardFadingOutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSimStateReady:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDrawnOnce:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mResetNavBarTransitionAnim:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSinglePageLockscreen:Z

    return-void
.end method

.method private animateScrimControllerKeyguardFadingOut(JJLjava/lang/Runnable;Z)V
    .locals 9

    const-string/jumbo v0, "Fading out"

    const-wide/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;

    invoke-direct {v6, p0, p5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Ljava/lang/Runnable;)V

    move-wide v2, p1

    move-wide v4, p3

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateKeyguardFadingOut(JJLjava/lang/Runnable;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$2;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private animateScrimControllerKeyguardFadingOut(JJZ)V
    .locals 9

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJLjava/lang/Runnable;Z)V

    return-void
.end method

.method private executeAfterKeyguardGoneAction()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private failKeyguardFadingOut()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->cancelWakeAndUnlocking()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardFadingAway(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->finishKeyguardFadingAway()V

    return-void
.end method

.method private showBouncer()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCollapsePanels(F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public changeBouncerContainer(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const v2, -0x400001

    and-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->changeBouncerContainer(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer()V

    return-void
.end method

.method public dismissAndCollapse()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v4, 0x0

    move-object v2, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startDexBounceAnimation()V

    :cond_0
    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setKeyguardDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    goto :goto_0
.end method

.method public getDrawnOnce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDrawnOnce:Z

    return v0
.end method

.method public getDynamicResolutionChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDynamicResolutionChanged:Z

    return v0
.end method

.method protected getLastNavBarVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDeferScrimFadeOut:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavBarShowDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x140

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserActivityTimeout()J
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/Rune;->getDefaultDisplayTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public hide(JJ)V
    .locals 23

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/16 p3, 0x7d0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    const-wide/16 v6, 0x0

    const-wide/16 v10, -0x30

    add-long v10, v10, p1

    sub-long v10, v10, v20

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToNotificationShade()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBiometricUnlocked()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBiometricUnlocked()Z

    move-result v5

    if-eqz v5, :cond_3

    move-wide/from16 v18, p1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setBiometricUnlocked(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;J)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    const/16 v22, 0x1

    :goto_1
    if-eqz v22, :cond_4

    const-wide/16 v8, 0x0

    const-wide/16 p3, 0xf0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBiometricUnlocked()Z

    move-result v5

    if-eqz v5, :cond_5

    const-wide/16 v8, 0x0

    const-wide/16 p3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setBiometricUnlocked(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-wide/from16 v6, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardFadingAway(JJJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startKeyguardFadingAway()V

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardFadingAway(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardWhilePulsing()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$3;

    invoke-direct {v12, v5}, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$3;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJLjava/lang/Runnable;Z)V

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardShowing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardShowing(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v5}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    goto/16 :goto_0

    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startKeyguardFadingAway()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-wide/from16 v6, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardFadingAway(JJJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJZ)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperRootView()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v5, :cond_6

    move-wide v14, v8

    move-wide/from16 v16, p3

    new-instance v11, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/view/View;JJ)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v13}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_2

    :cond_a
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJZ)V

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-wide/from16 v0, p3

    invoke-virtual {v5, v8, v9, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateGoingToFullShade(JJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->finishKeyguardFadingAway()V

    goto/16 :goto_2
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isBiometricUnlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsBiometricUnlocked:Z

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToNotificationShade()Z

    move-result v0

    return v0
.end method

.method protected isNavBarVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOccluded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return v0
.end method

.method public isPanelFullyCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method public isScreenTurnedOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenTurnedOn:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    return v0
.end method

.method public isUnlockWithWallpaper()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingWallpaper()Z

    move-result v0

    return v0
.end method

.method public keyguardGoingAway()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->keyguardGoingAway()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarKeyguardViewManager_35396()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarKeyguardViewManager_42208()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarKeyguardViewManager_46211()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    :cond_0
    return-void
.end method

.method public notifyDeviceWakeUpRequested()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    return-void
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->notifyKeyguardAuthenticated(Z)V

    return-void
.end method

.method public notifyOccludedState()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSimStateReady:Z

    return-void
.end method

.method public onActivityDrawn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSinglePageLockscreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->endAffordanceLaunch()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    const-string/jumbo v0, "102"

    const-string/jumbo v1, "11"

    invoke-static {v0, v1}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetKeyguardDismissAction()V

    const/4 v0, 0x0

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeskMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onFinishedGoingToSleep()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenTurnedOn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onScreenTurnedOff()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v0, "StatusBarKeyguardViewManager#onScreenTurnedOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScreenTurnedOn:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onScreenTurnedOn()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSinglePageLockscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOn()V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    const-string/jumbo v0, "StatusBarKeyguardViewManager#onScreenTurningOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onScreenTurningOn()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onStartedGoingToSleep()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    const-string/jumbo v0, "StatusBarKeyguardViewManager#onStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onStartedWakingUp()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 1

    const-string/jumbo v0, "StatusBarKeyguardViewManager#onStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceInteractive:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeviceWillWakeUp:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onStartedWakingUp(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)V
    .locals 6

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SystemUIFactory;->createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateUserActivityTimeout()V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_LIVEUX:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDcmKeyguardMascotUtils()Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setDcmLauncherUtil(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->registerMascotReceiver()V

    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->stopWaitingForKeyguardExit()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardReset()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setBiometricUnlocked(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetKeyguardDismissAction()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    goto :goto_0
.end method

.method public resetBouncer()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public resetKeyguardDismissAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->resetKeyguardDismissAction()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelDexBounceAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguardDismissAction()V

    return-void
.end method

.method public setBiometricUnlocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsBiometricUnlocked:Z

    return-void
.end method

.method public setDcmLauncherUtil(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    return-void
.end method

.method public setDrawnOnce()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDrawnOnce:Z

    return-void
.end method

.method public setDynamicResolutionChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDynamicResolutionChanged:Z

    return-void
.end method

.method public setLockscreenPage(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSinglePageLockscreen:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeskMode:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateUserActivityTimeout(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setLockscreenPage(Z)V

    :cond_0
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardNeedsInput(Z)V

    return-void
.end method

.method public setNotiClickedOnShadeLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsNotiClickedOnShadeLocked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsNotiClickedOnShadeLocked:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setNotiClickedOnShadeLocked(Z)V

    return-void
.end method

.method public setOccluded(ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onKeyguardOccludedChanged(Z)V

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string/jumbo v2, "SEP"

    sget-object v3, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p2, :cond_5

    xor-int/lit8 v0, p1, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updatePinButtonVisibility()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardOccluded(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardOccluded(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSimStateReady:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSimStateReady:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :goto_1
    if-eqz p2, :cond_4

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateKeyguardUnoccluding()V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    goto :goto_1
.end method

.method public setShowSwipeBouncer(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setNotiClickedOnShadeLocked(Z)V

    return-void
.end method

.method public shouldDisableWindowAnimationsForUnlock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    return v0
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->shouldDismissOnMenuPressed()Z

    move-result v0

    return v0
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardShowing(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->abortKeyguardFadingOut()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWallpaperDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAnimateScrimControllerKeyguardFadingOutRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAnimateScrimControllerKeyguardFadingOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAnimateScrimControllerKeyguardFadingOutRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->failKeyguardFadingOut()V

    :cond_2
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updatePinButtonVisibility()V

    :cond_3
    sget-boolean v2, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_LIVEUX:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDcmKeyguardMascotUtils:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->bindIScreenLockService()V

    :cond_4
    return-void
.end method

.method public showBouncerMessage(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;I)V

    return-void
.end method

.method protected showBouncerOrKeyguard(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsSinglePageLockscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguard()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showSinglePageBouncer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguard()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    goto :goto_0
.end method

.method public startDCMPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardOnlyForDCM(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startDCMPreHideAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected updateStates()V
    .locals 14

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v10

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v1

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result v11

    xor-int/lit8 v0, v11, 0x1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    if-nez v0, :cond_d

    xor-int/lit8 v11, v8, 0x1

    if-nez v11, :cond_d

    move v11, v7

    :goto_0
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    if-nez v12, :cond_e

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_e

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    :goto_1
    if-ne v11, v12, :cond_0

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v11, :cond_2

    :cond_0
    if-nez v0, :cond_1

    xor-int/lit8 v11, v8, 0x1

    if-nez v11, :cond_1

    if-eqz v7, :cond_f

    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const v12, -0x400001

    and-int/2addr v12, v10

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getLastNavBarVisible()Z

    move-result v4

    if-ne v5, v4, :cond_3

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v11, :cond_4

    :cond_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v11

    if-eqz v11, :cond_4

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getNavBarShowDelay()J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-nez v11, :cond_10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_3
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v1, v11, :cond_5

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-nez v11, :cond_5

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeskMode:Z

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDeskMode:Z

    if-eq v11, v12, :cond_6

    :cond_5
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v1, :cond_12

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeskMode:Z

    xor-int/lit8 v11, v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBouncerShowing(Z)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_13

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeskMode:Z

    xor-int/lit8 v11, v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBouncerShowing(Z)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v1, :cond_14

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeskMode:Z

    xor-int/lit8 v11, v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBouncerShowing(Z)V

    :cond_6
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    if-eqz v8, :cond_15

    xor-int/lit8 v11, v6, 0x1

    :goto_7
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v12, :cond_16

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    xor-int/lit8 v12, v12, 0x1

    :goto_8
    if-ne v11, v12, :cond_7

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v11, :cond_8

    :cond_7
    if-eqz v8, :cond_17

    xor-int/lit8 v11, v6, 0x1

    :goto_9
    invoke-virtual {v9, v11, v8, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onKeyguardVisibilityChanged(ZZZ)V

    :cond_8
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v1, v11, :cond_9

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v11, :cond_a

    :cond_9
    invoke-virtual {v9, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardBouncerChanged(Z)V

    :cond_a
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-ne v8, v11, :cond_b

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-eq v6, v11, :cond_18

    :cond_b
    :goto_a
    invoke-virtual {v9, v8, v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardStateUpdated(ZZZ)V

    :cond_c
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeferScrimFadeOut:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDeferScrimFadeOut:Z

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDeskMode:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDeskMode:Z

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->onKeyguardViewManagerStatesUpdated()V

    return-void

    :cond_d
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_f
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const/high16 v12, 0x400000

    or-int/2addr v12, v10

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto/16 :goto_2

    :cond_10
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12, v2, v3}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_3

    :cond_11
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_16
    const/4 v12, 0x0

    goto :goto_8

    :cond_17
    const/4 v11, 0x0

    goto :goto_9

    :cond_18
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-eq v1, v11, :cond_c

    goto :goto_a
.end method

.method public updateUserActivityTimeout()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateUserActivityTimeout(Z)V

    return-void
.end method

.method public updateUserActivityTimeout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->userActivityTimeoutChanged(Z)V

    :cond_0
    return-void
.end method
