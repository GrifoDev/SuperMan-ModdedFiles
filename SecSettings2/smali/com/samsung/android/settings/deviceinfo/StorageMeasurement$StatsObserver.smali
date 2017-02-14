.class Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsObserver"
.end annotation


# instance fields
.field private final mCurrentUser:I

.field private final mDetails:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mFinished:Landroid/os/Message;

.field private final mIsPrivate:Z

.field private mRemaining:I


# direct methods
.method public constructor <init>(ZLcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILjava/util/List;Landroid/os/Message;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/os/Message;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mIsPrivate:Z

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput p3, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    if-eqz p1, :cond_0

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v2, v2, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    iput p6, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    return-void
.end method

.method private addStatsLocked(Landroid/content/pm/PackageStats;)V
    .locals 12

    iget-boolean v6, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mIsPrivate:Z

    if-eqz v6, :cond_1

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v6

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    iget v7, p1, Landroid/content/pm/PackageStats;->userHandle:I

    add-long v8, v2, v4

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->-wrap0(Landroid/util/SparseLongArray;IJ)V

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v7, p1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-static {v6, v7, v4, v5}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->-wrap1(Landroid/util/SparseLongArray;IJ)V

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    add-long/2addr v8, v0

    iput-wide v8, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    iget v7, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->-wrap1(Landroid/util/SparseLongArray;IJ)V

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    goto :goto_0
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->addStatsLocked(Landroid/content/pm/PackageStats;)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
