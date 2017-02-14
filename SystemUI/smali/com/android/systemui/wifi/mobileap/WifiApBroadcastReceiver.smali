.class public Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;
    }
.end annotation


# static fields
.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field private static final SUPPORTMOBILEAPWPSPBC:Z

.field private static final SUPPORTMOBILEAPWPSPIN:Z

.field static currentMccMnc:Ljava/lang/String;

.field private static final mHotspotActionForSimStatus:Ljava/lang/String;

.field private static mIsBootComplete:Z

.field public static mIsForegroundWifiSettings:Z

.field static mPingThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    sput-boolean v2, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    sput-boolean v2, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsBootComplete:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigHotSpotActionForSimStatus"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPBC:Z

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPBC:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPIN:Z

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPIN:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 5

    const-string/jumbo v3, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v4, "getRvfMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v2, "Returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v2, "Returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in getting provider value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 9

    const-string/jumbo v6, "SystemUI_WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string/jumbo v6, "extra_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v6, "req_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    if-nez v2, :cond_0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    const/16 v6, 0xd

    if-eq v5, v6, :cond_6

    add-int v6, v0, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v6, 0x4

    if-eq v0, v6, :cond_6

    return-void

    :cond_1
    const/4 v6, 0x5

    if-ne p2, v6, :cond_3

    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd

    if-ne v5, v6, :cond_6

    :cond_2
    return-void

    :cond_3
    const/16 v6, 0x32

    if-ne p2, v6, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    const/16 v6, 0xd

    if-eq v5, v6, :cond_6

    const-string/jumbo v6, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v7, "Wifi AP is not enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/16 v6, 0xc

    if-eq v5, v6, :cond_5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_5

    return-void

    :cond_5
    const-string/jumbo v6, "SystemUI_WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_6
    const-string/jumbo v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "req_type"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "extra_type"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2

    sget-boolean v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getClientInfo(Landroid/content/Context;I)V
    .locals 16

    const-string/jumbo v14, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    const-string/jumbo v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    const-string/jumbo v15, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x2000

    invoke-direct {v2, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v8, v0, :cond_0

    array-length v14, v5

    const/4 v15, 0x4

    if-lt v14, v15, :cond_1

    const/4 v14, 0x0

    aget-object v14, v5, v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    aget-object v14, v5, v14

    if-eqz v14, :cond_1

    const/4 v14, 0x2

    aget-object v14, v5, v14

    if-eqz v14, :cond_1

    const/4 v14, 0x3

    aget-object v14, v5, v14

    if-eqz v14, :cond_1

    if-ge v8, v13, :cond_1

    aget-object v14, v12, v8

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    aget-object v14, v5, v14

    aget-object v15, v12, v8

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x3

    aget-object v14, v5, v14

    const-string/jumbo v15, "*"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v4, "deviceName"

    :goto_1
    aget-object v14, v12, v8

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x2

    aget-object v9, v5, v14

    sget-object v14, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9, v10}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;-><init>(Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x3

    aget-object v4, v5, v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_2
    move-object v1, v2

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v7

    :goto_4
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v6

    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v14

    :goto_6
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_6
    :goto_7
    throw v14

    :catch_5
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v14

    move-object v1, v2

    goto :goto_6

    :catch_6
    move-exception v6

    move-object v1, v2

    goto :goto_5

    :catch_7
    move-exception v7

    move-object v1, v2

    goto :goto_4
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "onReceive: action "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "action is null"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v27, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsBootComplete:Z

    :cond_1
    const-string/jumbo v27, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    const/16 v27, 0x4d

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v27, "feature"

    const-string/jumbo v28, "MHCN"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v27, "extra"

    const-string/jumbo v28, "Hotspot_conn"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "onReceive: WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "onReceive END: action "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v27, "com.samsung.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v27, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    const-string/jumbo v27, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    const-string/jumbo v27, "com.samsung.android.intent.action.TETHERING_FAILED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    :cond_5
    const-string/jumbo v27, "ro.csc.sales_code"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v27, "SPRINT"

    sget-object v28, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string/jumbo v27, "SPRINT"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string/jumbo v27, "SPR"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string/jumbo v27, "XAS"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string/jumbo v27, "VMU"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string/jumbo v27, "BST"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    const-string/jumbo v27, "ALL"

    sget-object v28, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v24

    const/16 v27, 0xc

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/16 v27, 0xd

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Mobile AP is disabled by [USA OPEN (SPR)] don\'t : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v28, 0x258

    :try_start_0
    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_2

    const/16 v25, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "wifi_saved_state"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v25

    :goto_2
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "Need to enabled Wifi since provision dialog got dismissed in onPause"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "wifi_saved_state"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v9

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "SettingNotFoundException"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const-string/jumbo v27, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    const-string/jumbo v27, "CODE"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "mipErrorCode : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_2

    const-string/jumbo v27, "67"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v27, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    const/16 v27, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "do NOT turn off MHS when DIALOG_HOTSPOT_NO_DATA , spr new requirement!!!!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v27, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    const/16 v27, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v27, "com.samsung.android.intent.action.WIFI_P2P_ENABLE_WARNING"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_d

    const/16 v27, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v27, "req_type"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v27, "extra_type"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v27, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v27, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "onReceive: WIFIAP_ENABLE_WARNING"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v27, "SPRINT"

    sget-object v28, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    const-string/jumbo v27, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v24

    const/16 v27, 0xc

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    const/16 v27, 0xd

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    :cond_10
    const-string/jumbo v27, "phoneName"

    const/16 v28, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Receive android.intent.action.RADIO_TECHNOLOGY, phoneType = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v27, "phone"

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    const/16 v14, 0xa

    const/16 v27, 0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    :try_start_2
    const-string/jumbo v27, "chameleon_gsmmaxuser"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    :cond_11
    :goto_3
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_13

    :goto_4
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "maxClientNum = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    const/16 v27, 0xe

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v27, "maxClient"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    :cond_12
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    :try_start_3
    const-string/jumbo v27, "chameleon_maxuser"

    move-object/from16 v0, v27

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v14

    goto :goto_3

    :catch_2
    move-exception v9

    const/16 v14, 0xa

    goto :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto :goto_4

    :cond_14
    sget-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v27, :cond_15

    const-string/jumbo v27, "com.nttdocomo.intent.action.SHOW_WPSDIALOG"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_15
    sget-object v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    if-eqz v27, :cond_17

    sget-object v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    const-string/jumbo v28, "turn off"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    const-string/jumbo v27, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    sget-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsBootComplete:Z

    if-nez v27, :cond_16

    return-void

    :cond_16
    const-string/jumbo v27, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Recieve Sim State Changed : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v27, "IMSI"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    const-string/jumbo v27, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "INTENT_VALUE_ICC_IMSI changed mccmnc old = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " ,  new = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v27, "com.samsung.intent.action.PROVISION_DIALOG_DISMISSED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18

    const/16 v25, 0x0

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "wifi_saved_state"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v25

    :goto_5
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "Need to enabled Wifi since provision dialog got dismissed in onPause"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "wifi_saved_state"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :catch_3
    move-exception v9

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "SettingNotFoundException"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_18
    const-string/jumbo v27, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    sget-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v27, :cond_2

    const-string/jumbo v27, "NUM"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "MHSPing WIFI_AP_STA_STATUS_CHANGED_ACTION ClientNum "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "/sdcard/mhspingstop"

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_19

    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "MHSPing "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " is exist!!! pingClear"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "MHSPing "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " is NOT exist"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingStart(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v27, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getTestProp()I

    move-result v22

    const-string/jumbo v15, ""

    sget-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v27, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    :cond_1c
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    const-string/jumbo v15, "com.samsung.android.app.mhswrappertmo"

    goto/16 :goto_0

    :cond_1d
    const/16 v27, 0x2

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    const-string/jumbo v15, "com.samsung.android.app.mhswrappermtr"

    goto/16 :goto_0

    :cond_1e
    const/16 v27, 0x3

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const-string/jumbo v15, "com.samsung.android.app.mhswrapperusc"

    goto/16 :goto_0
.end method

.method public pingClear()V
    .locals 4

    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MHSPing pingClear() mPingThread size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;

    invoke-virtual {v1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->stopPing()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public pingStart(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->getClientInfo(Landroid/content/Context;I)V

    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MHSPing pingStart() size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;

    invoke-virtual {v1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
