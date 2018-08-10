.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;
    }
.end annotation


# instance fields
.field private mBiometricPreview:Landroid/view/ViewGroup;

.field private mBouncerPromptReason:I

.field protected final mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field protected mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private final mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIrisPreview:Landroid/view/ViewGroup;

.field private mIsSinglePageLockscreen:Z

.field protected mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mRemoveViewRunnable:Ljava/lang/Runnable;

.field protected mRoot:Landroid/view/ViewGroup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mShowingSoon:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$4mE6q-g-9AghSEE8izztShNU7-Q;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$4mE6q-g-9AghSEE8izztShNU7-Q;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsSinglePageLockscreen:Z

    return-void
.end method

.method private cancelShowRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return-void
.end method

.method private checkFullscreenBouncerMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_6

    :cond_1
    const/4 v0, 0x1

    :goto_1
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERSO_LOCK:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_8

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_9

    :cond_4
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_KeyguardBouncer-mthref-0()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    return-void
.end method

.method public changeBouncerContainer(Landroid/view/ViewGroup;)V
    .locals 2

    const-string/jumbo v0, "KeyguardBouncer"

    const-string/jumbo v1, "changeBouncerContainer!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method protected ensureView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    :cond_0
    return-void
.end method

.method public hide(Z)V
    .locals 2

    const-string/jumbo v0, "KeyguardBouncer#hide"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissCancelled()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onBouncerHidden()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->cancelDismissAction()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->cleanUp()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsSinglePageLockscreen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected inflateView()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0067

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIrisPreview:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBiometricPreview:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0a027c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBiometricPreview:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBiometricPreview:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsSinglePageLockscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isFullscreenBouncer()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->checkFullscreenBouncerMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public needsFullscreenBouncer()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->checkFullscreenBouncerMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardHostView;->finish(ZI)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onPause()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsSinglePageLockscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onResume()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPromptReason(I)V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBiometricPreview:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBiometricPreview:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBiometricPreview:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBiometricPreview:Landroid/view/ViewGroup;

    :cond_1
    return-void
.end method

.method public resetKeyguardDismissAction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->cancelDismissAction()V

    :cond_0
    return-void
.end method

.method public setKeyguardDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setLockscreenPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsSinglePageLockscreen:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    return-void
.end method

.method public setNotiClickedOnShadeLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->setNotiClickedOnShadeLocked(Z)V

    :cond_0
    return-void
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v0

    return v0
.end method

.method public show(Z)V
    .locals 8

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v5}, Lcom/android/systemui/classifier/FalsingManager;->onBouncerShown()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_4

    if-ne v0, v3, :cond_4

    const/4 v1, 0x1

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsSinglePageLockscreen:Z

    if-eqz v5, :cond_5

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen()V

    :cond_1
    if-eqz v1, :cond_e

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss(I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwipedUnlockRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen()V

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-eqz v5, :cond_a

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDismissActionExist()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHostView;->onResume()V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPromptReason(I)V

    :cond_9
    return-void

    :cond_a
    if-eqz v1, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwipedUnlockRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void

    :cond_c
    if-nez v1, :cond_d

    const-string/jumbo v5, "KeyguardBouncer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User can\'t dismiss keyguard: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " != "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    const-string/jumbo v5, "101"

    const-string/jumbo v6, "1001"

    const-string/jumbo v7, "1"

    invoke-static {v5, v6, v7}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardHostView;->showMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->showPromptReason(I)V

    return-void
.end method

.method public showSinglePageBouncer()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsSinglePageLockscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPromptReason(I)V

    :cond_0
    return-void
.end method

.method public showWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->startDisappearAnimation(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
