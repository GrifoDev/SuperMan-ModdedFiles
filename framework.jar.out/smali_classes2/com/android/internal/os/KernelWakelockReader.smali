.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    return-void
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 24

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_0

    aget-byte v2, p1, v11

    const/16 v5, 0xa

    if-eq v2, v5, :cond_0

    aget-byte v2, p1, v11

    if-eqz v2, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v11, 0x1

    move v3, v4

    monitor-enter p0

    :try_start_0
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_2

    move v4, v3

    :goto_2
    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    aget-byte v2, p1, v4

    const/16 v5, 0xa

    if-eq v2, v5, :cond_1

    aget-byte v2, p1, v4

    if-eqz v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p2, -0x1

    if-le v4, v2, :cond_4

    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v2, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v2, v5, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    move v13, v3

    :goto_4
    if-ge v13, v4, :cond_6

    aget-byte v2, p1, v13

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_5

    const/16 v2, 0x3f

    aput-byte v2, p1, v13

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    if-eqz p3, :cond_8

    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    :goto_5
    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v16

    const/4 v2, 0x0

    aget-object v15, v6, v2

    const/4 v2, 0x1

    aget-wide v20, v7, v2

    move-wide/from16 v0, v20

    long-to-int v9, v0

    if-eqz p3, :cond_9

    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x3e8

    mul-long v18, v20, v22

    :goto_6
    if-eqz v16, :cond_c

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    move-wide/from16 v0, v18

    invoke-direct {v2, v9, v0, v1, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v2}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_7
    add-int/lit8 v3, v4, 0x1

    goto/16 :goto_1

    :cond_8
    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    goto :goto_5

    :cond_9
    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x1f4

    add-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v18, v20, v22

    goto :goto_6

    :cond_a
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v2, v5, :cond_b

    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v2, v9

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    move-wide/from16 v20, v0

    add-long v20, v20, v18

    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_7

    :cond_b
    iput v9, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :cond_c
    if-nez v16, :cond_7

    :try_start_2
    const-string/jumbo v2, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse proc line: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/lang/String;

    sub-int v17, v4, v3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v8, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v10

    :try_start_3
    const-string/jumbo v2, "KernelWakelockReader"

    const-string/jumbo v5, "Failed to parse proc line!"

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p4
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 11

    const/4 v10, 0x0

    const v8, 0x8000

    new-array v0, v8, [B

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/proc/wakelocks"

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v6, :cond_1

    array-length v8, v0

    if-lt v6, v8, :cond_0

    const-string/jumbo v8, "KernelWakelockReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Kernel wake locks exceeded buffer size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    aget-byte v8, v0, v4

    if-nez v8, :cond_2

    move v6, v4

    :cond_1
    invoke-virtual {p0, v0, v6, v7, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/d/wakeup_sources"

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, 0x1

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_3
    const-string/jumbo v8, "KernelWakelockReader"

    const-string/jumbo v9, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v10

    :catch_2
    move-exception v2

    const-string/jumbo v8, "KernelWakelockReader"

    const-string/jumbo v9, "failed to read kernel wakelocks"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
