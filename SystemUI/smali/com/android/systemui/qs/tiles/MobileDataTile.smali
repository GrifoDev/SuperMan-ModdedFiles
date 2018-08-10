.class public Lcom/android/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "MobileDataTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/MobileDataTile$1;,
        Lcom/android/systemui/qs/tiles/MobileDataTile$2;,
        Lcom/android/systemui/qs/tiles/MobileDataTile$3;,
        Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;"
    }
.end annotation


# static fields
.field static final DATA_SETTINGS:Landroid/content/Intent;

.field static final DATA_SETTINGS_UPSM:Landroid/content/Intent;

.field static final LGT_ROAMING_SETTINGS:Landroid/content/Intent;

.field private static final MSGID_NO_SIM:I = 0x1

.field private static final MSGID_NULL:I

.field static final ROAMING_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataRoamingObserver:Landroid/database/ContentObserver;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mIsVoLteCall:Z

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/QSHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showItPolicyToast()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.settings.DATA_USAGE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.T_ROAMING_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->ROAMING_SETTINGS:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.GLOBAL_ROAMING_LGT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->LGT_ROAMING_SETTINGS:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.networkui"

    const-string/jumbo v2, "com.samsung.networkui.MobileNetworkSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v4, "mobile_data"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v4, "airplane_mode_on"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method

.method private isDataRoamingEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isNetworkRoaming()Z
    .locals 5

    const/4 v3, 0x0

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-string/jumbo v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    return v3

    :cond_2
    const-string/jumbo v2, "oversea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNetworkRoaming :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " currentplmn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " oversea = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "oversea"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private registerPhoneStateListener()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerPhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x801

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    return-void
.end method

.method private setDataRoaming(Z)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataRoaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_KOR_OPEN_POPUP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12077c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f12078c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$16;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$16;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$17;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$17;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const v3, 0x104000a

    const/high16 v5, 0x1040000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "send intent SKT_ROAMING_DATA_POPUP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "data_roaming"

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_LGT_POPUP:Z

    if-eqz v0, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "ENABLED"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f12077b

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/MobileDataTile$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$15;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 7

    const/4 v6, 0x0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showItPolicyToast()V

    return-object v6

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12041e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f12041f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const v3, 0x104000a

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    return-object v6

    :cond_2
    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    return-object v0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_LGT_POPUP:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->LGT_ROAMING_SETTINGS:Landroid/content/Intent;

    return-object v0

    :cond_4
    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->ROAMING_SETTINGS:Landroid/content/Intent;

    return-object v0

    :cond_5
    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x73

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120901

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 10

    const v9, 0x7f120a32

    const v3, 0x104000a

    const v4, 0x7f12078f

    const/high16 v8, 0x1040000

    const/4 v5, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12078e

    invoke-static {v0, v1, v5}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12078d

    invoke-static {v0, v1, v5}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleClick : state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is enabled :  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showItPolicyToast()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_KOREA_POPUP:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isMobileDataConnectionPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$VTL1ZF1YoTF2W9SVHVT7NKMHgcE$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$VTL1ZF1YoTF2W9SVHVT7NKMHgcE$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12041e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f12041f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$8;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_7
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_ON_OFF_POPUP_FOR_KOR:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_LGT_POPUP:Z

    if-eqz v0, :cond_9

    const v7, 0x7f120782

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$9;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$10;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    move-object v0, p0

    move v3, v9

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_9
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_KTT_POPUP:Z

    if-eqz v0, :cond_a

    const v7, 0x7f120781

    goto :goto_1

    :cond_a
    const v7, 0x7f120780

    goto :goto_1

    :cond_b
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_LGT_POPUP:Z

    if-eqz v0, :cond_c

    const v7, 0x7f120789

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$11;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$11;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$12;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$12;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    move-object v0, p0

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_c
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_KTT_POPUP:Z

    if-eqz v0, :cond_d

    const v7, 0x7f120788

    goto :goto_2

    :cond_d
    const v7, 0x7f120787

    goto :goto_2

    :cond_e
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_OFF_POPUP:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isVoLTEVideoCallSupportedSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_f

    const v7, 0x7f120786

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$13;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$13;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$14;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$14;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    move-object v0, p0

    move v3, v9

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_f
    const v7, 0x7f120785

    goto :goto_3

    :cond_10
    const v7, 0x7f120784

    goto :goto_3

    :cond_11
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_ATT_POPUP:Z

    if-eqz v0, :cond_12

    const v7, 0x7f12077e

    goto :goto_3

    :cond_12
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_DCM_POPUP:Z

    if-eqz v0, :cond_13

    const v7, 0x7f12077f

    goto :goto_3

    :cond_13
    const v7, 0x7f12077d

    goto :goto_3

    :cond_14
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->unregisterPhoneStateListener()V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DATA_ROAMING_IN_MOBILE_DATA:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12078d

    invoke-static {v0, v1, v5}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showItPolicyToast()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12041e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f12041f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const v3, 0x104000a

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080504

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f1208d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result v1

    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleUpdateState : state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    :goto_2
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    if-eqz v1, :cond_0

    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v1, :cond_1

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const v1, 0x7f120901

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eq v1, v3, :cond_4

    move v1, v3

    :goto_3
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_MobileDataTile_11853()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleClick()V

    return-void
.end method

.method protected makeCurrentStateToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

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

    const/4 v4, 0x0

    const-string/jumbo v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v2, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState failed value = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " enabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    return-void

    :cond_2
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_ON_OFF_POPUP_FOR_KOR:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState roaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v3, 0x7f12078e

    invoke-static {v2, v3, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStringToCurrentState set = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->fireToggleStateChanged(Z)V

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileDataEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState()V

    return-void
.end method
