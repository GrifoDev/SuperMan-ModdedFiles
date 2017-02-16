.class Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveLastkmsg"
.end annotation


# static fields
.field private static final AUTO_COMMENT_FILE:Ljava/lang/String; = "/data/log/autocmt/auto_comment"

.field private static final AUTO_COMMENT_LOG:Ljava/lang/String; = "/proc/auto_comment"

.field private static final AUTO_COMMENT_LOG_DIR:Ljava/lang/String; = "/data/log/autocmt"

.field private static final DUMMARY_LOG_DIR:Ljava/lang/String; = "/data/log"

.field private static final KERNEL_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final LAST_KLOG:Ljava/lang/String; = "/proc/reset_klog"

.field private static final LAST_KMSG:Ljava/lang/String; = "/proc/last_kmsg"

.field private static final LAST_KMSG_SAVE:Ljava/lang/String; = "/data/log/dumpstate_lastkmsg"

.field private static final LAST_SUMMARY:Ljava/lang/String; = "/proc/reset_summary"

.field private static final LAST_SUMMARY_SAVE:Ljava/lang/String; = "/data/log/dump_summary.xml"

.field private static final MAX_LAST_KMSG:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>()V

    return-void
.end method

.method private logAutoCmd()V
    .locals 14

    .prologue
    .line 270
    const/4 v5, 0x0

    .line 271
    .local v5, "fin":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 272
    .local v7, "fout":Ljava/io/FileOutputStream;
    const/16 v11, 0x800

    new-array v2, v11, [B

    .line 273
    .local v2, "buffer":[B
    new-instance v0, Ljava/io/File;

    const-string/jumbo v11, "/proc/auto_comment"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "autoCmt_proc":Ljava/io/File;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 276
    .local v10, "time":Landroid/text/format/Time;
    const-string/jumbo v11, "BootReceiver"

    const-string/jumbo v12, "logAutoCmd - Start"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 281
    const-string/jumbo v11, "%Y%m%d_%H%M%S"

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "date":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "/data/log/autocmt/auto_comment_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "autocmt_save":Ljava/io/File;
    const/4 v9, 0x0

    .line 287
    .local v9, "len":I
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .local v6, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    .end local v5    # "fin":Ljava/io/FileInputStream;
    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .local v8, "fout":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_3

    .line 291
    const/4 v11, 0x0

    invoke-virtual {v8, v2, v11, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 293
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 294
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v11, "BootReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "logAutoCmd - File copy error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 297
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 269
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 296
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :cond_3
    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 297
    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_5
    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 296
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 297
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 296
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_2

    .line 297
    :catch_4
    move-exception v4

    goto :goto_3

    .line 295
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 296
    :goto_6
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 297
    :cond_6
    :goto_7
    if-eqz v7, :cond_7

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 295
    :cond_7
    :goto_8
    throw v11

    .line 296
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 297
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 295
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_6

    .line 293
    .local v5, "fin":Ljava/io/FileInputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :catch_8
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private logLastKmsg()V
    .locals 28

    .prologue
    .line 302
    new-instance v16, Ljava/io/File;

    const-string/jumbo v25, "/proc/last_kmsg"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v16, "lk_proc":Ljava/io/File;
    new-instance v19, Ljava/io/File;

    const-string/jumbo v25, "/proc/reset_summary"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v19, "summary_proc":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    const-string/jumbo v25, "/proc/reset_klog"

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v13, "klog_proc":Ljava/io/File;
    new-instance v24, Ljava/io/File;

    const-string/jumbo v25, "/proc/version"

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v24, "version_proc":Ljava/io/File;
    const/16 v25, 0x800

    move/from16 v0, v25

    new-array v3, v0, [B

    .line 307
    .local v3, "buffer":[B
    const/4 v7, 0x0

    .line 308
    .local v7, "fin":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 309
    .local v18, "summary_fin":Ljava/io/FileInputStream;
    const/16 v22, 0x0

    .line 310
    .local v22, "ver_fin":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 311
    .local v9, "fout":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 312
    .local v11, "gout":Ljava/util/zip/ZipOutputStream;
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 314
    .local v21, "time":Landroid/text/format/Time;
    const-string/jumbo v25, "BootReceiver"

    const-string/jumbo v26, "logLastKmsg - Start"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v25

    if-nez v25, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->setToNow()V

    .line 320
    const-string/jumbo v25, "%Y%m%d_%H%M%S"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "date":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "/data/log/dumpstate_lastkmsg_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ".log.gz"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v17, "lk_save":Ljava/io/File;
    const/4 v14, 0x0

    .line 326
    .local v14, "len":I
    :try_start_0
    const-string/jumbo v25, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    const-string/jumbo v15, "========================================================\n"

    .line 329
    .local v15, "line":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "== dumpstate lastkmsg : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 331
    .local v20, "text":Ljava/lang/String;
    const-string/jumbo v25, "BootReceiver"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "logLastKmsg - New filename is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 334
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 338
    .local v10, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v12, Ljava/util/zip/ZipOutputStream;

    .end local v9    # "fout":Ljava/io/FileOutputStream;
    invoke-direct {v12, v10}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 340
    .local v12, "gout":Ljava/util/zip/ZipOutputStream;
    :try_start_3
    new-instance v25, Ljava/util/zip/ZipEntry;

    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    const-string/jumbo v26, "dumpstate_lastkmsg"

    invoke-direct/range {v25 .. v26}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 342
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/io/FilterOutputStream;->write([B)V

    .line 343
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/io/FilterOutputStream;->write([B)V

    .line 344
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/io/FilterOutputStream;->write([B)V

    .line 346
    const-string/jumbo v20, "\n[Kernel version]: "

    .line 347
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/io/FilterOutputStream;->write([B)V

    .line 349
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isFile()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 350
    new-instance v23, Ljava/io/FileInputStream;

    invoke-direct/range {v23 .. v24}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 351
    .end local v22    # "ver_fin":Ljava/io/FileInputStream;
    .local v23, "ver_fin":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_13

    .line 352
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v3, v0, v14}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_1

    .line 383
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .local v11, "gout":Ljava/util/zip/ZipOutputStream;
    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .local v9, "fout":Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23    # "ver_fin":Ljava/io/FileInputStream;
    .local v22, "ver_fin":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 384
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "text":Ljava/lang/String;
    .end local v22    # "ver_fin":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string/jumbo v25, "BootReceiver"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "logLastKmsg - File copy error"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 386
    if-eqz v7, :cond_1

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 387
    :cond_1
    :goto_3
    if-eqz v22, :cond_2

    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 388
    :cond_2
    :goto_4
    if-eqz v11, :cond_3

    :try_start_8
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 389
    :cond_3
    :goto_5
    if-eqz v9, :cond_4

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, "file_path":Ljava/lang/String;
    const/16 v25, 0x1a0

    .line 397
    const/16 v26, 0x3e8

    const/16 v27, 0x3ef

    .line 395
    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v6, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    .line 402
    .end local v6    # "file_path":Ljava/lang/String;
    :goto_7
    const-string/jumbo v25, "BootReceiver"

    const-string/jumbo v26, "logLastKmsg - Save Complete"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 336
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .local v9, "fout":Ljava/io/FileOutputStream;
    .local v11, "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v20    # "text":Ljava/lang/String;
    .local v22, "ver_fin":Ljava/io/FileInputStream;
    :cond_5
    :try_start_b
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .restart local v8    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 355
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    :cond_6
    :try_start_c
    const-string/jumbo v20, "unknown"

    .line 356
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/io/FilterOutputStream;->write([B)V

    .line 359
    .end local v22    # "ver_fin":Ljava/io/FileInputStream;
    :goto_8
    const-string/jumbo v20, "[Build Fingerprint]: "

    .line 360
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/io/FilterOutputStream;->write([B)V

    .line 362
    const-string/jumbo v25, "ro.build.fingerprint"

    const-string/jumbo v26, "unknown"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 363
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 364
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/io/FilterOutputStream;->write([B)V

    .line 366
    :goto_9
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_7

    .line 367
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v3, v0, v14}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_9

    .line 383
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .local v11, "gout":Ljava/util/zip/ZipOutputStream;
    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .local v9, "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .local v7, "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 370
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    :cond_7
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 371
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 373
    invoke-static {}, Lcom/android/server/BootReceiver;->-get2()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 374
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 375
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    :try_start_d
    new-instance v25, Ljava/util/zip/ZipEntry;

    const-string/jumbo v26, "reset_summary.html"

    invoke-direct/range {v25 .. v26}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 377
    const/4 v14, 0x0

    .line 378
    :goto_a
    invoke-virtual {v7, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_d

    .line 379
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v3, v0, v14}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_a

    .line 383
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    :cond_8
    move-object v7, v8

    .line 386
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    :goto_b
    if-eqz v7, :cond_9

    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 387
    :cond_9
    :goto_c
    if-eqz v22, :cond_a

    :try_start_f
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 388
    :cond_a
    :goto_d
    if-eqz v12, :cond_b

    :try_start_10
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 389
    :cond_b
    :goto_e
    if-eqz v10, :cond_c

    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    :cond_c
    :goto_f
    move-object v11, v12

    .end local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 381
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    :cond_d
    :try_start_12
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_b

    .line 385
    :catchall_0
    move-exception v25

    move-object v11, v12

    .end local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v9, v10

    .line 386
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "text":Ljava/lang/String;
    :goto_10
    if-eqz v7, :cond_e

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    .line 387
    :cond_e
    :goto_11
    if-eqz v22, :cond_f

    :try_start_14
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 388
    :cond_f
    :goto_12
    if-eqz v11, :cond_10

    :try_start_15
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 389
    :cond_10
    :goto_13
    if-eqz v9, :cond_11

    :try_start_16
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 385
    :cond_11
    :goto_14
    throw v25

    .line 386
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v20    # "text":Ljava/lang/String;
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 387
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 388
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_e

    .line 389
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 386
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "text":Ljava/lang/String;
    :catch_7
    move-exception v5

    goto/16 :goto_3

    .line 387
    :catch_8
    move-exception v5

    goto/16 :goto_4

    .line 388
    :catch_9
    move-exception v5

    goto/16 :goto_5

    .line 389
    :catch_a
    move-exception v5

    goto/16 :goto_6

    .line 386
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 387
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_12

    .line 388
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_13

    .line 389
    .end local v5    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_14

    .line 398
    .end local v5    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v5

    .line 399
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v25, "BootReceiver"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "dumpstate_lastkmsg - getCanonicalPath error"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v25

    goto :goto_10

    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v9, "fout":Ljava/io/FileOutputStream;
    .local v11, "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v20    # "text":Ljava/lang/String;
    .restart local v22    # "ver_fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v25

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_10

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v25

    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .local v9, "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_10

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    .end local v22    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    :catchall_4
    move-exception v25

    move-object v11, v12

    .end local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .local v11, "gout":Ljava/util/zip/ZipOutputStream;
    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_10

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v23    # "ver_fin":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v25

    move-object v11, v12

    .end local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23    # "ver_fin":Ljava/io/FileInputStream;
    .local v22, "ver_fin":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_10

    .line 383
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "text":Ljava/lang/String;
    .local v7, "fin":Ljava/io/FileInputStream;
    .local v9, "fout":Ljava/io/FileOutputStream;
    .local v11, "gout":Ljava/util/zip/ZipOutputStream;
    .local v22, "ver_fin":Ljava/io/FileInputStream;
    :catch_10
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v20    # "text":Ljava/lang/String;
    :catch_11
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .local v7, "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .local v9, "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "gout":Ljava/util/zip/ZipOutputStream;
    .end local v22    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "gout":Ljava/util/zip/ZipOutputStream;
    :cond_12
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v23    # "ver_fin":Ljava/io/FileInputStream;
    :cond_13
    move-object/from16 v22, v23

    .end local v23    # "ver_fin":Ljava/io/FileInputStream;
    .local v22, "ver_fin":Ljava/io/FileInputStream;
    goto/16 :goto_8
.end method

.method private trimLastlog(Ljava/lang/String;)V
    .locals 9
    .param p1, "logPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 233
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v5, "logFolder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 235
    .local v3, "listOfAllFiles":[Ljava/io/File;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v4, "listOflogmsg":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 239
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 240
    return-void

    .line 243
    :cond_0
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v1, v3, v6

    .line 244
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "fname":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "dumpstate_lastkmsg"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "auto_comment"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 246
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fname":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/android/server/BootReceiver$SaveLastkmsg$1;

    invoke-direct {v6, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    const-string/jumbo v6, "BootReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trimLastlog - Num of existing listOflogmsg is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_4

    .line 260
    const-string/jumbo v7, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trimLastlog - Delete file"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 262
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BootReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trimLastlog error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 407
    const-string/jumbo v0, "/data/log"

    invoke-direct {p0, v0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimLastlog(Ljava/lang/String;)V

    .line 408
    const-string/jumbo v0, "/data/log/autocmt"

    invoke-direct {p0, v0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimLastlog(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    .line 410
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logAutoCmd()V

    .line 406
    return-void
.end method
