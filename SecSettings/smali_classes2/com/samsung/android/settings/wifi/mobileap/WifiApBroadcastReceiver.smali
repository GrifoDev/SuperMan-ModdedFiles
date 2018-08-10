.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static mGateTraceTag:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsHelpFromTetherSettings:Z

.field public static mIsHelpFromWifiApSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I

.field private static mMaxClientNum:I


# instance fields
.field private mIsDeviceATT:Z

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    const-string/jumbo v0, "GATE"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromWifiApSettings:Z

    sput v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationBuilder:Landroid/app/Notification$Builder;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isMobileApON(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi Manager is null, returning mobile ap not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    return v4
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Provisioning.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ATT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "TMO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "NEWCO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net.tethering.noprovisioning"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    return v4

    :cond_3
    array-length v2, v0

    if-ne v2, v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    array-length v2, v0

    if-ne v2, v5, :cond_7

    const/4 v2, 0x1

    return v2

    :cond_7
    return v4
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v1

    return v1
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWifiPowerModeAlarmIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",:com.android.settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setRvfMode(Landroid/content/Context;I)V
    .locals 4

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x1b

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "mode"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3

    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V
    .locals 3

    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_provision_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method clearLimitDataReachNotification(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v2, 0x7f121f1f

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f121f3a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method clearWifiScanListNotification(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v2, 0x7f121e7c

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const-string/jumbo v0, "WifiApBroadcastReceiver"

    const-string/jumbo v1, "clearWifiScanListNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 60

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v52

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "onReceive: action "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " userID :"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    if-eqz v52, :cond_1

    :cond_0
    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "do nothing, action is null or Knox userID:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v56, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_16

    const-string/jumbo v56, "wifi_state"

    const/16 v57, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    sget-boolean v56, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v56, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearLimitDataReachNotification(Landroid/content/Context;)V

    :cond_3
    const-string/jumbo v56, "ATT"

    sget-object v57, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_4

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    :cond_4
    const-string/jumbo v56, "VZW"

    sget-object v57, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    :try_start_0
    const-string/jumbo v56, "wifi_ap_saved_state"

    move-object/from16 v0, v56

    invoke-static {v11, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_5

    const/16 v56, 0x1

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    const-string/jumbo v56, "wifi_ap_saved_state"

    const/16 v57, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    if-nez v56, :cond_6

    const-string/jumbo v56, "SAMSUNG_HOTSPOT"

    const/16 v57, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    const-string/jumbo v57, "PROVISIONING_RESULT"

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v48

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "value of provisioning result is  and flag value "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, "  "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    sget-boolean v58, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v56

    if-eqz v56, :cond_c

    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    xor-int/lit8 v56, v56, 0x1

    if-eqz v56, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v56

    if-nez v56, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    move/from16 v56, v0

    xor-int/lit8 v56, v56, 0x1

    if-eqz v56, :cond_c

    const-string/jumbo v56, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    xor-int/lit8 v56, v56, 0x1

    if-eqz v56, :cond_c

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v56

    const/16 v57, 0xd

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_8

    const-string/jumbo v56, "VZW"

    sget-object v57, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v56, "vzw_provision_result"

    const/16 v57, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v56, :cond_7

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "provisionValue.."

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    packed-switch v45, :pswitch_data_1

    :cond_8
    :goto_2
    :pswitch_2
    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v56, :cond_9

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v56

    if-nez v56, :cond_9

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v56

    const/16 v57, 0xd

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_9

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v56

    if-eqz v56, :cond_9

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string/jumbo v56, "PROVISIONING_RESULT"

    const/16 v57, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_3
    const/16 v56, 0x0

    const/16 v57, 0x0

    invoke-virtual/range {v55 .. v57}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const/16 v56, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto :goto_2

    :pswitch_4
    const/16 v56, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto :goto_2

    :cond_a
    if-nez v48, :cond_b

    const/16 v56, 0x0

    const/16 v57, 0x0

    invoke-virtual/range {v55 .. v57}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v56, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Setting the mIsProvisioningResultOk flag  to false"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v56, 0x0

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto/16 :goto_2

    :cond_c
    const/16 v56, 0x0

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto/16 :goto_2

    :pswitch_5
    sget-boolean v56, Lcom/android/settings/Utils;->SPF_SupportMobileApDataLimit:Z

    if-eqz v56, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v56

    const-string/jumbo v57, "wifi_ap_mobile_data_limit"

    const/16 v58, 0x0

    invoke-static/range {v56 .. v58}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_12

    const/16 v24, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v56

    const-string/jumbo v57, "wifi_ap_mobile_data_limit_value"

    invoke-static/range {v56 .. v57}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v56

    const-string/jumbo v57, "wifi_ap_mobile_data_usage_value"

    invoke-static/range {v56 .. v57}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v56, :cond_d

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Mobile AP data limited : "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, ", limit data : "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, ", usage data : "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v24, :cond_e

    if-eqz v51, :cond_e

    move-object/from16 v0, v51

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_e

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Mobile AP usage data reached limit, show notification"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showLimitDataReachNotification(Landroid/content/Context;)V

    :cond_e
    const/16 v56, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/net/wifi/WifiManager;

    if-eqz v55, :cond_2

    new-instance v35, Landroid/os/Message;

    invoke-direct/range {v35 .. v35}, Landroid/os/Message;-><init>()V

    const/16 v56, 0x4d

    move/from16 v0, v56

    move-object/from16 v1, v35

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v56, "bigdata"

    const/16 v57, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v56, "feature"

    const-string/jumbo v57, "MHSI"

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v32, "not_support"

    const-string/jumbo v27, "not_support"

    const-string/jumbo v28, "not_support"

    const-string/jumbo v25, "swlan0"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v56

    const-string/jumbo v57, "wifi_ap_timeout_setting"

    sget v58, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    div-int/lit8 v58, v58, 0x3c

    invoke-static/range {v56 .. v58}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v56, "wifi_ap_wifi_sharing"

    const/16 v57, 0xa

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v56

    const/16 v57, 0xa

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_13

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Wifi Sharing first time provider value "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, "wifi_ap_wifi_sharing"

    const/16 v59, 0xa

    move-object/from16 v0, v58

    move/from16 v1, v59

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v32, "-1"

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v56

    const-string/jumbo v57, "wifi_ap_pmf_checked"

    const/16 v58, 0x0

    invoke-static/range {v56 .. v58}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_15

    const-string/jumbo v27, "pmf_on"

    :goto_5
    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    const-string/jumbo v37, "CustomSSID"

    const-string/jumbo v7, "All"

    move-object/from16 v0, v31

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v56, v0

    const/16 v57, 0x3

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_f

    const-string/jumbo v7, "Only"

    :cond_f
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v56, v0

    const-string/jumbo v57, "Android"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_10

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v56, v0

    const-string/jumbo v57, "Verizon"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_10

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v56, v0

    const-string/jumbo v57, "Samsung"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_10

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v56, v0

    const-string/jumbo v57, "Galaxy"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_10

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v56, v0

    const-string/jumbo v57, "SM-"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v56

    if-eqz v56, :cond_11

    :cond_10
    const-string/jumbo v37, "DefaultSSID"

    :cond_11
    const-string/jumbo v34, ""

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v31

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    sget v57, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Bigdata logging "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v56, "data"

    move-object/from16 v0, v56

    move-object/from16 v1, v34

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v35

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v55

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v56

    const-string/jumbo v57, "wifi_ap_wifi_sharing"

    const/16 v58, 0x0

    invoke-static/range {v56 .. v58}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_14

    const-string/jumbo v32, "sharing_on"

    goto/16 :goto_4

    :cond_14
    const-string/jumbo v32, "sharing_off"

    goto/16 :goto_4

    :cond_15
    const-string/jumbo v27, "pmf_off"

    goto/16 :goto_5

    :pswitch_6
    const/16 v56, 0x0

    sput v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->setRvfMode(Landroid/content/Context;I)V

    const/16 v56, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v56, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_23

    const-string/jumbo v56, "wifiap_power_mode_alarm_option"

    const/16 v57, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    if-nez v40, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v56

    if-eqz v56, :cond_17

    const-string/jumbo v56, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_17

    return-void

    :cond_17
    :try_start_1
    const-string/jumbo v56, "wifi_ap_plugged_type"

    move-object/from16 v0, v56

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v42

    :goto_6
    const-string/jumbo v56, "TMO"

    sget-object v57, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_19

    const-string/jumbo v56, "NEWCO"

    sget-object v57, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    :goto_7
    if-eqz v56, :cond_18

    if-nez v42, :cond_2

    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v44

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "ALARM_START : set "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " sec"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v44, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    move/from16 v0, v44

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v58, v0

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    add-long v18, v56, v58

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v56, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v56

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v56, "wifiap_power_mode_alarm_option"

    const/16 v57, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v56, "com.android.settings"

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v56, 0x0

    const/high16 v57, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v41

    const-string/jumbo v56, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    const/16 v56, 0x0

    move/from16 v0, v56

    move-wide/from16 v1, v18

    move-object/from16 v3, v41

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/16 v56, 0x0

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v56, 0x1

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const/16 v42, 0x0

    goto/16 :goto_6

    :cond_19
    const/16 v56, 0x1

    goto/16 :goto_7

    :cond_1a
    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v56, :cond_1b

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v56, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v56

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v56, "wifiap_power_mode_alarm_option"

    const/16 v57, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v56, "com.android.settings"

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v56, 0x0

    const/high16 v57, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v41

    const-string/jumbo v56, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1b
    const/16 v56, 0x0

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :cond_1c
    const/16 v56, 0x4

    move/from16 v0, v40

    move/from16 v1, v56

    if-ne v0, v1, :cond_1d

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    sget v58, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v56, :cond_2

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_1d
    const/16 v56, 0x1

    move/from16 v0, v40

    move/from16 v1, v56

    if-ne v0, v1, :cond_22

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "ALARM_EXPIRE"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/16 v56, 0x1

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v56, 0x0

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    const-string/jumbo v56, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/os/PowerManager;

    const-string/jumbo v56, "MobileAPCloseService"

    const/16 v57, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v57

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v29

    if-eqz v29, :cond_1e

    :try_start_2
    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1e
    :goto_8
    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v53

    const/16 v54, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v44

    new-instance v35, Landroid/os/Message;

    invoke-direct/range {v35 .. v35}, Landroid/os/Message;-><init>()V

    const/16 v56, 0x3

    move/from16 v0, v56

    move-object/from16 v1, v35

    iput v0, v1, Landroid/os/Message;->what:I

    const/16 v39, 0x0

    const/16 v56, 0xd

    move/from16 v0, v53

    move/from16 v1, v56

    if-ne v0, v1, :cond_1f

    :try_start_3
    move-object/from16 v0, v55

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v39

    :cond_1f
    :goto_9
    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "powermode_value = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v39, :cond_21

    const/16 v56, 0xd

    move/from16 v0, v53

    move/from16 v1, v56

    if-ne v0, v1, :cond_21

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v56

    xor-int/lit8 v56, v56, 0x1

    if-eqz v56, :cond_21

    if-eqz v44, :cond_21

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "--> ap disable"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v56, 0x0

    const/16 v57, 0x0

    invoke-virtual/range {v55 .. v57}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string/jumbo v56, "VZW"

    sget-object v57, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_20

    const v56, 0x7f121f64

    const/16 v57, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/widget/Toast;->show()V

    :cond_20
    const-string/jumbo v56, "ATT"

    sget-object v57, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_21

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showTimeoutNotification(Landroid/content/Context;)V

    :cond_21
    if-eqz v29, :cond_2

    :try_start_4
    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/16 v29, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v13

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Cannot acquire wake lock ~~"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :catch_2
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_9

    :catch_3
    move-exception v13

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Cannot release wake lock ~~"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_22
    const/16 v56, 0x2

    move/from16 v0, v40

    move/from16 v1, v56

    if-ne v0, v1, :cond_2

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "ALARM_STOP"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v56, :cond_2

    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v56, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v56, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v56

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v56, "wifiap_power_mode_alarm_option"

    const/16 v57, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v56, "com.android.settings"

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v56, 0x0

    const/high16 v57, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v41

    const-string/jumbo v56, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v56, 0x0

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v56, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_25

    const-string/jumbo v56, "wifiap_plug_state_changed_option"

    const/16 v57, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    if-nez v40, :cond_24

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Unplugged"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v53

    const/16 v56, 0xd

    move/from16 v0, v53

    move/from16 v1, v56

    if-ne v0, v1, :cond_2

    sget v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v56, :cond_2

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Plugged"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v56, :cond_2

    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v56, :cond_2

    const/16 v56, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v56, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2a

    const-string/jumbo v56, "NUM"

    const/16 v57, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v4, :cond_26

    const/4 v4, 0x0

    :cond_26
    sget v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    move/from16 v0, v56

    if-le v4, v0, :cond_27

    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    :cond_27
    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "MaxClientNum1 = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    sget v58, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_29

    sget-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    xor-int/lit8 v56, v56, 0x1

    if-eqz v56, :cond_29

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    :cond_28
    :goto_a
    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    :cond_29
    if-lez v4, :cond_28

    const/16 v56, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_a

    :cond_2a
    const-string/jumbo v56, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2b

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v56, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2d

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "WIFI_AP_DRIVER_STATE_HANGED"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v56

    const/16 v57, 0xd

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2c

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v56

    const/16 v57, 0xc

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_2

    :cond_2c
    const/16 v56, 0x0

    const/16 v57, 0x0

    invoke-virtual/range {v55 .. v57}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v56, 0x1b58

    :try_start_5
    invoke-static/range {v56 .. v57}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_b
    const/16 v56, 0x1

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/16 v56, 0x0

    const/16 v57, 0x1

    invoke-virtual/range {v55 .. v57}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :catch_4
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b

    :cond_2d
    const-string/jumbo v56, "com.samsung.android.intent.action.WIFIAP_RESET"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2e

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Received Skip Provision and Reset intent from SoftApStateMachine"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/net/wifi/WifiManager;

    const/16 v56, 0x1

    sput-boolean v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    new-instance v35, Landroid/os/Message;

    invoke-direct/range {v35 .. v35}, Landroid/os/Message;-><init>()V

    const/16 v56, 0xc5

    move/from16 v0, v56

    move-object/from16 v1, v35

    iput v0, v1, Landroid/os/Message;->what:I

    move-object/from16 v0, v55

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v46

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v56, "reset_provider"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_30

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Reset Provider Called"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v56

    const-string/jumbo v57, "wifi_ap_wifi_sharing"

    const/16 v58, 0xa

    invoke-static/range {v56 .. v58}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "WIFI_AP_WIFI_SHARING provider value after putting 10"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    const-string/jumbo v59, "wifi_ap_wifi_sharing"

    invoke-static/range {v58 .. v59}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    if-nez v56, :cond_2f

    const-string/jumbo v56, "SAMSUNG_HOTSPOT"

    const/16 v57, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    invoke-interface/range {v56 .. v56}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string/jumbo v56, "wifi_disconnect_do_not_show"

    const/16 v57, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v16

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Error in putting off provider value"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v56, "enable_provider"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_31

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Enabling Wifi Sharing "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    sget-boolean v58, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v56, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v56, :cond_2

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    const/16 v56, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiSharingEnabled(Z)Z

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v56, "disable_provider"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_32

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Disabling Wifi Sharing "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    sget-boolean v58, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v56, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v56, :cond_2

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    const/16 v56, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiSharingEnabled(Z)Z

    goto/16 :goto_0

    :cond_32
    const-string/jumbo v56, "com.samsung.intent.action.START_PROVISIONING"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_3c

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_39

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v56

    if-eqz v56, :cond_39

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    const-string/jumbo v56, "VZW"

    sget-object v57, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    if-nez v56, :cond_33

    const-string/jumbo v56, "SAMSUNG_HOTSPOT"

    const/16 v57, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v56, v0

    const-string/jumbo v57, "wifi_disconnect_do_not_show"

    const/16 v58, 0x0

    invoke-interface/range {v56 .. v58}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "for VZW show Wi-fiDisconnect isDoNotShowAgain "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v56

    if-nez v56, :cond_37

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_34

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Provisioning failed, mobile ap ON toast"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v56, 0x7f121f93

    const/16 v57, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v56

    const v57, 0x102000b

    invoke-virtual/range {v56 .. v57}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    const/16 v56, 0x11

    move-object/from16 v0, v50

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v56

    const-string/jumbo v57, "wifi_ap_wifi_sharing"

    const/16 v58, 0x0

    invoke-static/range {v56 .. v58}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    const-string/jumbo v59, "wifi_ap_wifi_sharing"

    invoke-static/range {v58 .. v59}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_c
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v56, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v33

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v56, 0x0

    const/16 v57, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :catch_6
    move-exception v16

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Error in putting off provider value"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_34
    const/16 v56, 0x1

    move/from16 v0, v21

    move/from16 v1, v56

    if-ne v0, v1, :cond_35

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_35

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Provisioning success, mobile ap ON toast"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v56, 0x7f121f95

    const/16 v57, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v56

    const v57, 0x102000b

    invoke-virtual/range {v56 .. v57}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    const/16 v56, 0x11

    move-object/from16 v0, v50

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_35
    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Wi-fi got Disconnected before pop-up appears, Turn OFF MHS"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v56

    const/16 v57, 0xd

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_36

    const/16 v56, 0x0

    const/16 v57, 0x0

    invoke-virtual/range {v55 .. v57}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_36
    new-instance v47, Landroid/content/Intent;

    invoke-direct/range {v47 .. v47}, Landroid/content/Intent;-><init>()V

    const-class v56, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v56, 0x10000000

    move-object/from16 v0, v47

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v56, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    move-object/from16 v0, v47

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v56, "wifiap_warning_dialog_type"

    const/16 v57, 0x7

    move-object/from16 v0, v47

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_37
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2

    const/16 v56, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_38
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v56

    if-eqz v56, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Start provisioning Wifi Sharing"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v56, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_39
    const-string/jumbo v56, "VZW"

    sget-object v57, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_3b

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    if-eqz v22, :cond_3a

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v56

    const/16 v57, 0x2

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_3a

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Wifi Sharing ON but provision failed toast"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v56, 0x7f121f93

    const/16 v57, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v56

    move/from16 v2, v57

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v56

    const v57, 0x102000b

    invoke-virtual/range {v56 .. v57}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    const/16 v56, 0x11

    move-object/from16 v0, v50

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v56

    const-string/jumbo v57, "wifi_ap_wifi_sharing"

    const/16 v58, 0x0

    invoke-static/range {v56 .. v58}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    const-string/jumbo v59, "wifi_ap_wifi_sharing"

    invoke-static/range {v58 .. v59}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_d
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v56, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v33

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v56, 0x0

    const/16 v57, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :catch_7
    move-exception v16

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Error in putting off provider value"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_3a
    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Showing Wi-Fi Disconnect toast"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v56, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v56, "info_type"

    const/16 v57, 0x1e

    move-object/from16 v0, v20

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3b
    if-nez v22, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v56

    if-eqz v56, :cond_2

    const-string/jumbo v56, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v56

    if-eqz v56, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v56

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2

    const-string/jumbo v56, "WifiApBroadcastReceiver"

    const-string/jumbo v57, "Start Provisioning as Provisioning is needed"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v56, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_3c
    const-string/jumbo v56, "com.samsung.intent.action.ADVANCED_WIFI_SHARING_NOTIFICATION"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2

    const-string/jumbo v56, "NOTIFICATION_TASK"

    const/16 v57, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    if-nez v38, :cond_3d

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearWifiScanListNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3d
    const/16 v56, 0x1

    move/from16 v0, v38

    move/from16 v1, v56

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v56

    const v57, 0x7f120102

    invoke-virtual/range {v56 .. v57}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showWifiScanListNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_8
    move-exception v16

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method showLimitDataReachNotification(Landroid/content/Context;)V
    .locals 14

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const v6, 0x108096e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f121f64

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1206f3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v12, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x10601bc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v5, 0x7f121f1f

    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .locals 11

    const v10, 0x7f121f3a

    const/4 v9, 0x0

    const-string/jumbo v7, "WifiApBroadcastReceiver"

    const-string/jumbo v8, "showing timeout notification for ATT"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x108008a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "wifiap_timeout_notification"

    move-object v4, v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v7, :cond_0

    const-string/jumbo v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v7, 0x4

    invoke-direct {v3, v0, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v7, :cond_1

    new-instance v7, Landroid/app/Notification$Builder;

    const-string/jumbo v8, "wifiap_timeout_notification"

    invoke-direct {v7, p1, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationBuilder:Landroid/app/Notification$Builder;

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method showWifiScanListNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 20

    const v10, 0x108008a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121e7c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v9, "wifi_sharing_channel"

    move-object/from16 v14, v18

    const/4 v11, 0x4

    new-instance v12, Landroid/app/NotificationChannel;

    move-object/from16 v0, v18

    invoke-direct {v12, v9, v0, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v2, -0x10000

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.ADVANCED_WIFI_SHARING_NOTIFICATION"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.settings"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "NOTIFICATION_TASK"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.wifi.WifiSettings"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x10601bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1205f6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x108008a

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v3, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f121e61

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x108008a

    move-object/from16 v0, v17

    invoke-virtual {v2, v5, v3, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v6, 0x4e20

    invoke-virtual {v2, v6, v7}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const v7, 0x7f121e7c

    invoke-virtual {v2, v6, v7, v3, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "showWifiScanListNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
