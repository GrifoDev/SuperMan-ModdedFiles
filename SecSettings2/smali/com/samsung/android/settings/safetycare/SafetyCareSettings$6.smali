.class final Lcom/samsung/android/settings/safetycare/SafetyCareSettings$6;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SafetyCareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/safetycare/SafetyCareSettings;
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
    .locals 16
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

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_13

    const/4 v6, 0x1

    :goto_0
    const-string/jumbo v13, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const-string/jumbo v13, "safetycare_help"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v13, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "key_location"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_14

    :cond_3
    :goto_1
    const-string/jumbo v13, "key_private_mode"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportPrivateBoxInSettings(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_15

    const-string/jumbo v13, "key_private_box"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "VZW"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    const/4 v8, 0x1

    :goto_3
    const/4 v1, 0x0

    const/4 v9, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v12, "com.sec.android.app.setupwizard"

    if-eqz v8, :cond_5

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string/jumbo v14, "diagnostic_terms_vzw"

    const-string/jumbo v15, "string"

    invoke-virtual {v9, v14, v15, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_5
    :goto_4
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string/jumbo v13, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_6
    const-string/jumbo v13, "key_report_diagnostics_info"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_17

    if-nez v6, :cond_17

    const-string/jumbo v13, "com.sec.android.app.safetyassurance"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isEmergencyTableSupported(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_17

    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string/jumbo v13, "key_private_mode"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string/jumbo v13, "applock"

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string/jumbo v13, "key_applock"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string/jumbo v13, "key_vzw_emergency_alert"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-nez v13, :cond_d

    const/4 v7, 0x1

    :cond_d
    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v5

    if-nez v7, :cond_e

    if-eqz v5, :cond_18

    :cond_e
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v13

    if-eqz v13, :cond_10

    :cond_f
    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "other_security_settings"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string/jumbo v13, "toggle_install_applications"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v13

    if-nez v13, :cond_12

    const-string/jumbo v13, "toggle_install_applications"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object v10

    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v13, "key_private_mode"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v4

    const-string/jumbo v13, "key_report_diagnostics_info"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :catch_1
    move-exception v3

    const-string/jumbo v13, "key_report_diagnostics_info"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v13, "key_safety_assistance"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_18
    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
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

    const v4, 0x7f0b0a75

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "toggle_install_applications"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v3, 0x7f0b13d1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0b0814

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "other_security_settings"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v3, 0x7f0b082c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v3, 0x7f0b082d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v2

    :cond_1
    const v3, 0x7f0b038f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
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

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/provider/SearchIndexableResource;

    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v6, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v6, 0x7f0800cd

    iput v6, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-get0()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const v3, 0x7f0800fc

    :goto_1
    new-instance v5, Landroid/provider/SearchIndexableResource;

    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v6, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iput v3, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "device_policy"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v3, 0x7f08010e

    :goto_2
    new-instance v5, Landroid/provider/SearchIndexableResource;

    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v6, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iput v3, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const v3, 0x7f080112

    goto :goto_1

    :cond_5
    const v3, 0x7f08010f

    goto :goto_2
.end method
