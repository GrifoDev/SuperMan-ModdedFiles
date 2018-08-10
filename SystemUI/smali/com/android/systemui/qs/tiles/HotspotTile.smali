.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$1;,
        Lcom/android/systemui/qs/tiles/HotspotTile$Callback;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIALOG_WIFI_AP_ENABLE_WARNING:I = 0x5

.field static final TETHER_SETTINGS:Landroid/content/Intent;

.field private static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFI_AP_RANDOM_PASSWORD:Ljava/lang/String; = "wifi_ap_random_password"

.field private static final WIFI_SHARING_MENU_DEFAULT:I = 0xa

.field private static final WIFI_SHARING_MENU_DISABLE:I = 0x2

.field private static final WIFI_SHARING_MENU_ENABLE:I = 0x1


# instance fields
.field private final HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

.field private final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mDisableNoAnimation:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mUnavailable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.TetherSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 5

    const v4, 0x7f0801ef

    const v3, 0x7f0801ed

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v2, 0x7f0801f0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v2, 0x7f0801ee

    invoke-direct {v1, p0, v2, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisableNoAnimation:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const v1, 0x7f0801f3

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnavailable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$Callback;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$2;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v4, "airplane_mode_on"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/HotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " HotspotTile  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-void
.end method

.method private getIndoorStatus()Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x13a

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getStringID(I)I
    .locals 2

    move v0, p0

    const v1, 0x7f120902

    if-ne p0, v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f120903

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0x7f120795

    if-ne p0, v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f120796

    goto :goto_0

    :cond_2
    const v1, 0x7f120409

    if-ne p0, v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_3

    const v0, 0x7f12040a

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f12040b

    goto :goto_0

    :cond_4
    const v1, 0x7f1203fa

    if-ne p0, v1, :cond_b

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_5

    const v0, 0x7f120401

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-eqz v1, :cond_6

    const v0, 0x7f1203ff

    goto :goto_0

    :cond_6
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_7

    const v0, 0x7f120400

    goto :goto_0

    :cond_7
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_ATT_POPUP:Z

    if-eqz v1, :cond_8

    const v0, 0x7f1203fb

    goto :goto_0

    :cond_8
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_MTR_POPUP:Z

    if-eqz v1, :cond_9

    const v0, 0x7f1203fe

    goto :goto_0

    :cond_9
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_CHINA_POPUP:Z

    if-eqz v1, :cond_a

    const v0, 0x7f1203fc

    goto :goto_0

    :cond_a
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f1203fd

    goto :goto_0

    :cond_b
    const v1, 0x7f120408

    if-eq p0, v1, :cond_0

    const v1, 0x7f1203f5

    if-ne p0, v1, :cond_f

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_c

    const v0, 0x7f1203f9

    goto :goto_0

    :cond_c
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_d

    const v0, 0x7f1203f8

    goto :goto_0

    :cond_d
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-eqz v1, :cond_e

    const v0, 0x7f1203f7

    goto/16 :goto_0

    :cond_e
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_CHINA_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f1203f6

    goto/16 :goto_0

    :cond_f
    const v1, 0x7f12040d

    if-ne p0, v1, :cond_11

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_10

    const v0, 0x7f12040f

    goto/16 :goto_0

    :cond_10
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f12040e

    goto/16 :goto_0

    :cond_11
    const v1, 0x7f120403

    if-ne p0, v1, :cond_15

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_12

    const v0, 0x7f120407

    goto/16 :goto_0

    :cond_12
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-eqz v1, :cond_13

    const v0, 0x7f120405

    goto/16 :goto_0

    :cond_13
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_14

    const v0, 0x7f120406

    goto/16 :goto_0

    :cond_14
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_CHINA_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f120404

    goto/16 :goto_0

    :cond_15
    const v1, 0x7f120799

    if-ne p0, v1, :cond_16

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f12079a

    goto/16 :goto_0

    :cond_16
    const v1, 0x7f120797

    if-ne p0, v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v1, :cond_17

    const v0, 0x7f120798

    goto/16 :goto_0

    :cond_17
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_CTC_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f12079b

    goto/16 :goto_0
.end method

.method private isAirplaneModeEnabled()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1207a2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_0
    return v2
.end method

.method private isBlockedByEASPolicy()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isP2PConnected = : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSimCheck()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_CHECK_MHSDBG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SIMCHECK_DISABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isWifiSharingEnabled()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method private setHotspotEnabled()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_warning_dialog_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setHotspotEnabled start for USA or SBM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setHotspotEnabled(Z)V
    .locals 4

    const/16 v3, 0xa

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enable hotspot for USA or SBM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHotspotEnabled -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWifiSharingSelectDialog(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "If isP2p Connected Show Pop-up "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    return-void
.end method

.method private showNoSIMDialog()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const v2, 0x7f120799

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    const v2, 0x7f120797

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$6;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$7;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWarningDialog(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showWarningDialog(): mAlertDialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f12040d

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    const v2, 0x7f120403

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$8;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$8;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$9;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$10;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$11;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const v2, 0x7f120408

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    const v2, 0x7f1203f5

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const v2, 0x7f120409

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    const v2, 0x7f1203fa

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    goto :goto_0
.end method

.method private showWifiSharingSelectDialog(Z)V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v7, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "USA or SBM device, so ignoring first time popup from here"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "showing first time WifiSharing dialog"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f1207a7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/qs/tiles/HotspotTile$3;

    invoke-direct {v8, p0, v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;Z)V

    invoke-virtual {v7, v5, v4, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/qs/tiles/HotspotTile$4;

    invoke-direct {v8, p0, v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;Z)V

    const v9, 0x7f1201e0

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/qs/tiles/HotspotTile$5;

    invoke-direct {v8, p0, v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$5;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;Z)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0d01df

    invoke-static {v7, v8, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v10, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hotspot createDetail Adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " HotspotTile  getDetailAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_KOREA_POPUP:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-object v1

    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast()V

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120902

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockTypeInSecure()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected handleClick()V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSimCheck() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    :cond_1
    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast()V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v3, Lcom/android/systemui/qs/tiles/-$Lambda$Zf2JuXZ_39MdBEUSoSTlDhouM3s$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$Zf2JuXZ_39MdBEUSoSTlDhouM3s$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " handleClick  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    if-nez v2, :cond_5

    return-void

    :cond_5
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v2, :cond_9

    :cond_6
    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_7

    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifiApState is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled()V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    xor-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " handleSecondaryClick  : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    :cond_1
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showItPolicyToast()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$Zf2JuXZ_39MdBEUSoSTlDhouM3s$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$Zf2JuXZ_39MdBEUSoSTlDhouM3s$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->dualTarget:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_ICON:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080543

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const-string/jumbo v0, "no_config_tethering"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateState :  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_ICON:Z

    if-eqz v0, :cond_1

    const v0, 0x7f08053c

    goto :goto_0

    :cond_1
    const v0, 0x7f08055d

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    goto :goto_1

    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_HotspotTile_10063()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleClick()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_HotspotTile_11774()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleClick()V

    return-void
.end method

.method protected makeCurrentStateToString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeCurrentStateToString"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method protected makeStringToCurrentState(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    const-string/jumbo v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState isSimCheck() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState handleClick  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    if-nez v2, :cond_3

    return-void

    :cond_3
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v2, :cond_7

    :cond_4
    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState wifiApState is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled()V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    xor-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method
