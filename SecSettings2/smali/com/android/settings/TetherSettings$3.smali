.class final Lcom/android/settings/TetherSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v13, -0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v11, "connectivity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-eqz v11, :cond_a

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-eqz v11, :cond_b

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-eqz v11, :cond_c

    const/4 v0, 0x1

    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "persist.sys.tether_data"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v11, 0x3

    if-ge v5, v11, :cond_0

    const/4 v9, 0x0

    :cond_0
    const/4 v11, 0x2

    if-ge v5, v11, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string/jumbo v11, "persist.sys.tether_data_usb"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v11, "persist.sys.tether_data_bt"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v11, "persist.sys.tether_data_wifi"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v8, v13, :cond_2

    if-eq v6, v13, :cond_d

    :cond_2
    :goto_3
    if-lez v8, :cond_e

    const/4 v9, 0x1

    :goto_4
    if-lez v6, :cond_f

    const/4 v0, 0x1

    :goto_5
    if-lez v7, :cond_10

    const/4 v10, 0x1

    :cond_3
    :goto_6
    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v3

    :cond_4
    and-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_5

    const/4 v10, 0x0

    :cond_5
    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_6

    const/4 v0, 0x0

    :cond_6
    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    const-string/jumbo v11, "usb_tether_settings"

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v0, :cond_9

    const-string/jumbo v11, "enable_bluetooth_tethering"

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string/jumbo v11, "disabled_on_data_saver"

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v4

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    :cond_d
    if-eq v7, v13, :cond_3

    goto :goto_3

    :cond_e
    const/4 v9, 0x1

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    :cond_10
    const/4 v10, 0x0

    goto :goto_6
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v1, 0x7f08012c

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
