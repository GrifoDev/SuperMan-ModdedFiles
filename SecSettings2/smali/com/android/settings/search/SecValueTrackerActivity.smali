.class public Lcom/android/settings/search/SecValueTrackerActivity;
.super Lcom/android/settings/SettingsActivity;
.source "SecValueTrackerActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/search/SecValueTrackerActivity;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/search/SecValueTrackerActivity;->setSettingsActivityContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initCategories()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/search/SecValueTrackerActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->updateTileList(Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/search/SecIndex;->setCategories(Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->startSearchIndexing(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/settings/search/SecValueTrackerActivity;->finish()V

    return-void
.end method

.method public preCheckStatus()V
    .locals 2

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus()V

    goto :goto_0
.end method
