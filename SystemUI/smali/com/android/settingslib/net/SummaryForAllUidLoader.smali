.class public Lcom/android/settingslib/net/SummaryForAllUidLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SummaryForAllUidLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mSession:Landroid/net/INetworkStatsSession;


# virtual methods
.method public loadInBackground()Landroid/net/NetworkStats;
    .locals 8

    iget-object v0, p0, Lcom/android/settingslib/net/SummaryForAllUidLoader;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v6, "template"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    iget-object v0, p0, Lcom/android/settingslib/net/SummaryForAllUidLoader;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v6, "start"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/settingslib/net/SummaryForAllUidLoader;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v6, "end"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/SummaryForAllUidLoader;->mSession:Landroid/net/INetworkStatsSession;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v7

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->loadInBackground()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    invoke-virtual {p0}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->cancelLoad()Z

    return-void
.end method
