.class public Lcom/android/internal/os/KernelMemoryBandwidthStats;
.super Ljava/lang/Object;
.source "KernelMemoryBandwidthStats.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KernelMemoryBandwidthStats"

.field private static final mSysfsFile:Ljava/lang/String; = "/sys/kernel/memory_state_time/show_stat"


# instance fields
.field protected final mBandwidthEntries:Landroid/util/LongSparseLongArray;

.field private mStatsDoNotExist:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    return-void
.end method


# virtual methods
.method public getBandwidthEntries()Landroid/util/LongSparseLongArray;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method public parseStats(Ljava/io/BufferedReader;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v12, 0xf4240

    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->clear()V

    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v6, v0

    iget-object v5, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/util/LongSparseLongArray;->put(JJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v6, v0

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    div-long/2addr v8, v12

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/util/LongSparseLongArray;->put(JJ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateStats()V
    .locals 9

    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v7, "/sys/kernel/memory_state_time/show_stat"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/internal/os/KernelMemoryBandwidthStats;->parseStats(Ljava/io/BufferedReader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :goto_0
    if-eqz v6, :cond_5

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v0

    move-object v3, v4

    :goto_1
    :try_start_4
    const-string/jumbo v5, "KernelMemoryBandwidthStats"

    const-string/jumbo v6, "No kernel memory bandwidth stats available"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5}, Landroid/util/LongSparseLongArray;->clear()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_2
    return-void

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v5

    :goto_3
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_4
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_5
    if-eqz v6, :cond_4

    :try_start_7
    throw v6

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v7

    if-nez v6, :cond_3

    move-object v6, v7

    goto :goto_5

    :cond_3
    if-eq v6, v7, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_6
    :try_start_8
    const-string/jumbo v5, "KernelMemoryBandwidthStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to read memory bandwidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5}, Landroid/util/LongSparseLongArray;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    :cond_4
    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v5

    :goto_7
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    :cond_5
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v3, v4

    goto :goto_2

    :catchall_2
    move-exception v5

    move-object v3, v4

    goto :goto_7

    :catch_6
    move-exception v1

    move-object v3, v4

    goto :goto_6

    :catchall_3
    move-exception v5

    goto :goto_4

    :catchall_4
    move-exception v5

    move-object v3, v4

    goto :goto_4

    :catch_7
    move-exception v5

    move-object v3, v4

    goto :goto_3
.end method
