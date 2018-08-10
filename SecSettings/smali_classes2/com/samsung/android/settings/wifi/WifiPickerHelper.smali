.class public Lcom/samsung/android/settings/wifi/WifiPickerHelper;
.super Ljava/lang/Object;
.source "WifiPickerHelper.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mIsFromLocation:Z

.field private mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "extra_location_services"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "extra_location_services"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getApIntent(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;
    .locals 8

    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v5, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v5, "WifiSettings.Picker"

    const-string/jumbo v6, "return empty intent"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    return-object v5

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ssid"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "bssid"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v5, "security"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    :goto_1
    const-string/jumbo v5, "frequency"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->DBG:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    const-string/jumbo v5, "WifiSettings.Picker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ssid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", ap.bssid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", info.bssid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", ap.freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", info.freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v3

    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v5, "any"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getStrongSignalBssid()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string/jumbo v5, "bssid"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getFrequency(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public isUserPickedAp()Z
    .locals 10

    const/4 v9, 0x0

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    if-nez v6, :cond_0

    return v9

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v6, :cond_1

    const-string/jumbo v6, "WifiSettings.Picker"

    const-string/jumbo v7, "user not picked any AP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const-string/jumbo v6, "WifiSettings.Picker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SEC PICKER from location, networkId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v4, :cond_2

    move-object v3, v0

    :cond_3
    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6, v3}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "WifiSettings.Picker"

    const-string/jumbo v7, "matched"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_4
    return v9
.end method

.method public needToHideContextMenu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public userPickedAp(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    return v1

    :cond_1
    return v3
.end method
