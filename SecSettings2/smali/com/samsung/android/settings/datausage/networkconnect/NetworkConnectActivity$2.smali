.class Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;
.super Ljava/lang/Object;
.source "NetworkConnectActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settingslib/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get9(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingslib/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    sget-boolean v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v7, :cond_3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {p2, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v8, v0

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v0, v8, v10

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-wrap0(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v0, v8, v10

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-wrap0(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v6

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    sget-object v8, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setDataTotal(J)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    iget-object v8, v8, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWifiTemplate:Landroid/net/NetworkTemplate;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v9}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-wrap1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)J

    move-result-wide v10

    invoke-static {v8, v10, v11, v4, v5}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v9}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get13(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v7, v10, v8, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/net/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
