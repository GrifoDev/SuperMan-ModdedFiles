.class final Lcom/samsung/android/settings/CloudAccountSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "CloudAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/CloudAccountSettings;
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
    .locals 5
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "cloud_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isEnabledJanskyService(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "jansky_settings"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "user_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "setupwizard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/samsung/android/settings/CloudAccountSettings;->-wrap0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v2, "smartswitch_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v2, 0x800

    invoke-static {v2}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p1}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string/jumbo v2, "privacy_category"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "privacy_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v2, 0x80

    invoke-static {v2}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "user_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "privacy_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v1
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
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

    const-class v1, Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v1, 0x7f08003a

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
