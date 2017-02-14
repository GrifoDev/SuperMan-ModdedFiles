.class public Lcom/android/settings/applications/ProcStatsData$MemInfo;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemInfo"
.end annotation


# instance fields
.field baseCacheRam:J

.field freeWeight:D

.field mMemStateWeights:[D

.field memTotalTime:J

.field public realFreeRam:D

.field public realTotalRam:D

.field public realUsedRam:D

.field totalRam:D

.field totalScale:D

.field usedWeight:D

.field weightToRam:D


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0xe

    new-array v3, v3, [D

    iput-object v3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->memTotalTime:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;->calculateWeightInfo(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double/2addr v6, v8

    long-to-double v8, p3

    div-double v4, v6, v8

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double/2addr v6, v8

    long-to-double v8, p3

    div-double v0, v6, v8

    add-double v6, v4, v0

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalRam:D

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    iget-wide v8, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalRam:D

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    long-to-double v8, p3

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    mul-double/2addr v6, v4

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    mul-double/2addr v6, v0

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string/jumbo v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    double-to-long v6, v6

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    :goto_0
    return-void

    :cond_0
    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v8, v8

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v8, v8

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$MemInfo;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    return-void
.end method

.method private calculateWeightInfo(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 6

    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    iget-wide v2, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v4, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    iget-wide v2, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v4, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-boolean v2, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v4, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    iget-object v3, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    iget-object v4, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-object v4, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    goto :goto_1

    :cond_3
    return-void
.end method
