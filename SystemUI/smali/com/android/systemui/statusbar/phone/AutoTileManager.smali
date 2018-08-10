.class public Lcom/android/systemui/statusbar/phone/AutoTileManager;
.super Ljava/lang/Object;
.source "AutoTileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/AutoTileManager$1;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$2;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$3;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$4;
    }
.end annotation


# instance fields
.field private mCameleonUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field final mNightDisplayCallback:Lcom/android/internal/app/NightDisplayController$Callback;

.field private final mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCameleonUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/SecureSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCameleonUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    new-instance v2, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_CHAMELEON_HOTSPOT:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCameleonUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.CSC_CHAMELEON_UPDATE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCameleonUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "QsDataSaverAdded"

    invoke-static {p1, v1, v5}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addCallback(Ljava/lang/Object;)V

    :cond_1
    const-string/jumbo v1, "QsInvertColorsAdded"

    invoke-static {p1, v1, v5}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v4, "accessibility_display_inversion_enabled"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    :cond_2
    const-string/jumbo v1, "QsWorkAdded"

    invoke-static {p1, v1, v5}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->addCallback(Ljava/lang/Object;)V

    :cond_3
    const-string/jumbo v1, "QsNightDisplayAdded"

    invoke-static {p1, v1, v5}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Lcom/android/internal/app/NightDisplayController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/NightDisplayController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    :cond_4
    return-void
.end method
