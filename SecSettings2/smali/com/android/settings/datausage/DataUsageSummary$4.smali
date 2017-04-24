.class final Lcom/android/settings/datausage/DataUsageSummary$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
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
    .locals 9
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

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v7, "restrict_background"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v4, 0x1

    :cond_2
    :goto_0
    if-nez v4, :cond_b

    :goto_1
    if-nez v2, :cond_3

    const-string/jumbo v7, "alert_at_warning"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v7, "XEC"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const-string/jumbo v7, "confirm_at_boot"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "cellular_data_usage"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "billing_preference"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "check_phone_balance"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    sget-boolean v7, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-nez v7, :cond_7

    const-string/jumbo v7, "data_usage_reminder"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "operator_set"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v7

    if-nez v7, :cond_9

    const-string/jumbo v7, "data_saving_chn"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v5

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_b
    const/4 v2, 0x1

    goto :goto_1

    :cond_c
    const-string/jumbo v7, "billing_preference_chn"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "restrict_app_data"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "set_used_data"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "top_up_phone_balance"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "check_phone_balance"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080047

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "DataUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "search hasMobileData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080049

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080050

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_0
    return-object v3

    :cond_4
    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08004f

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
