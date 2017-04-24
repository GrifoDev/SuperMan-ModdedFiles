.class final Lcom/android/settings/DeviceInfoSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
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

.method private isPropertyMissing(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 17
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

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v14, "ro.ril.fccid"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/DeviceInfoSettings$4;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string/jumbo v14, "fcc_equipment_id"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "baseband_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "device_feedback"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "ro.build.selinux"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/DeviceInfoSettings$4;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    const-string/jumbo v14, "selinux_status"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const-string/jumbo v14, "Enabled"

    const-string/jumbo v15, "ro.security.mdpp.ux"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string/jumbo v14, "security_sw_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo v14, "VZW"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    const-string/jumbo v14, "com.samsung.helphub"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c

    :goto_1
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string/jumbo v14, "security_patch"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v4

    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v4, v14}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v14

    if-gez v14, :cond_6

    const-string/jumbo v14, "knox_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string/jumbo v14, "com.sec.knox.kccagent"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1d

    const-string/jumbo v14, "com.sec.knox.kccagent"

    const-string/jumbo v15, "com.sec.knox.kccc.agent.activities.KCCCSettings"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/android/settings/Utils;->isActivityExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1d

    :goto_2
    const-string/jumbo v14, "VZW"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string/jumbo v15, "com.samsung.helphub"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v14, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v14, v14, 0xa

    const/4 v15, 0x2

    if-ge v14, v15, :cond_7

    const-string/jumbo v14, "icon_glossary"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    const-string/jumbo v14, "SMA"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    const-string/jumbo v14, "XTC"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    const-string/jumbo v14, "XTE"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    const-string/jumbo v14, "GLB"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    :goto_4
    if-nez v14, :cond_8

    const-string/jumbo v14, "service_information"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "ntc_approval"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string/jumbo v14, "XSG"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "XSD"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "XST"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "XSZ"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "XSM"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "XSS"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "XSI"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    :cond_9
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "country_cert_info_enable"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "country_cert_info_traid"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "country_cert_info_ta"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "country_cert_info_name"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    const-string/jumbo v14, "country_certification_info"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    const-string/jumbo v15, "CscFeature_Setting_SupportRegulatoryInfo"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_21

    const-string/jumbo v14, "TFG"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->checkForTFGCostaRicaSIM()Z

    move-result v14

    if-eqz v14, :cond_21

    :cond_b
    :goto_6
    const-string/jumbo v14, "com.samsung.ccr"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string/jumbo v14, "diagnostics_and_usage"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    const-string/jumbo v15, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string/jumbo v14, "hardware_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string/jumbo v14, "ro.product.name"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "hero"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_22

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v14

    :goto_7
    if-nez v14, :cond_e

    const-string/jumbo v14, "software_version_cmcc"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v14

    if-eqz v14, :cond_23

    const-string/jumbo v14, "hardware_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    const-string/jumbo v14, "com.ctc.epush"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string/jumbo v14, "ctc_epush"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string/jumbo v14, "ro.csb_val"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v14, "unknown"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string/jumbo v14, "ABSENT"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string/jumbo v14, ""

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    :cond_10
    const-string/jumbo v14, "csb_value"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceFccId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_12

    const-string/jumbo v14, "fcc_id"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_13

    const-string/jumbo v14, "rated_value"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_14

    const-string/jumbo v14, "battery_capacity"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_16

    :cond_15
    const-string/jumbo v14, "customer_services"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->-get4()Z

    move-result v14

    if-eqz v14, :cond_24

    const-string/jumbo v14, "status_info"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "status_info_vzw"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    const-string/jumbo v14, "com.samsung.android.app.omcagent"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_17

    const-string/jumbo v14, "omc_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string/jumbo v14, "samsung_experience_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSimplifiedAboutDevice2015()Z

    move-result v14

    if-eqz v14, :cond_26

    const-string/jumbo v14, "firmware_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "security_patch"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "baseband_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "kernel_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "build_number"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "selinux_status"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "security_sw_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "knox_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "omc_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "samsung_experience_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "fcc_id"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "rated_value"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "battery_capacity"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-nez v14, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_19

    :cond_18
    const-string/jumbo v14, "my_phone_number"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    return-object v9

    :cond_1a
    const-string/jumbo v14, "selinux.policy_version"

    const-string/jumbo v15, "No Policy Version"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "GOOGLE_POLICY"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    const-string/jumbo v14, "No Policy Version"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_1b
    const-string/jumbo v14, "selinux_status"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v14, "icon_glossary"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v14, "knox_custom_configurator"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    :cond_1e
    const/4 v14, 0x1

    goto/16 :goto_4

    :cond_1f
    :try_start_2
    const-string/jumbo v14, "country_certification_info"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    :cond_20
    const-string/jumbo v14, "country_certification_info"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_21
    const-string/jumbo v14, "regulatory_info"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_22
    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_23
    const-string/jumbo v14, "hardware_version_spr"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "software_version"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_24
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isStatusLOSmenutree()Z

    move-result v14

    if-eqz v14, :cond_25

    const-string/jumbo v14, "status_info"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "status_info_root"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_25
    const-string/jumbo v14, "status_info_vzw"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "status_info_root"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_26
    const-string/jumbo v14, "battery_info"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "software_info"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
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

    const v8, 0x7f0b050e

    const v7, 0x7f0b050d

    const v6, 0x7f0b0430

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->-get3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    :goto_0
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "selinux_status"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v4, 0x7f0b1376

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v4, ""

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const-string/jumbo v4, ""

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSimplifiedAboutDevice2015()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->-get4()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "status_info_root"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    :goto_1
    const v4, 0x7f0b1379

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v1

    iget-boolean v4, v1, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v4, :cond_2

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "device_info_online_help"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    iget v4, v1, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    if-eqz v4, :cond_6

    iget v4, v1, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v4, 0x7f0b1491

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    :goto_3
    const-string/jumbo v4, ""

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const-string/jumbo v4, ""

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v3

    :cond_3
    const-string/jumbo v4, "device_name"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v4, 0x7f0b04e8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v4, "status_info"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    goto :goto_3
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

    const v1, 0x7f080057

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
