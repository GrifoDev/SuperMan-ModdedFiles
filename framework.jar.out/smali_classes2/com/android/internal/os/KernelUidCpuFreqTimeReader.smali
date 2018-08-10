.class public Lcom/android/internal/os/KernelUidCpuFreqTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuFreqTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuFreqTimeReader"

.field private static final TOTAL_READ_ERROR_COUNT:I = 0x5

.field private static final UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private mCpuFreqs:[J

.field private mCpuFreqsCount:I

.field private mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[J>;"
        }
    .end annotation
.end field

.field private mProcFileAvailable:Z

.field private mReadErrorCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    return-void
.end method

.method private readCpuFreqs(Ljava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 6

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    if-nez v2, :cond_0

    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    invoke-interface {p2, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onCpuFreqs([J)V

    :cond_1
    return-void
.end method

.method private readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 12

    iget-object v7, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    if-nez v6, :cond_0

    iget v7, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v6, v7, [J

    iget-object v7, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const-string/jumbo v7, " "

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    array-length v7, v6

    if-eq v2, v7, :cond_1

    const-string/jumbo v7, "KernelUidCpuFreqTimeReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No. of readings don\'t match cpu freqs, readings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " cpuFreqsCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-array v0, v2, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v7, v3, v1

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    const-wide/16 v10, 0xa

    mul-long v4, v8, v10

    aget-wide v8, v6, v1

    sub-long v8, v4, v8

    aput-wide v8, v0, v1

    aput-wide v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3, p1, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    :cond_3
    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 7

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcFileAvailable:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    const/4 v5, 0x5

    if-lt v3, v5, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/proc/uid_time_in_state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readDelta(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcFileAvailable:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    const-string/jumbo v3, "KernelUidCpuFreqTimeReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read /proc/uid_time_in_state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catch_1
    move-exception v4

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    if-eqz v4, :cond_5

    :try_start_6
    throw v4

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v5

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_5

    :cond_4
    if-eq v4, v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catchall_1
    move-exception v3

    goto :goto_4

    :catchall_2
    move-exception v3

    move-object v1, v2

    goto :goto_4

    :catch_5
    move-exception v3

    move-object v1, v2

    goto :goto_3
.end method

.method public readDelta(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readCpuFreqs(Ljava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method
