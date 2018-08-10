.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiSignalController$1;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$2;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final LGTssIds:[Ljava/lang/String;

.field private mActivityIconSet:[I

.field private mConnectionInfo:Landroid/net/wifi/WifiInfo;

.field private mEnabledStateFromIntent:Z

.field private mEnabledStateFromWifiManager:Z

.field private final mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

.field private final mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

.field private mEpdgMgr:Lcom/sec/epdg/EpdgManager;

.field private mEpdgMgrConnected:Z

.field private final mHasMobileData:Z

.field private mIsSecureWifiOn:Z

.field private mNetworkId:I

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mReceivedWifiStateChangedIntent:Z

.field private final mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private mScoringUiEnabled:Z

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mUseAPInfoAsCarrierText:Z

.field private final mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/sec/epdg/EpdgManager$EpdgListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/sec/epdg/EpdgManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/WifiSignalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgrConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/WifiSignalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIsSecureWifiOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/WifiSignalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoringUiEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getWifiBadgeEnum()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V
    .locals 14

    const-string/jumbo v2, "WifiSignalController"

    const/4 v4, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoringUiEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUseAPInfoAsCarrierText:Z

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "U+zone"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "U+ACN"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "5G_U+zone"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "U+zone_5G"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->LGTssIds:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "covert_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "covert_on"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsValueList:[Landroid/net/Uri;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v1, v2, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/net/wifi/WifiManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->registerbySystemUI(Z)V

    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileData:Z

    new-instance v11, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v11, p0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Looper;)V

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v12

    if-eqz v12, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v11, v12}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_WIFI_CALLING_ICON:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getEpdgManager(Landroid/content/Context;)Lcom/sec/epdg/EpdgManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "getEpdgManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUseAPInfoAsCarrierText:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    new-instance v1, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    const-string/jumbo v2, "Wi-Fi Icons"

    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const v6, 0x7f080749

    const v7, 0x7f0802cc

    const v8, 0x7f080749

    const v9, 0x7f0802cc

    const v10, 0x7f120082

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v1, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v1, v13, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    new-instance v1, Landroid/net/wifi/WifiNetworkScoreCache;

    new-instance v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$3;

    invoke-direct {v2, p0, v11}, Lcom/android/systemui/statusbar/policy/WifiSignalController$3;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V

    invoke-direct {v1, p1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->configureScoringGating()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->registerScoreCache()V

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SECURE_WIFI:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$4;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getSecureWifiState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIsSecureWifiOn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private configureScoringGating()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$5;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController$5;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_scoring_ui_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private getCarrierWifiIcon()I
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_VZW:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    aget-object v2, v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    aget v0, v2, v1

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_VZW:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "KTT"

    sget-object v2, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrier`WifiIcon : getFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isGigaAp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "getCarrierWifiIcon : KT AP and getFrequency is 5Ghz bandwidth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    aget-object v2, v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    aget v0, v2, v1

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_KT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "LGT"

    sget-object v2, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrierWifiIcon : getNetworkId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->isLGTWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getLGTWifiIcon()I

    move-result v0

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "getCarrierWifiIcon : mWifiManager.getConnectionInfo() == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getEpdgManager(Landroid/content/Context;)Lcom/sec/epdg/EpdgManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "getEpdgManager() : mEpdgMgr is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    invoke-direct {v0, p1, v1}, Lcom/sec/epdg/EpdgManager;-><init>(Landroid/content/Context;Lcom/sec/epdg/EpdgManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->connectService()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    return-object v0
.end method

.method private getLGTWifiIcon()I
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLGTWifiIcon: networkId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "eap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " phase2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_LGT:[I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    aget-object v3, v3, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    aget v2, v3, v2

    return v2

    :cond_1
    return v5
.end method

.method private getWifiBadgeEnum()I
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoringUiEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    if-nez v1, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    invoke-virtual {v0, v1}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v1

    return v1

    :cond_2
    return v3
.end method

.method private isLGTWifi()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCarrierWifiIcon : ssid = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->LGTssIds:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private registerScoreCache()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Registered score cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0, v2, v1, v2}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    return-void
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method private updateScoreCacheIfNecessary(Landroid/net/NetworkKey;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v0, p1}, Landroid/net/NetworkKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkScoreCache;->clearScores()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/NetworkKey;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-result-object v0

    return-object v0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;-><init>()V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mReceivedWifiStateChangedIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mReceivedWifiStateChangedIntent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mEnabledStateFromIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEnabledStateFromIntent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mEnabledStateFromWifiManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEnabledStateFromWifiManager:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_WIFI_CALLING_ICON:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mEpdgMgrConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEpdgMgrConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  wifiCallingConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiCallingConnected:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  imsConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->imsConnectionState:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method getActivityIcon()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    const/4 v2, 0x3

    aget v0, v1, v2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    const/4 v2, 0x2

    aget v0, v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    aget v0, v1, v2

    goto :goto_0
.end method

.method public getCurrentIconId()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_PURE:[[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    aget-object v3, v3, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    aget v1, v3, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v2

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mSbIcons:[[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    aget-object v3, v3, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    aget v1, v3, v2

    sget-boolean v2, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_CARRIER_WIFI_ICON:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCarrierWifiIcon()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    :cond_2
    sget-boolean v2, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_WIFI_CALLING_ICON:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiCallingConnected:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->imsConnectionState:Z

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    aget-object v3, v3, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    aget v1, v3, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQsCurrentIconId()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SECURE_WIFI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIsSecureWifiOn:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_SECURE:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    aget-object v1, v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    aget v0, v1, v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mQsIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    aget-object v1, v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    aget v0, v1, v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mQsDiscState:I

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mQsNullState:I

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v3, v4, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mReceivedWifiStateChangedIntent:Z

    const-string/jumbo v4, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEnabledStateFromIntent:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WIFI_STATE_CHANGED_ACTION received : enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEnabledStateFromIntent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateScoreCacheIfNecessary(Landroid/net/NetworkKey;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v6, v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v6, v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_7

    :cond_1
    :goto_2
    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v5, v5, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v5, v5, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v5, v5, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v5, v5, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v5, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->rssi:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v5, v5, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v5, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getWifiBadgeEnum()I

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->badgeEnum:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iput-boolean v5, v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEnabledStateFromWifiManager:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleBroadcast : mEnabledStateFromWifiManager = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mEnabledStateFromWifiManager:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_CARRIER_WIFI_ICON:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkId:I

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NETWORK_STATE_CHANGED_ACTION received : mConnectionInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mConnectionInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v5, v5, Lcom/android/settingslib/wifi/WifiStatusTracker;->connecting:Z

    goto/16 :goto_2
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 12

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileData:Z

    xor-int/lit8 v11, v0, 0x1

    :goto_0
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "net.smart_switch.disabled"

    const-string/jumbo v4, "1"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "notifyListeners : invisible by smart_switch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v11, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    :goto_1
    if-eqz v11, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getContentDescription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    const v4, 0x7f1200c5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconId()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->badgeEnum:I

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getWifiBadgeResource(I)I

    move-result v0

    invoke-direct {v2, v11, v1, v0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILjava/lang/String;)V

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getQsCurrentIconId()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->badgeEnum:I

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getWifiBadgeResource(I)I

    move-result v0

    invoke-direct {v3, v1, v4, v0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILjava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_MPTCP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshMPTCPIndicator()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUseAPInfoAsCarrierText:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f120aab

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    if-eqz v10, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    :goto_4
    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getActivityIcon()I

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void

    :cond_5
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f120aaa

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move v4, v5

    goto :goto_4
.end method

.method setActivity(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v4, :cond_1

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v4, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public unregisterListener()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SECURE_WIFI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    return-void
.end method

.method public updateImsConnectionState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->imsConnectionState:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method
