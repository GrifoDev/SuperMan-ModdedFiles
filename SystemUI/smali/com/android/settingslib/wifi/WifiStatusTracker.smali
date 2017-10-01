.class public Lcom/android/settingslib/wifi/WifiStatusTracker;
.super Ljava/lang/Object;
.source "WifiStatusTracker.java"


# static fields
.field private static final CSC_SUPPORT_WIFI_AGGREGATION:Z

.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field public connected:Z

.field public enabled:Z

.field public level:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIgnoreFirstStickyBroadcastForNetworkStateChanged:Z

.field private mShowConnectedToast:Z

.field private mSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private prevConnected:Z

.field public rssi:I

.field private setWifiActiveNetwork:Z

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "WifiStatusTracker"

    sput-object v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->CSC_SUPPORT_WIFI_AGGREGATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mIgnoreFirstStickyBroadcastForNetworkStateChanged:Z

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-void
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private showConnectedToast(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_0

    sget-object v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to show Wi-Fi connected toast. Ssid is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->CSC_SUPPORT_WIFI_AGGREGATION:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "VerizonWiFi"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to show Wi-Fi connected toast. It\'s aggregation ap"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/SystemManager;->getWifiConnectedMessageState()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Knox Customization: suppressing Wifi connected toast"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/settingslib/R$color;->wifi_connected_toast:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "#ff"

    const-string/jumbo v8, "#"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "#DEAD00"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Lcom/android/settingslib/R$string;->wifi_setup_title_connected_network:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_4
    :try_start_0
    sget v6, Lcom/android/settingslib/R$string;->wifi_setup_title_connected_network:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<font color="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public enableToShowConnectedToast(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mShowConnectedToast:Z

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    :cond_3
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_2

    :cond_5
    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-nez v3, :cond_0

    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v5, :cond_8

    return-void

    :cond_8
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v3, :cond_d

    iput-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    :goto_3
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_9

    const-string/jumbo v3, "<unknown ssid>"

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    :cond_a
    :goto_4
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mIgnoreFirstStickyBroadcastForNetworkStateChanged:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Current process is restarted. Ignore to show Wi-Fi connected toast"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mIgnoreFirstStickyBroadcastForNetworkStateChanged:Z

    :cond_c
    :goto_5
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    iput-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->prevConnected:Z

    goto/16 :goto_1

    :cond_d
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    goto :goto_3

    :cond_e
    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_4

    :cond_f
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-nez v3, :cond_a

    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_4

    :cond_10
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->prevConnected:Z

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-eqz v3, :cond_11

    sget-boolean v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->DBG:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "already to show connected toast"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mShowConnectedToast:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settingslib/wifi/WifiStatusTracker;->showConnectedToast(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    const-string/jumbo v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "newRssi"

    const/16 v4, -0xc8

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iget v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    goto/16 :goto_1
.end method
