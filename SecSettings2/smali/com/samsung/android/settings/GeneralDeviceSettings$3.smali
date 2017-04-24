.class final Lcom/samsung/android/settings/GeneralDeviceSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "GeneralDeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GeneralDeviceSettings;
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
    .locals 11
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

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "battery_settings"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "storage_settings"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "memory_settings"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v7, "com.sec.android.app.setupwizard"

    const-string/jumbo v8, "VZW"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "diagnostic_terms_vzw"

    const-string/jumbo v10, "string"

    invoke-virtual {v5, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "VZW"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const-string/jumbo v8, "device_info_report_diagnostics_info"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    const-string/jumbo v8, "device_info_contact_us"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "device_info_language_settings"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v8, 0x1000

    invoke-static {v8}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "reset_preference"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Common_SupportSamsungAdId"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "samsung_ad_id"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Common_ConfigMarketInfoVariation"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Disable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    const-string/jumbo v8, "marketing_information"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v4

    :catch_0
    move-exception v3

    const-string/jumbo v8, "device_info_report_diagnostics_info"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v8, "device_info_report_diagnostics_info"

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v2, 0x7f080078

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
