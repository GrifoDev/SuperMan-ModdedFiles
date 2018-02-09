.class Lcom/android/server/am/MARsPolicyManager$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->invokePMGetPackageSizeInfo(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$2;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/MARsPolicyManager$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long v4, v2, v6

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->-get4(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->-get9(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget v3, p0, Lcom/android/server/am/MARsPolicyManager$2;->val$userId:I

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager$2;->val$packageName:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/android/server/am/MARsPolicyManager;->-wrap1(Lcom/android/server/am/MARsPolicyManager;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->-get9(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;

    if-eqz v1, :cond_2

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v8, v1, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;->totalValue:J

    iput-wide v4, v1, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;->totalValue:J

    sub-long v2, v4, v8

    iput-wide v2, v1, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;->diffValue:J

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->-get9(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v10

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;JJ)V

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->-get9(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2
.end method
