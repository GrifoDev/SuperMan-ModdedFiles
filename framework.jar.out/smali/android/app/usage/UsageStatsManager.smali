.class public final Landroid/app/usage/UsageStatsManager;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"


# static fields
.field public static final INTERVAL_BEST:I = 0x4

.field public static final INTERVAL_COUNT:I = 0x4

.field public static final INTERVAL_DAILY:I = 0x0

.field public static final INTERVAL_MONTHLY:I = 0x2

.field public static final INTERVAL_WEEKLY:I = 0x1

.field public static final INTERVAL_YEARLY:I = 0x3

.field private static final sEmptyResults:Landroid/app/usage/UsageEvents;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/usage/IUsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    return-void
.end method


# virtual methods
.method public deleteUsageStats()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v1}, Landroid/app/usage/IUsageStatsManager;->deleteUsageStats()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAppInactive(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v1}, Landroid/app/usage/IUsageStatsManager;->onCarrierPrivilegedAppsChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public queryAndAggregateUsageStats(JJ)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_2

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    if-nez v7, :cond_1

    iget-object v0, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v9}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    goto :goto_1

    :cond_2
    return-object v6
.end method

.method public queryConfigurations(IJJ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v7

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .locals 9

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_0

    return-object v7

    :catch_0
    move-exception v0

    :cond_0
    sget-object v1, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object v1
.end method

.method public queryUsageStats(IJJ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v7

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v1, p1}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/usage/IUsageStatsWatcher;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v1, p1, p2}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcherWithComponent(Landroid/app/usage/IUsageStatsWatcher;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public setAppInactive(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v1, p1}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JLandroid/os/UserHandle;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/usage/IUsageStatsManager;->whitelistAppTemporarily(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
