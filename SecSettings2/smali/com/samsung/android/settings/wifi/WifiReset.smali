.class public Lcom/samsung/android/settings/wifi/WifiReset;
.super Ljava/lang/Object;
.source "WifiReset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiReset$1;
    }
.end annotation


# static fields
.field private static final mConfigAutoConnectHotspot:Ljava/lang/String;

.field private static final mIsDisableWifi:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsReboot:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsDisableWifi:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsDisableWifi:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiReset;->mConfigAutoConnectHotspot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsReboot:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiReset$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiReset$1;-><init>(Lcom/samsung/android/settings/wifi/WifiReset;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsReboot:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiReset$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiReset$1;-><init>(Lcom/samsung/android/settings/wifi/WifiReset;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsReboot:Z

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_internet_service_check_warning"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "wifi_poor_connection_warning"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "wifi_networks_available_notification_on"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "wifi_sleep_policy"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isPasspointDefaultOn()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "wifi_hotspot20_enable"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    const-string/jumbo v2, "ssid"

    const-string/jumbo v3, "rssi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "wifi_ap_sort"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    const-string/jumbo v2, "DEFAULT_ON"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    const-string/jumbo v2, "ATT"

    sget-object v3, Lcom/samsung/android/settings/wifi/WifiReset;->mConfigAutoConnectHotspot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "wifi_auto_connecct"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1f

    iput v2, v1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "SKT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v6, v1, Landroid/os/Message;->arg1:I

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    const-string/jumbo v2, "hidden_ap_sinal_strength"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "wifi_connection_monitor_enable"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_offload_network_notify"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const/16 v2, 0xf2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsReboot:Z

    if-eqz v2, :cond_7

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiReset$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiReset$2;-><init>(Lcom/samsung/android/settings/wifi/WifiReset;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiReset$2;->start()V

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, "wifi_hotspot20_enable"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "wifi_ap_sort"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_6
    iput v5, v1, Landroid/os/Message;->arg1:I

    goto :goto_3

    :cond_7
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiReset$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiReset$3;-><init>(Lcom/samsung/android/settings/wifi/WifiReset;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiReset$3;->start()V

    goto :goto_4
.end method

.method public start()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsReboot:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0c68

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsReboot:Z

    if-eqz v2, :cond_1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xe6

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiReset;->reset()V

    goto :goto_0
.end method
