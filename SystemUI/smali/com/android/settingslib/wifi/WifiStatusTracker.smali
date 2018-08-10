.class public Lcom/android/settingslib/wifi/WifiStatusTracker;
.super Ljava/lang/Object;
.source "WifiStatusTracker.java"


# static fields
.field private static final CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

.field private static final countryCode:Ljava/lang/String;


# instance fields
.field public connected:Z

.field public connecting:Z

.field public enabled:Z

.field public level:I

.field private mContext:Landroid/content/Context;

.field private mRegisterBySysUI:Z

.field private mShownDataWarningDialog:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public networkKey:Landroid/net/NetworkKey;

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "Country"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->countryCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mRegisterBySysUI:Z

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

.method private isSIMCardReady()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v7, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v5, "gsm.sim.state"

    const-string/jumbo v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "READY"

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    array-length v5, v3

    if-le v5, v7, :cond_1

    const-string/jumbo v5, "READY"

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v6, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showCHNDataChargeWarning()V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "airplane_mode_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->isSIMCardReady()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->semGetDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "CMCC"

    sget-object v7, Lcom/android/settingslib/wifi/WifiStatusTracker;->CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.wifi.WifiConnectionHandlerActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x2000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "WifiStatusTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "can\'t start picker activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settingslib/R$string;->noti_toast_wifi_is_not_available:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "ro.build.scafe.cream"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "white"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x103012b

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v5, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030128

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v5, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private showCMCCChargeWarningDialog()V
    .locals 5

    const-string/jumbo v2, "WifiStatusTracker"

    const-string/jumbo v3, "CMCC are included at the name of AP "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.wifi.CMCCChargeWarningDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "dialog_type"

    const-string/jumbo v3, "cmcc_ap_enable_warning"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiStatusTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can\'t start picker activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "wifi_state"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    iget v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    if-ne v5, v9, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    const-string/jumbo v5, "wifi_state"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_2

    :goto_1
    iput-boolean v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mRegisterBySysUI:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    :goto_3
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connecting:Z

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    :goto_4
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    const-string/jumbo v5, "wifiInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "wifiInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    :goto_5
    iget-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-eqz v5, :cond_a

    if-eqz v3, :cond_a

    invoke-direct {p0, v3}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-boolean v7, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mShownDataWarningDialog:Z

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz v5, :cond_9

    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    iget-object v5, v5, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v5, v5, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    iget-object v5, v5, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v5, v5, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    :cond_4
    :try_start_0
    new-instance v5, Landroid/net/NetworkKey;

    new-instance v6, Landroid/net/WifiKey;

    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-direct {v6, v7, v1}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    iput-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_6
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    const-string/jumbo v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "CMCC"

    sget-object v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->showCMCCChargeWarningDialog()V

    goto/16 :goto_2

    :cond_6
    move v5, v7

    goto/16 :goto_3

    :cond_7
    move v5, v7

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    goto :goto_5

    :catch_0
    move-exception v2

    const-string/jumbo v5, "WifiStatusTracker"

    const-string/jumbo v6, "Cannot create NetworkKey"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_9
    iput-object v8, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    goto :goto_6

    :cond_a
    iput-object v8, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    iget-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connecting:Z

    if-nez v5, :cond_0

    const-string/jumbo v5, "CHINA"

    sget-object v7, Lcom/android/settingslib/wifi/WifiStatusTracker;->countryCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mShownDataWarningDialog:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->showCHNDataChargeWarning()V

    iput-boolean v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mShownDataWarningDialog:Z

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "newRssi"

    const/16 v6, -0xc8

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iget v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    iput v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    goto/16 :goto_2
.end method

.method public registerbySystemUI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mRegisterBySysUI:Z

    return-void
.end method
