.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;
.super Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.source "KeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;
    }
.end annotation


# instance fields
.field private mCurrentOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mEasyMode:Z

.field private mIsDeskMode:Z

.field private mKidsModeEnabled:Z

.field private mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mLeftShortcutArea:Landroid/widget/LinearLayout;

.field private mPermDisableState:Z

.field private mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mRightShortcutArea:Landroid/widget/LinearLayout;

.field private mSavingMode:Z

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

.field private mShortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

.field private mTraySquicleMode:Z

.field private mTrusted:Z

.field private mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsDeskMode:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsDeskMode:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->changeIconSquicleMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->showShortcutsIfPossible()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isKidsHomeModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKidsModeEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsDeskMode:Z

    const/4 v1, 0x4

    new-array v0, v1, [Landroid/net/Uri;

    const-string/jumbo v1, "tap_to_icon"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isIconSquicleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method private changeIconSquicleMode()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isIconSquicleMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z

    if-eq v0, v1, :cond_1

    const-string/jumbo v1, "KeyguardBottomAreaShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeIconSquicleMode() : new traySquicleMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    :cond_1
    return-void
.end method

.method private isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldDisablePhoneShortcut(I)Z
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOutOfService()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForRight()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldDisableShortcut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->shouldDisableShortcutWithMdm()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsDeskMode:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showShortcutsIfPossible()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    goto :goto_1
.end method

.method private updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V
    .locals 3

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisablePhoneShortcut(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUserSetupComplete:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/ShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method public getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0
.end method

.method public bridge synthetic getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method public getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0
.end method

.method public hasCameraShortcutForLeft()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    return v0
.end method

.method public hasCameraShortcutForRight()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    return v0
.end method

.method public hasPhoneShortcutForLeft()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForPhone()Z

    move-result v0

    return v0
.end method

.method public hasPhoneShortcutForRight()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForPhone()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_KeyguardBottomAreaShortcutView_31790()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public launchLeftAffordance()V
    .locals 7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftPreview:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftPreview:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftIsVoiceAssist:Z

    if-eqz v3, :cond_3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasCameraShortcutForLeft()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "lockscreen_affordance"

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchCamera(Ljava/lang/String;)V

    const-string/jumbo v3, "101"

    const-string/jumbo v4, "1007"

    const-string/jumbo v5, "1"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForLeft()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchPhone()V

    const-string/jumbo v3, "101"

    const-string/jumbo v4, "1007"

    const-string/jumbo v5, "1"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "KeyguardBottomAreaShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchLeftAffordance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "101"

    const-string/jumbo v4, "1008"

    invoke-static {v3, v4, v2}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchRightAffordance()V
    .locals 7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightPreview:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightPreview:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasCameraShortcutForRight()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchRightAffordance()V

    const-string/jumbo v3, "101"

    const-string/jumbo v4, "1007"

    const-string/jumbo v5, "2"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForRight()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchPhone()V

    const-string/jumbo v3, "101"

    const-string/jumbo v4, "1009"

    const-string/jumbo v5, "2"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "KeyguardBottomAreaShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchRightAffordance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "101"

    const-string/jumbo v4, "1009"

    invoke-static {v3, v4, v2}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->registerCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftPreview()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->onDensityOrFontScaleChanged(Z)V

    return-void
.end method

.method public onDensityOrFontScaleChanged(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLayout()V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftAffordance()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onDensityOrFontScaleChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onDensityOrFontScaleChanged()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$0QRjhJyB_28NbgOzb1ChqWm2dEQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$0QRjhJyB_28NbgOzb1ChqWm2dEQ;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->unregisterCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a02fc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->init()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setRight(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->init()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    const v0, 0x7f0a0432

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onUnlockMethodStateChanged()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    const-string/jumbo v2, "KeyguardBottomAreaShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUnlockMethodStateChanged old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftPreview()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->showShortcutsIfPossible()V

    :cond_0
    return-void
.end method

.method public setAllChildEnabled(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->setAllChildEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateCameraVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    :cond_1
    return-void
.end method

.method protected updateLayout()V
    .locals 10

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07065d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07065c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07065d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07065c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070211

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/LockIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07065e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v5}, Lcom/android/systemui/util/ShortcutManager;->isFirstUpdated()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v5}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v7}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->updateIcon()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, -0x2

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftAffordanceIcon()V

    sget-boolean v5, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SKT_PLMN:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCarrierText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07065c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCarrierText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCarrierText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0701d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9, v7}, Lcom/android/systemui/widget/SystemUITextView;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCarrierText:Lcom/android/systemui/widget/SystemUITextView;

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected updateLeftAffordanceIcon()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->canLaunchVoiceAssist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftIsVoiceAssist:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftIsVoiceAssist:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    goto :goto_0
.end method

.method protected updateLeftPreview()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForLeft()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setShortcutForPhone(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateRightPreview()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForRight()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setShortcutForPhone(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
