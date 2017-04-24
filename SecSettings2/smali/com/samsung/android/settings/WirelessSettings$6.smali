.class final Lcom/samsung/android/settings/WirelessSettings$6;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
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
    .locals 25
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

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v22, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_21

    const/4 v9, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v22

    if-nez v22, :cond_0

    const-string/jumbo v22, "data_usage_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "header_connection_tethering_hotspot"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "toggle_nearby_scanning"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v22

    if-eqz v22, :cond_22

    const-string/jumbo v22, "android.hardware.nfc"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_22

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_2

    :cond_1
    const-string/jumbo v22, "mobile_network_settings_for_C"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v22, "network_management"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v12

    :try_start_0
    invoke-interface {v12}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v22

    if-nez v22, :cond_3

    const-string/jumbo v22, "data_usage_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    const-string/jumbo v22, "com.ipsec.vpnclient"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    const-string/jumbo v22, "vpn_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    if-nez v9, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_4

    const-string/jumbo v22, "no_config_vpn"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    :cond_4
    const-string/jumbo v22, "vpn_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "vpn_settings_for_att"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo v22, "persist.sys.tether_data"

    const/16 v23, -0x1

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/WirelessSettings;->-set1(I)I

    const-string/jumbo v22, "WirelessSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getNonIndexableKeys() mTetheredDataML : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get4()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v22, "wifi_ap_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "MTR"

    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get6()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const-string/jumbo v22, "vpn_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v9, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_8

    :cond_7
    const-string/jumbo v22, "mobile_network_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_24

    const-string/jumbo v22, "VZW"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    :goto_4
    const-string/jumbo v22, "VZW"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get0()Z

    move-result v22

    if-eqz v22, :cond_25

    :goto_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Common_ConfigPco"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v22, "VZW_PREPAID"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_26

    const-string/jumbo v22, "VZW_TABLET"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    :goto_6
    if-eqz v22, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    if-eqz v22, :cond_a

    :cond_9
    const-string/jumbo v22, "pay_as_you_go"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "data_plan_category"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string/jumbo v22, "android.hardware.type.television"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_27

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v22

    if-eqz v22, :cond_27

    :goto_7
    const-string/jumbo v22, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v9, :cond_28

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v22

    if-eqz v22, :cond_28

    const-string/jumbo v22, "SBM"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    :goto_8
    const-string/jumbo v22, "SBM"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const-string/jumbo v22, "tether_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "wifi_ap_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-nez v9, :cond_c

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_d

    :cond_c
    const-string/jumbo v22, "header_connection_tethering_hotspot"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string/jumbo v22, "ethernet_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v14

    if-eqz v14, :cond_f

    const-string/jumbo v22, "com.samsung.rcs"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_29

    invoke-virtual {v14}, Lcom/samsung/android/settings/rcs/RcsUtils;->isRcsEnabledInCsc()Z

    move-result v22

    if-eqz v22, :cond_29

    invoke-virtual {v14}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcse()Z

    move-result v22

    if-nez v22, :cond_e

    invoke-virtual {v14}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isFullBranded()Z

    move-result v22

    if-eqz v22, :cond_2a

    :cond_e
    const-string/jumbo v22, "rcs_settings_partial_branded"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string/jumbo v23, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string/jumbo v23, "com.samsung.android.app.mirrorlink"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    const/4 v8, 0x0

    const/16 v20, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    const-string/jumbo v22, "persist.sys.tether_data_usb"

    const/16 v23, -0x1

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    const-string/jumbo v22, "persist.sys.tether_data_bt"

    const/16 v23, -0x1

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v22, "persist.sys.tether_data_wifi"

    const/16 v23, -0x1

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_2d

    :cond_10
    :goto_a
    const/4 v8, 0x1

    :cond_11
    if-eqz v10, :cond_13

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_12

    const-string/jumbo v22, "TFN"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    :cond_12
    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get4()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2e

    :cond_13
    :goto_b
    const-string/jumbo v22, "mirror_link_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v22

    if-nez v22, :cond_15

    const-string/jumbo v22, "smart_bonding_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_16

    const-string/jumbo v22, "vpn_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "vpn_settings_for_att"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    const-string/jumbo v22, "network_reset"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v22

    if-eqz v22, :cond_18

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v22

    if-nez v22, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v22

    if-eqz v22, :cond_18

    :cond_17
    if-eqz v9, :cond_19

    :cond_18
    const-string/jumbo v22, "multi_path"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_1a

    const-string/jumbo v22, "wifi_calling_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1b

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/WirelessSettings;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1b

    const-string/jumbo v22, "wfc_settings_key"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-nez v9, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v22

    if-eqz v22, :cond_1d

    :cond_1c
    const-string/jumbo v22, "nearby_scanning_setting_category"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    const/4 v3, 0x0

    const-string/jumbo v22, "screen_sharing_ready_category"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_3c

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_3c

    :goto_d
    if-nez v9, :cond_3d

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_3d

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_1e

    const-string/jumbo v22, "device_visibility_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1f

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_20

    :cond_1f
    const-string/jumbo v22, "network_unlock"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setVzwNetworkUnLocked(Landroid/content/Context;)V

    :cond_20
    return-object v15

    :cond_21
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v22, "nfc_setting"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v22, "vpn_settings_for_att"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_24
    const-string/jumbo v22, "mobile_network_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_25
    const-string/jumbo v22, "nearby_setting_vzw"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "media_share_category_vzw"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_26
    const/16 v22, 0x1

    goto/16 :goto_6

    :cond_27
    const-string/jumbo v22, "toggle_airplane"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_28
    const-string/jumbo v22, "tether_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "wifi_ap_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_29
    const-string/jumbo v22, "rcs_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "rcs_settings_partial_branded"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_2a
    invoke-virtual {v14}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isPartialBranded()Z

    move-result v22

    if-eqz v22, :cond_2c

    const-string/jumbo v22, "rcs_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isSupportCPR()Z

    move-result v22

    if-eqz v22, :cond_2b

    const-string/jumbo v22, "rcs_settings_partial_branded"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_2b
    const-string/jumbo v22, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_2c
    const-string/jumbo v22, "rcs_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "rcs_settings_partial_branded"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_2d
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    goto/16 :goto_a

    :cond_2e
    if-eqz v8, :cond_14

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    goto/16 :goto_b

    :catch_0
    move-exception v4

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    const/4 v8, 0x0

    const/16 v20, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_30

    const-string/jumbo v22, "persist.sys.tether_data_usb"

    const/16 v23, -0x1

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    const-string/jumbo v22, "persist.sys.tether_data_bt"

    const/16 v23, -0x1

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v22, "persist.sys.tether_data_wifi"

    const/16 v23, -0x1

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2f

    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_33

    :cond_2f
    :goto_f
    const/4 v8, 0x1

    :cond_30
    if-eqz v10, :cond_32

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_31

    const-string/jumbo v22, "TFN"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_34

    :cond_31
    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get4()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_34

    :cond_32
    :goto_10
    const-string/jumbo v22, "mirror_link_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_33
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_30

    goto :goto_f

    :cond_34
    if-eqz v8, :cond_14

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    goto :goto_10

    :catchall_0
    move-exception v22

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    const/4 v8, 0x0

    const/16 v20, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_36

    const-string/jumbo v23, "persist.sys.tether_data_usb"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    const-string/jumbo v23, "persist.sys.tether_data_bt"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v23, "persist.sys.tether_data_wifi"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_35

    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_3a

    :cond_35
    :goto_11
    const/4 v8, 0x1

    :cond_36
    if-eqz v10, :cond_38

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_37

    const-string/jumbo v23, "TFN"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3b

    :cond_37
    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get4()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3b

    :cond_38
    :goto_12
    const-string/jumbo v23, "mirror_link_settings"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    throw v22

    :cond_3a
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_36

    goto :goto_11

    :cond_3b
    if-eqz v8, :cond_39

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_39

    goto :goto_12

    :cond_3c
    const-string/jumbo v22, "key_vzw_emergency_alert"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_3d
    const-string/jumbo v22, "device_visibility_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "multi_path"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v3, 0x7f0b0b99

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v2
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

    const-class v1, Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v1, 0x7f0800f2

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
