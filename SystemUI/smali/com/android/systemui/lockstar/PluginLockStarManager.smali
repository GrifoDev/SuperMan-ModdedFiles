.class public Lcom/android/systemui/lockstar/PluginLockStarManager;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/lockstar/PluginLockStarManager$1;,
        Lcom/android/systemui/lockstar/PluginLockStarManager$2;,
        Lcom/android/systemui/lockstar/PluginLockStarManager$3;,
        Lcom/android/systemui/lockstar/PluginLockStarManager$4;,
        Lcom/android/systemui/lockstar/PluginLockStarManager$5;,
        Lcom/android/systemui/lockstar/PluginLockStarManager$6;,
        Lcom/android/systemui/lockstar/PluginLockStarManager$7;,
        Lcom/android/systemui/lockstar/PluginLockStarManager$8;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAppShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;

.field private mBasicCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;

.field private mContext:Landroid/content/Context;

.field private mFaceWidgetCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager$Callback;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mFlashlightListener:Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIndicationTextCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;

.field private mIsLockStarEnabled:Z

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mLockStarFlashlightListener:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

.field private mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

.field private mNotificationCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mStatusBarCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager$Callback;

.field private mTaskShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;

.field private mUris:[Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFlashlightListener:Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarFlashlightListener:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarFlashlightListener:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "lockstar_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mUris:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/lockstar/-$Lambda$iWqgbXWsu7qC2D41r3Y8DMZ2vnU;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/-$Lambda$iWqgbXWsu7qC2D41r3Y8DMZ2vnU;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$1;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mBasicCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$2;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mStatusBarCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager$Callback;

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$3;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFaceWidgetCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager$Callback;

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$4;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mAppShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$5;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationTextCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$6;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mTaskShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$7;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFlashlightListener:Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$8;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotificationCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDexModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    :goto_0
    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockStarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mUris:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;
    .locals 1

    const-class v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-object v0
.end method

.method private isDexModeEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockStarMode(Z)V
    .locals 3

    sget-object v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update mode isEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetPanelView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->onLockStarModeChanged(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isLockStarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    return v0
.end method

.method public isVersionUnMatched()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockStarEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getVersion()I

    move-result v0

    const/16 v1, 0x3eb

    div-int/lit16 v2, v0, 0x3e8

    if-eq v2, v6, :cond_2

    sget-object v2, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disable LockStar. version mismatch. bin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockstar_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v6

    :cond_2
    return v5
.end method

.method synthetic lambda$-com_android_systemui_lockstar_PluginLockStarManager_4010(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "lockstar_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isVersionUnMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockStarEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->updateLockStarMode(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockstar_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public restoreIndicationText(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->restoreIndicationText(Landroid/view/View;)V

    return-void
.end method

.method public restoreLockIcons()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->restoreLockIcons()V

    return-void
.end method

.method public setCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mBasicCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getAppShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mAppShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getTaskShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mTaskShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getIndicationTextManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationTextCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getStatusBarManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mStatusBarCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getFaceWidgetManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFaceWidgetCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getNotificationManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotificationCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;)V

    return-void
.end method

.method public setFullscreenMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getTouchManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTouchManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTouchManager;->setFullscreenMode(Z)V

    :cond_0
    return-void
.end method

.method public setIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-void
.end method

.method public setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-void
.end method

.method public setLockStarNotificationPreviewArray(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getNotificationManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;->setLockStarNotificationPreviewArray(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setPlugin(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    return-void
.end method

.method public setStatusBarPadding(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getStatusBarManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;->setStatusBarPadding(II)V

    :cond_0
    return-void
.end method

.method public startLockStarUnlockAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->startLockStarUnlockAnimation()V

    :cond_0
    return-void
.end method

.method public updateWhiteWallpaperState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->updateWhiteWallpaperState(Z)V

    :cond_0
    return-void
.end method
