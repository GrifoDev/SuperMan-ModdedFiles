.class public Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field private static final SUPPORTMOBILEAPWPSPBC:Z

.field private static final SUPPORTMOBILEAPWPSPIN:Z

.field static currentMccMnc:Ljava/lang/String;

.field private static final mHotspotActionForSimStatus:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z


# instance fields
.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

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

    invoke-virtual {v1, v6, v7}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v2, "action is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "com.samsung.android.intent.action.WIFI_P2P_ENABLE_WARNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x32

    invoke-direct {p0, p1, v1, p2}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive END: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v1, "req_type"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "extra_type"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, p2}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_0
.end method
