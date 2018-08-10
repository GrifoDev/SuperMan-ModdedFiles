.class public Lcom/samsung/android/settingslib/wifi/WifiPickerController;
.super Ljava/lang/Object;
.source "WifiPickerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;
    }
.end annotation


# static fields
.field private static final CSC_ENABLE_WIFI_CONNECTION_TYPE:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlagRegisteredBroadcastReceiver:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settingslib/wifi/WifiPickerController;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settingslib/wifi/WifiPickerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->checkAndShowWifiPickerDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;-><init>(Lcom/samsung/android/settingslib/wifi/WifiPickerController;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private checkAndShowWifiPickerDialog()V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->isExistSavedNetworksInScanResult()Z

    move-result v1

    sget-boolean v3, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_cmcc_manual"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "WifiPickerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifiConnectionType is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.samsung.android.settings.wifi.WifiSelectHandlerActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x2000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aplist_dont_show_again"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->startPickerDialog()V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "WifiPickerController"

    const-string/jumbo v4, "do_not_show_again is false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const-string/jumbo v3, "WifiPickerController"

    const-string/jumbo v4, "ignore to show picker dialog (found)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->startPickerDialog()V

    goto :goto_0
.end method

.method private isExistSavedNetworksInScanResult()Z
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return v11

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    return v11

    :cond_1
    const-string/jumbo v8, "WifiPickerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "config size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", scan list size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v8, :cond_4

    const-string/jumbo v7, ""

    :goto_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    return v8

    :cond_4
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_5
    const-string/jumbo v8, "WifiPickerController"

    const-string/jumbo v9, "not found saved networks in scan result"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method private isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    return v3

    :cond_5
    return v2

    :cond_6
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_7

    return v3

    :cond_7
    return v2
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p1
.end method

.method private startPickerDialog()V
    .locals 5

    const-string/jumbo v2, "WifiPickerController"

    const-string/jumbo v3, "starting Wi-Fi picker dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.wifi.WifiPickerDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiPickerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can not show Wi-Fi picker dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public startTracking()V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mFlagRegisteredBroadcastReceiver:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "WifiPickerController"

    const-string/jumbo v2, "register receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mFlagRegisteredBroadcastReceiver:Z

    return-void
.end method

.method public stopTracking()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mFlagRegisteredBroadcastReceiver:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiPickerController"

    const-string/jumbo v1, "unregister receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mFlagRegisteredBroadcastReceiver:Z

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
