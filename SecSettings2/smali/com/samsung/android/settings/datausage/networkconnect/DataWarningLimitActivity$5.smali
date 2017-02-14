.class Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;
.super Ljava/lang/Object;
.source "DataWarningLimitActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;
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
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

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

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get6(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingslib/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 13
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

    const/4 v12, 0x0

    sget-boolean v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get3(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {p2, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v8, v6

    iget-wide v10, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v6, v8, v10

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-wrap1(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v6, v8, v10

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-wrap1(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    sget-object v8, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWlanTotal(J)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sput-boolean v12, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    new-instance v8, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v9}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v5, v8}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-set0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get2(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_7

    const/4 v0, 0x1

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->setListViewEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get4(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v8}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    move-result-object v5

    sget-object v8, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->bindDataStats(Ljava/util/Map;)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    move-result-object v5

    sget-object v8, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->bindWifiStats(Ljava/util/Map;)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get4(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get5(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5, v12}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-set1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;Z)Z

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/net/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

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

    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
