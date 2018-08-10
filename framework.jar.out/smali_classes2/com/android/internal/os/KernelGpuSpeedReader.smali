.class public Lcom/android/internal/os/KernelGpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelGpuSpeedReader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final MAX_SPEEDS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "KernelGpuSpeedReader"

.field private static UTIL_ONLY_FORMAT:I

.field private static UTIL_STATS_FORMAT:I

.field private static fGpuFileExist:Z

.field private static fGpuUtilFileExist:Z

.field private static sTimeInStatePath:Ljava/lang/String;

.field private static sUtilizationFormat:I

.field private static sUtilizationPath:Ljava/lang/String;


# instance fields
.field private mBuffer:[B

.field private mDeltaSpeedTimes:[J

.field private mLastSpeedTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/android/internal/os/KernelGpuSpeedReader;->sTimeInStatePath:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    sput v0, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationFormat:I

    sput-boolean v0, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuFileExist:Z

    sput-boolean v0, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuUtilFileExist:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_ONLY_FORMAT:I

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_STATS_FORMAT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v1, 0x3c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mBuffer:[B

    invoke-static {}, Lcom/android/internal/os/KernelGpuSpeedReader;->setGpuTimeInStatsPath()Z

    invoke-static {}, Lcom/android/internal/os/KernelGpuSpeedReader;->setUtilizationPath()Z

    iget-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mBuffer:[B

    invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    if-lez v5, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    iget-object v6, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mBuffer:[B

    aget-byte v6, v6, v2

    if-ne v6, p2, :cond_2

    :cond_0
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-object v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    move-object v3, v4

    :cond_5
    :goto_3
    return-object v9

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_4
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_5
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_6
    :goto_7
    throw v6

    :catch_6
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v3, v4

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v3, v4

    goto :goto_4
.end method

.method private static setGpuTimeInStatsPath()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "/sys/devices/platform/13900000.mali/time_in_state"

    aput-object v3, v0, v4

    const-string/jumbo v3, "/sys/devices/platform/17500000.mali/time_in_state"

    aput-object v3, v0, v7

    const-string/jumbo v3, "/sys/devices/14ac0000.mali/time_in_state"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    sput-boolean v7, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuFileExist:Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/os/KernelGpuSpeedReader;->sTimeInStatePath:Ljava/lang/String;

    return v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private static setUtilizationPath()Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "/sys/devices/platform/13900000.mali/utilization"

    sget v1, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_ONLY_FORMAT:I

    invoke-static {v0, v1}, Lcom/android/internal/os/KernelGpuSpeedReader;->setUtilizationPathIfValid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "/sys/devices/platform/17500000.mali/utilization"

    sget v1, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_ONLY_FORMAT:I

    invoke-static {v0, v1}, Lcom/android/internal/os/KernelGpuSpeedReader;->setUtilizationPathIfValid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "/sys/devices/14ac0000.mali/utilization_stats"

    sget v1, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_STATS_FORMAT:I

    invoke-static {v0, v1}, Lcom/android/internal/os/KernelGpuSpeedReader;->setUtilizationPathIfValid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static setUtilizationPathIfValid(Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v3, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuUtilFileExist:Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    sput p1, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationFormat:I

    return v3

    :cond_1
    return v2
.end method


# virtual methods
.method public checkGpuFile()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuFileExist:Z

    return v0
.end method

.method public checkGpuUtilFile()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/KernelGpuSpeedReader;->fGpuUtilFileExist:Z

    return v0
.end method

.method public getGpuUtilCurr()J
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v7, 0xa

    const-wide/16 v2, 0x0

    sget v5, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationFormat:I

    sget v6, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_ONLY_FORMAT:I

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, Lcom/android/internal/os/KernelGpuSpeedReader;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v2, v5

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "KernelGpuSpeedReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not exist !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    :cond_2
    sget v5, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationFormat:I

    sget v6, Lcom/android/internal/os/KernelGpuSpeedReader;->UTIL_STATS_FORMAT:I

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, Lcom/android/internal/os/KernelGpuSpeedReader;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_1
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v5, " "

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    int-to-long v2, v5

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "KernelGpuSpeedReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/os/KernelGpuSpeedReader;->sUtilizationPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not exist !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public readDelta()[J
    .locals 15

    const/4 v9, 0x0

    sget-object v8, Lcom/android/internal/os/KernelGpuSpeedReader;->sTimeInStatePath:Ljava/lang/String;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v8

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v10, Lcom/android/internal/os/KernelGpuSpeedReader;->sTimeInStatePath:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x20

    invoke-direct {v5, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v5, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v6, v10, v12

    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    iget-object v10, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v10, v10, v4

    sub-long v10, v6, v10

    aput-wide v10, v8, v4

    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    aput-wide v6, v8, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    const-string/jumbo v8, "KernelGpuSpeedReader"

    const-string/jumbo v9, "Failed to read gpu-freq"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    :goto_3
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v8

    :catch_1
    move-exception v9

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception v8

    :goto_4
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_5
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_6
    if-eqz v9, :cond_6

    :try_start_6
    throw v9

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v10

    if-nez v9, :cond_5

    move-object v9, v10

    goto :goto_6

    :cond_5
    if-eq v9, v10, :cond_4

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catchall_1
    move-exception v8

    goto :goto_5

    :catchall_2
    move-exception v8

    move-object v2, v3

    goto :goto_5

    :catch_5
    move-exception v8

    move-object v2, v3

    goto :goto_4
.end method
