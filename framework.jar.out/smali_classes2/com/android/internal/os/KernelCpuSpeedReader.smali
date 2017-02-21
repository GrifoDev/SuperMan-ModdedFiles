.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private final mDeltaSpeedTimes:[J

.field private final mJiffyMillis:J

.field private final mLastSpeedTimes:[J

.field private final mProcFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "0x4f4c"

    const-string/jumbo v1, "ro.debug_level"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/internal/os/KernelCpuSpeedReader;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v2, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    new-array v2, p2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    new-array v2, p2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-interface {v2, v3}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    return-void
.end method


# virtual methods
.method public readDelta()[J
    .locals 19

    const-string/jumbo v4, ""

    const/4 v12, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-direct {v9, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v8, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x20

    invoke-direct {v8, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    array-length v9, v9

    if-ge v7, v9, :cond_3

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v8, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    move-wide/from16 v16, v0

    mul-long v10, v14, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v14, v9, v7

    cmp-long v9, v10, v14

    if-gez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    aput-wide v10, v9, v7

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aput-wide v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v14, v13, v7

    sub-long v14, v10, v14

    aput-wide v14, v9, v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v9

    move-object v5, v6

    :goto_2
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v12

    move-object/from16 v18, v12

    move-object v12, v9

    move-object/from16 v9, v18

    :goto_3
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1
    :goto_4
    if-eqz v12, :cond_7

    :try_start_4
    throw v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_1
    move-exception v2

    :goto_5
    const-string/jumbo v9, "KernelCpuSpeedReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to read cpu-freq: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v12, 0x0

    invoke-static {v9, v12, v13}, Ljava/util/Arrays;->fill([JJ)V

    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v9

    :cond_3
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_4
    :goto_7
    if-eqz v12, :cond_5

    :try_start_6
    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_2
    move-exception v2

    move-object v5, v6

    goto :goto_5

    :catch_3
    move-exception v12

    goto :goto_7

    :cond_5
    move-object v5, v6

    goto :goto_6

    :catch_4
    move-exception v13

    if-nez v12, :cond_6

    move-object v12, v13

    goto :goto_4

    :cond_6
    if-eq v12, v13, :cond_1

    :try_start_7
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v3

    :goto_8
    const-string/jumbo v9, "KernelCpuSpeedReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to read cpu-freq: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v12, 0x0

    invoke-static {v9, v12, v13}, Ljava/util/Arrays;->fill([JJ)V

    sget-boolean v9, Lcom/android/internal/os/KernelCpuSpeedReader;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "KernelCpuSpeedReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "line: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v12, "KernelCpuSpeedReader Exception"

    invoke-direct {v9, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_6
    move-exception v3

    move-object v5, v6

    goto :goto_8

    :catchall_1
    move-exception v9

    goto/16 :goto_3

    :catchall_2
    move-exception v9

    move-object v5, v6

    goto/16 :goto_3

    :catch_7
    move-exception v9

    goto/16 :goto_2
.end method
