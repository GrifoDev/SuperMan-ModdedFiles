.class Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivacySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;->mIsPrimary:Z

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "factory_reset"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "network_reset"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "settings_reset"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p1, v0}, Lcom/samsung/android/settings/PrivacySettings;->-wrap0(Landroid/content/Context;Ljava/util/Collection;)V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;->mIsPrimary:Z

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v2, 0x7f0800e0

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
