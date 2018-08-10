.class public Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "SmartNetworkSwitchPrefController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$1;,
        Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;
    }
.end annotation


# static fields
.field private static final mIsSupportAdaptiveWifi:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mFilter:Landroid/content/IntentFilter;

.field private final mFragment:Landroid/app/Fragment;

.field private mIsAvailable:Z

.field private mIsSupportAdaptiveNaming:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchServiceCheck()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveWifi:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "Smart Network Switch"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveNaming:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private updateSmartNetworkSwitchServiceCheck()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f122189

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f122187

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f122188

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_4

    const/4 v1, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveNaming:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f122153

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f122148

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f121b3e

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f12214a

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSmartNetworkSwitchVisible()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchServiceCheck()V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v1, "wifi_poor_network_detection"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v1, "ConfigureWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsSupportAdaptiveWifi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ro.radio.noril"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsAvailable:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchVisible()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi_poor_network_detection"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v4, 0x7f122186

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wifi_poor_network_detection"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    const-class v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    check-cast v5, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mFragment:Landroid/app/Fragment;

    const-class v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    move v8, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_1
    return v7
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x131

    iput v3, v2, Landroid/os/Message;->what:I

    iput v5, v2, Landroid/os/Message;->arg1:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    iput v4, v2, Landroid/os/Message;->arg2:I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_watchdog_poor_network_test_enabled"

    if-eqz v0, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "ConfigureWifiSettings"

    const-string/jumbo v6, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v3

    if-eqz v0, :cond_0

    move v5, v4

    :cond_0
    int-to-long v6, v5

    const v5, 0x7f121760

    const v8, 0x7f120a16

    invoke-virtual {v3, v5, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchServiceCheck()V

    return v4

    :cond_1
    iput v5, v2, Landroid/os/Message;->arg2:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->arg2:I

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    return v5
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mIsSupportAdaptiveWifi:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mPoorNetworkDetection:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->updateSmartNetworkSwitchServiceCheck()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
