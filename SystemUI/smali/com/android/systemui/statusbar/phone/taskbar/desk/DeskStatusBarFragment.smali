.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;
.super Landroid/app/Fragment;
.source "DeskStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/phone/StatusBar$DeskStatusBarCallbacks;
.implements Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$1;
    }
.end annotation


# instance fields
.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mBatteryMeterViewArea:Landroid/widget/LinearLayout;

.field private mDeskIconManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;

.field private mDisabled1:I

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNotificationIconAreaInner:Landroid/view/View;

.field private mNotificationIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mSignalClusterView:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

.field private mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSystemIconArea:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$eSQfFec8WSX9sFbNyFAvm7BVUIo;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/-$Lambda$eSQfFec8WSX9sFbNyFAvm7BVUIo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private findQsPanelDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10409d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bluetooth"

    return-object v0

    :cond_0
    const-string/jumbo v0, "wifi_ap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Hotspot"

    return-object v0

    :cond_1
    const-string/jumbo v0, "location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Location"

    return-object v0

    :cond_2
    const-string/jumbo v0, "nfc_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "custom(com.android.nfc/com.samsung.android.nfc.quicktile.NfcTile)"

    return-object v0

    :cond_3
    return-object v2
.end method

.method private initBatteryMeterViewArea()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mBatteryMeterViewArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mBatteryMeterViewArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mBatteryMeterViewArea:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mBatteryMeterViewArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mBatteryMeterViewArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120ab0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initNetspeedViewArea()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    const v1, 0x7f0a0382

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_taskbar_desk_DeskStatusBarFragment_10099(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldHideNotificationIcons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected adjustDisableFlags(I)I
    .locals 3

    const/high16 v2, 0x100000

    const/high16 v1, 0x20000

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLaunchTransitionFadingAway()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->shouldHideNotificationIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/2addr p1, v1

    or-int/2addr p1, v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/2addr p1, v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_2

    or-int/2addr p1, v2

    :cond_2
    return p1
.end method

.method public collapseIconArea(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->collapseIconArea(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->hideSystemIconArea(Z)V

    return-void
.end method

.method public disable(IIZ)V
    .locals 5

    const/high16 v4, 0x100000

    const/high16 v3, 0x20000

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->adjustDisableFlags(I)I

    move-result p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mDisabled1:I

    xor-int v0, p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mDisabled1:I

    and-int v2, v0, v4

    if-eqz v2, :cond_0

    and-int v2, p1, v4

    if-eqz v2, :cond_2

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->hideSystemIconArea(Z)V

    :cond_0
    :goto_0
    and-int v2, v0, v3

    if-eqz v2, :cond_1

    and-int v2, p1, v3

    if-eqz v2, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->hideNotificationIconArea(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->showSystemIconArea(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->showNotificationIconArea(Z)V

    goto :goto_1
.end method

.method public expandIconArea(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->expandIconArea(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->showSystemIconArea(Z)V

    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    return-void
.end method

.method public hideSystemIconArea(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setForceHidePercent(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setForceHideView(Z)V

    :cond_0
    return-void
.end method

.method public initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->setMouse(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    const v2, 0x7f0a039a

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->showNotificationIconArea(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mDeskIconManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_0
    return-void
.end method

.method public onLeftClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowDeskPanelViews()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->findQsPanelDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandDeskSettingsPanel(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onDeskStatusBarIconMouseLeftClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public onRightClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleContextMenu(ILandroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x7f0a04ff

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView$Mouse;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mDeskIconManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mDeskIconManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$DeskIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    const v1, 0x7f0a04c6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mSignalClusterView:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->initNetspeedViewArea()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->initBatteryMeterViewArea()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->showSystemIconArea(Z)V

    return-void
.end method

.method public shouldShowTooltip(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskLaunchableIconView;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showNotificationIconArea(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method public showSystemIconArea(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setForceHidePercent(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setForceHideView(Z)V

    :cond_0
    return-void
.end method
