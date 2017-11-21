.class public Lcom/samsung/android/settings/WirelessSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/WirelessSettings$1;,
        Lcom/samsung/android/settings/WirelessSettings$2;,
        Lcom/samsung/android/settings/WirelessSettings$3;,
        Lcom/samsung/android/settings/WirelessSettings$4;,
        Lcom/samsung/android/settings/WirelessSettings$5;,
        Lcom/samsung/android/settings/WirelessSettings$6;,
        Lcom/samsung/android/settings/WirelessSettings$7;
    }
.end annotation


# static fields
.field private static final ALLSHARE_FRAMEWORK:Z

.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mTetheredDataML:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonWfc:Landroid/preference/PreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataUsage:Landroid/preference/PreferenceScreen;

.field private mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

.field private mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEthernetStateReceiver:Landroid/database/ContentObserver;

.field private mHotspot:Landroid/preference/PreferenceScreen;

.field private mMPTCPObserver:Landroid/database/ContentObserver;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mMobileNetworkForC:Landroid/preference/PreferenceScreen;

.field private mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private mScreenSharingObserver:Landroid/database/ContentObserver;

.field private mScreenSharingReady:Landroid/preference/PreferenceScreen;

.field private mSmartBonding:Landroid/preference/SwitchPreference;

.field private mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

.field private mTetheredData:I

.field private mTetheringSettings:Landroid/preference/Preference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;

.field private mVerizonEmergencyAlert:Landroid/preference/PreferenceScreen;

.field private mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private ps:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->ALLSHARE_FRAMEWORK:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get6()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_ALLSHARE_CONFIG_VERSION"

    const-string/jumbo v2, "DMC_ONLY"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->ALLSHARE_FRAMEWORK:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/WirelessSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/WirelessSettings$1;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$2;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$3;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$4;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$5;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/WirelessSettings$7;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private canRemoveVzwDataPlanPreference()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v3, " Check whether the Verizon Data plan preference can be removed? "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v3, "CscFeature_Common_ConfigPco"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VZW_PREPAID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "VZW_TABLET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v3, " User account don\'t show Data Plan "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v4
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isEnabledWifiCallingActivity(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.samsung.tmowfc.wfcpref"

    const-string/jumbo v7, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    const-string/jumbo v6, "WirelessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wificalling activity is not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x1

    :cond_0
    move-object v0, v1

    :goto_0
    const-string/jumbo v6, "WirelessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabledWifiCallingActivity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v0, v1

    goto :goto_1
.end method

.method private isHotspotTestMode()Z
    .locals 13

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string/jumbo v11, "wifi"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v11, 0xbf

    iput v11, v7, Landroid/os/Message;->what:I

    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-ne v11, v10, :cond_1

    const/4 v8, 0x1

    :goto_0
    sget-boolean v11, Lcom/samsung/android/settings/WirelessSettings;->DBG:Z

    if-eqz v11, :cond_4

    const-string/jumbo v0, "/data/misc/wifi/hotspot_info"

    const/4 v1, 0x0

    const-string/jumbo v3, ""

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    const-string/jumbo v11, "ATT_HOTSPOT"

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-ne v11, v10, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_2
    if-nez v6, :cond_6

    :goto_3
    return v8

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_6
    throw v10

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_6
    move v8, v10

    goto :goto_3

    :catchall_1
    move-exception v10

    move-object v1, v2

    goto :goto_5

    :catch_4
    move-exception v4

    move-object v1, v2

    goto :goto_4
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerForObserver()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mptcp_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterForObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public callRcsSettings(Landroid/preference/Preference;)V
    .locals 6

    const-string/jumbo v3, "rcs_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne p1, v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.config.VIEW_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.rcs"

    const-string/jumbo v4, "com.samsung.rcs.configs.ServicesSwitch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "rcs_settings_partial_branded"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne p1, v3, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.config.VIEW_SETTINGS_PARTIAL_BRANDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.rcs"

    const-string/jumbo v4, "com.samsung.rcs.configs.PartialBrandedServicesSwitch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v3, "rcs_settings_partial_branded_cpr"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne p1, v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.config.VIEW_SETTINGS_PARTIAL_BRANDED_CPR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.rcs"

    const-string/jumbo v4, "com.samsung.rcs.configs.PartialBrandedServicesCPRSwitch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v1

    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b18a6

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 36

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v32, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    :cond_0
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    const-string/jumbo v32, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v32, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v32, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/UserManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v32, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const v32, 0x7f0800f2

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/preference/PreferenceScreen;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_1f

    const/4 v15, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v32, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    new-instance v32, Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    const/16 v21, 0x0

    if-eqz v15, :cond_20

    const-string/jumbo v32, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v32, "toggle_nearby_scanning"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v32, "display"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    if-eqz v7, :cond_22

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->checkScreenSharingReadySupported()I

    move-result v32

    if-nez v32, :cond_22

    const-string/jumbo v32, "screen_sharing_ready_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const v33, 0x7f0b19dd

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const v33, 0x7f0b19dd

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    :goto_2
    const/4 v7, 0x0

    const-string/jumbo v32, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mDataUsage:Landroid/preference/PreferenceScreen;

    const-string/jumbo v32, "mobile_network_settings_for_C"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v32

    if-nez v32, :cond_2

    const-string/jumbo v32, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v32, "nfc_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const-string/jumbo v33, "android.hardware.nfc"

    invoke-virtual/range {v32 .. v33}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_3

    const-string/jumbo v32, "nfc_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v32, "network_management"

    invoke-static/range {v32 .. v32}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v20

    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v32

    if-nez v32, :cond_4

    const-string/jumbo v32, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    :goto_3
    const-string/jumbo v32, "header_connection_tethering_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mHotspot:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v32

    if-eqz v32, :cond_5

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_6

    :cond_5
    const-string/jumbo v32, "header_connection_tethering_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v32, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    const-string/jumbo v32, "wifi_ap_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "airplane_mode_toggleable_radios"

    invoke-static/range {v32 .. v33}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v32, v0

    const-string/jumbo v33, "no_config_vpn"

    invoke-virtual/range {v32 .. v33}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_a

    :cond_9
    const-string/jumbo v32, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v32, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_a
    if-eqz v29, :cond_b

    const-string/jumbo v32, "bluetooth"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_b

    :cond_b
    if-eqz v13, :cond_c

    if-nez v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_c

    const-string/jumbo v32, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v33

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v32

    if-eqz v32, :cond_d

    :cond_c
    const-string/jumbo v32, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_23

    const-string/jumbo v32, "VZW"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_23

    :goto_4
    const-string/jumbo v32, "VZW"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_24

    sget-boolean v32, Lcom/samsung/android/settings/WirelessSettings;->ALLSHARE_FRAMEWORK:Z

    if-eqz v32, :cond_24

    :goto_5
    if-nez v15, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_25

    const-string/jumbo v32, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    new-instance v32, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->canRemoveVzwDataPlanPreference()Z

    move-result v32

    if-eqz v32, :cond_e

    const-string/jumbo v32, "data_plan_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v32, v0

    const-string/jumbo v33, "android.hardware.type.television"

    invoke-virtual/range {v32 .. v33}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_27

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v32

    if-eqz v32, :cond_27

    :goto_7
    const-string/jumbo v32, "persist.sys.tether_data"

    const/16 v33, -0x1

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    move/from16 v32, v0

    sput v32, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    const/4 v14, 0x0

    const/16 v28, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v33, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_10

    const-string/jumbo v32, "persist.sys.tether_data_usb"

    const/16 v33, -0x1

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v28

    const-string/jumbo v32, "persist.sys.tether_data_bt"

    const/16 v33, -0x1

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v26

    const-string/jumbo v32, "persist.sys.tether_data_wifi"

    const/16 v33, -0x1

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v27

    const/16 v32, -0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    const/16 v32, -0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-eq v0, v1, :cond_28

    :cond_f
    :goto_8
    const/4 v14, 0x1

    :cond_10
    const-string/jumbo v32, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    const-string/jumbo v32, "connectivity"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    if-nez v15, :cond_29

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v32

    if-eqz v32, :cond_29

    const-string/jumbo v32, "SBM"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->isHotspotTestMode()Z

    move-result v32

    if-eqz v32, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0079

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0b5f

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setSummary(I)V

    :cond_11
    :goto_9
    const-string/jumbo v32, "SBM"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    const-string/jumbo v32, "WirelessSettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "KEY_TETHER_SETTINGS isSecondaryUser: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " cm:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " wifi:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " mTetherdData"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string/jumbo v33, "com.ipsec.vpnclient"

    invoke-static/range {v32 .. v33}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2d

    const-string/jumbo v32, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string/jumbo v33, "wfc_settings_holder_key"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v33, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v33, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/samsung/tmowfc/wfcutils/WfcUtilsHelper;->isValidSim(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/settings/WirelessSettings;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_2e

    const-string/jumbo v32, "Global"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2e

    :cond_13
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    new-instance v32, Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string/jumbo v33, "com.samsung.rcs"

    invoke-static/range {v32 .. v33}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2f

    const-string/jumbo v32, "WirelessSettings"

    const-string/jumbo v33, "RCS application is not installed"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v32, v0

    if-eqz v32, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    :cond_14
    :goto_c
    const-string/jumbo v32, "MTR"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string/jumbo v33, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const-string/jumbo v33, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual/range {v32 .. v33}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const-string/jumbo v33, "com.samsung.android.app.mirrorlink"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v22

    if-eqz v16, :cond_17

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v33, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_16

    const-string/jumbo v32, "TFN"

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_30

    :cond_16
    sget v32, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_30

    :cond_17
    :goto_d
    const-string/jumbo v32, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_18
    :goto_e
    const-string/jumbo v32, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    if-eqz v32, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string/jumbo v33, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_19
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v32

    if-nez v32, :cond_38

    const-string/jumbo v32, "smart_bonding_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_1a

    const-string/jumbo v32, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v32, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_1a
    if-nez v15, :cond_39

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v33, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_39

    :goto_10
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v32

    if-eqz v32, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v32

    if-nez v32, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v32

    if-eqz v32, :cond_1c

    :cond_1b
    if-eqz v15, :cond_3a

    :cond_1c
    const-string/jumbo v32, "multi_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_1d
    :goto_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v32

    if-eqz v32, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v33, v0

    new-instance v34, Landroid/content/IntentFilter;

    const-string/jumbo v35, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-direct/range {v34 .. v35}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1e
    const-string/jumbo v32, "key_vzw_emergency_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mVerizonEmergencyAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_3b

    :goto_12
    new-instance v32, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v32 .. v32}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_1f
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v32

    if-nez v32, :cond_21

    new-instance v33, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const-string/jumbo v32, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    const-string/jumbo v32, "toggle_nearby_scanning"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    new-instance v33, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const-string/jumbo v32, "toggle_nearby_scanning"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    const-string/jumbo v32, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v32, "screen_sharing_ready_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    goto/16 :goto_2

    :cond_23
    const-string/jumbo v32, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_24
    const-string/jumbo v32, "media_share_category_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    const-string/jumbo v32, "nearby_setting_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_25
    const-string/jumbo v32, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_26
    const-string/jumbo v32, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_27
    const-string/jumbo v32, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_28
    const/16 v32, -0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-eq v0, v1, :cond_10

    goto/16 :goto_8

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    move-result v25

    const/16 v32, -0x1

    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0078

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_2c

    const/16 v32, 0x0

    :goto_13
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9

    :cond_2c
    const/16 v32, 0x1

    goto :goto_13

    :cond_2d
    const-string/jumbo v32, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_2e
    const/16 v31, 0x0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const v34, 0x7f080146

    const/16 v35, 0x0

    invoke-virtual/range {v32 .. v35}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v31

    const-string/jumbo v32, "wfc_settings_key"

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v30}, Landroid/preference/Preference;->getOrder()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception v10

    const-string/jumbo v32, "WirelessSettings"

    const-string/jumbo v33, "cannot add WfcSwitchPreference"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v32, v0

    if-eqz v32, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    goto/16 :goto_c

    :cond_30
    if-eqz v14, :cond_18

    const/16 v32, 0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_18

    goto/16 :goto_d

    :catch_1
    move-exception v8

    :try_start_3
    const-string/jumbo v32, "WirelessSettings"

    const-string/jumbo v33, "MirrorLink application is not installed"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v16, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v22

    if-eqz v16, :cond_32

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v33, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_31

    const-string/jumbo v32, "TFN"

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_33

    :cond_31
    sget v32, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_33

    :cond_32
    :goto_14
    const-string/jumbo v32, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_33
    if-eqz v14, :cond_18

    const/16 v32, 0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_18

    goto :goto_14

    :catchall_0
    move-exception v32

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v22

    if-eqz v16, :cond_35

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_34

    const-string/jumbo v33, "TFN"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_37

    :cond_34
    sget v33, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_37

    :cond_35
    :goto_15
    const-string/jumbo v33, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_36
    throw v32

    :cond_37
    if-eqz v14, :cond_36

    const/16 v33, 0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-ge v0, v1, :cond_36

    goto :goto_15

    :cond_38
    const-string/jumbo v32, "smart_bonding_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/SwitchPreference;

    new-instance v32, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/SwitchPreference;

    move-object/from16 v34, v0

    invoke-direct/range {v32 .. v34}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    goto/16 :goto_f

    :cond_39
    const-string/jumbo v32, "network_reset"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_3a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v32

    if-eqz v32, :cond_1d

    const-string/jumbo v32, "multi_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    const v32, 0x7f0b0ba7

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    const-string/jumbo v32, "com.samsung.android.settings.GigaLteSettings"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_3b
    const-string/jumbo v32, "key_vzw_emergency_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_12

    :catch_2
    move-exception v9

    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/WirelessSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/WirelessSettings$8;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->pause()V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/WirelessSettings;->unregisterForObserver()V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MoreConnectionSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceTreeClick: preference="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_0

    const-string/jumbo v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v4, "WirelessSettings"

    const-string/jumbo v5, "Activity Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "rcs_settings"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eq p2, v4, :cond_1

    const-string/jumbo v4, "rcs_settings_partial_branded"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne p2, v4, :cond_3

    :cond_1
    :goto_1
    const-string/jumbo v4, "com.samsung.android.messaging"

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/applications/DefaultSmsPreference;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "package"

    const-string/jumbo v5, "com.samsung.android.messaging"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_3
    const-string/jumbo v4, "rcs_settings_partial_branded_cpr"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne p2, v4, :cond_2

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "WirelessSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IllegalStateException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v4, "WirelessSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " doesn\'t exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/WirelessSettings;->callRcsSettings(Landroid/preference/Preference;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 19

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v15}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->resume()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v15}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->resume()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v15}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v16, "no_config_tethering"

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v16, "no_config_vpn"

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string/jumbo v15, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v15, "vpn_settings_for_att"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_4
    const-string/jumbo v15, "mobile_network_settings_for_C"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v16, 0x7f0b0e1f

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_6
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v17, "isVpnAllowed"

    invoke-static/range {v15 .. v17}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_12

    const/4 v15, 0x1

    :goto_1
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v15, -0x1

    if-eq v2, v15, :cond_8

    const-string/jumbo v15, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_7

    const-string/jumbo v15, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_7
    const-string/jumbo v15, "vpn_settings_for_att"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_8

    const-string/jumbo v15, "vpn_settings_for_att"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v15

    const-string/jumbo v16, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v15}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onResume()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-static {v3}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "com.samsung.rcs"

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string/jumbo v15, "WirelessSettings"

    const-string/jumbo v16, "RCS application is not installed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "airplane_mode_toggleable_radios"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_15

    const-string/jumbo v15, "wifi"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_15

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v15}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()Z

    :cond_b
    const-string/jumbo v15, "display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->checkScreenSharingReadySupported()I

    move-result v15

    if-nez v15, :cond_d

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    const v16, 0x7f0b19dd

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_c
    const/4 v4, 0x0

    :cond_d
    const-string/jumbo v15, "multi_path"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_e

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "mptcp_value"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_17

    const v15, 0x7f0b19dc

    :goto_6
    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->registerForObserver()V

    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/String;

    const-string/jumbo v15, "false"

    const/16 v16, 0x0

    aput-object v15, v12, v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v17, "isWifiEnabled"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v17, "isCellularDataAllowed"

    invoke-static/range {v15 .. v17}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v15, -0x1

    if-eq v9, v15, :cond_18

    if-nez v9, :cond_18

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    :cond_10
    return-void

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v16, 0x7f0b0e20

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v15, "wifi_calling_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    goto/16 :goto_4

    :cond_15
    const-string/jumbo v15, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "airplane_mode_on"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_16

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_16
    const/4 v15, 0x0

    goto :goto_7

    :cond_17
    const v15, 0x7f0b19dd

    goto/16 :goto_6

    :cond_18
    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v15}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->resume()V

    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1b

    :cond_1a
    const-string/jumbo v15, "network_unlock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v17, v0

    const-string/jumbo v18, "MoreConnectionSettings"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_1b
    const-string/jumbo v15, "network_unlock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_1c

    const-string/jumbo v15, "network_unlock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1c
    new-instance v11, Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v15}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;-><init>(Landroid/content/Context;)V

    new-instance v15, Lcom/samsung/android/settings/WirelessSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/WirelessSettings$9;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    invoke-virtual {v11, v15}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus(Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)V

    goto :goto_8
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
