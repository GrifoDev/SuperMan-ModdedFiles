.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuTimeReader"

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 31

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v12, v24, v26

    const/16 v24, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v25, "/proc/uid_cputime/show_uid_stat"

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v16, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x20

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    :goto_0
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22

    invoke-virtual/range {v16 .. v16}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v2, v26, v28

    if-eqz v2, :cond_3

    move-wide/from16 v4, v22

    move-wide/from16 v6, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    sub-long v4, v22, v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    sub-long v6, v18, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    move-wide/from16 v26, v0

    sub-long v20, v12, v26

    const-wide/16 v26, 0x0

    cmp-long v2, v4, v26

    if-ltz v2, :cond_0

    const-wide/16 v26, 0x0

    cmp-long v2, v6, v26

    if-gez v2, :cond_1

    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Malformed cpu data for UID="

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v25, "!\n"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Time between reads: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v20, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Previous times: u="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, " s="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, "\nCurrent times: u="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v22, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, " s="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v18, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, "\nDelta: u="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v4, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, " s="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v6, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, "KernelUidCpuTimeReader"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    :cond_1
    const-wide/16 v26, 0x0

    cmp-long v2, v4, v26

    if-nez v2, :cond_2

    const-wide/16 v26, 0x0

    cmp-long v2, v6, v26

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJ)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object v11, v14

    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v24

    move-object/from16 v30, v24

    move-object/from16 v24, v2

    move-object/from16 v2, v30

    :goto_2
    if-eqz v11, :cond_4

    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    if-eqz v24, :cond_9

    :try_start_4
    throw v24
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v8

    :goto_4
    const-string/jumbo v2, "KernelUidCpuTimeReader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Failed to read uid_cputime: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    return-void

    :cond_5
    if-eqz v14, :cond_6

    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_6
    if-eqz v24, :cond_7

    :try_start_6
    throw v24
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v8

    move-object v11, v14

    goto :goto_4

    :catch_3
    move-exception v24

    goto :goto_6

    :cond_7
    move-object v11, v14

    goto :goto_5

    :catch_4
    move-exception v25

    if-nez v24, :cond_8

    move-object/from16 v24, v25

    goto :goto_3

    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_4

    :try_start_7
    invoke-virtual/range {v24 .. v25}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v11, v14

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method public removeUid(I)V
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string/jumbo v4, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    const-string/jumbo v4, "KernelUidCpuTimeReader"

    const-string/jumbo v5, "failed to remove uid from uid_cputime module"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :catch_1
    move-exception v5

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catchall_1
    move-exception v4

    goto :goto_4

    :catchall_2
    move-exception v4

    move-object v2, v3

    goto :goto_4

    :catch_5
    move-exception v4

    move-object v2, v3

    goto :goto_3
.end method
