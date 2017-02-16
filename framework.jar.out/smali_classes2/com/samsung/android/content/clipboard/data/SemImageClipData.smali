.class public Lcom/samsung/android/content/clipboard/data/SemImageClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemImageClipData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemImageClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExtraDataPath:Ljava/lang/String;

.field private transient mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

.field private mImagePath:Ljava/lang/String;

.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->readFromSource(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method private compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    .locals 22
    .param p1, "src"    # Ljava/io/FileInputStream;
    .param p2, "dest"    # Ljava/io/FileInputStream;

    .prologue
    .line 296
    const/4 v5, 0x5

    .line 297
    .local v5, "compareCount":I
    const/16 v6, 0x80

    .line 298
    .local v6, "compareSize":I
    const/16 v17, 0x0

    .line 301
    .local v17, "result":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v18, v0

    .line 302
    .local v18, "srcSize":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v7, v0

    .line 303
    .local v7, "destSize":I
    move/from16 v0, v18

    if-ne v0, v7, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 304
    :cond_0
    const/16 v20, 0x0

    .line 341
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 342
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :goto_0
    const/16 p1, 0x0

    .line 347
    .local p1, "src":Ljava/io/FileInputStream;
    const/16 p2, 0x0

    .line 304
    .local p2, "dest":Ljava/io/FileInputStream;
    return v20

    .line 303
    .local p1, "src":Ljava/io/FileInputStream;
    .local p2, "dest":Ljava/io/FileInputStream;
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v7, v0, :cond_0

    .line 307
    const/16 v20, 0x80

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    move/from16 v4, v18

    .line 308
    .local v4, "buffSize":I
    :goto_1
    :try_start_2
    div-int v19, v18, v4

    .line 309
    .local v19, "tmp":I
    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    const/4 v12, 0x5

    .line 311
    .local v12, "iCnt":I
    :goto_2
    mul-int v20, v4, v12

    sub-int v19, v18, v20

    .line 312
    div-int v13, v19, v12

    .line 315
    .local v13, "offset":I
    const/4 v3, 0x0

    .line 316
    .local v3, "bisSrc":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 317
    .local v2, "bisDest":Ljava/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 318
    .local v14, "position":I
    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 319
    .local v16, "readSrcData":[B
    new-array v15, v4, [B

    .line 321
    .local v15, "readDestData":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    .end local v3    # "bisSrc":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 322
    .local v3, "bisSrc":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    .end local v2    # "bisDest":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    .local v2, "bisDest":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .local v10, "i1":I
    :goto_3
    if-ge v10, v12, :cond_6

    .line 325
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 326
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v15, v0, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 328
    add-int v20, v4, v13

    add-int v14, v14, v20

    .line 329
    int-to-long v0, v14

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 330
    int-to-long v0, v14

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 332
    const/4 v11, 0x0

    .local v11, "i2":I
    :goto_4
    if-ge v11, v4, :cond_5

    .line 333
    aget-byte v20, v16, v11

    aget-byte v21, v15, v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    .line 332
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 343
    .end local v2    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v3    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v4    # "buffSize":I
    .end local v10    # "i1":I
    .end local v11    # "i2":I
    .end local v12    # "iCnt":I
    .end local v13    # "offset":I
    .end local v14    # "position":I
    .end local v15    # "readDestData":[B
    .end local v16    # "readSrcData":[B
    .end local v19    # "tmp":I
    :catch_0
    move-exception v9

    .line 344
    .local v9, "e1":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 345
    .end local v9    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 346
    const/16 p1, 0x0

    .line 347
    .local p1, "src":Ljava/io/FileInputStream;
    const/16 p2, 0x0

    .line 345
    .local p2, "dest":Ljava/io/FileInputStream;
    throw v20

    .line 307
    .local p1, "src":Ljava/io/FileInputStream;
    .local p2, "dest":Ljava/io/FileInputStream;
    :cond_2
    const/16 v4, 0x80

    .restart local v4    # "buffSize":I
    goto :goto_1

    .restart local v19    # "tmp":I
    :cond_3
    move/from16 v12, v19

    .line 309
    goto :goto_2

    .line 333
    .restart local v2    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v3    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v10    # "i1":I
    .restart local v11    # "i2":I
    .restart local v12    # "iCnt":I
    .restart local v13    # "offset":I
    .restart local v14    # "position":I
    .restart local v15    # "readDestData":[B
    .restart local v16    # "readSrcData":[B
    :cond_4
    const/16 v17, 0x0

    goto :goto_5

    .line 324
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 341
    .end local v11    # "i2":I
    :cond_6
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 342
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 346
    const/16 p1, 0x0

    .line 347
    .end local v2    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v3    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v4    # "buffSize":I
    .end local v7    # "destSize":I
    .end local v10    # "i1":I
    .end local v12    # "iCnt":I
    .end local v13    # "offset":I
    .end local v14    # "position":I
    .end local v15    # "readDestData":[B
    .end local v16    # "readSrcData":[B
    .end local v18    # "srcSize":I
    .end local v19    # "tmp":I
    .local p1, "src":Ljava/io/FileInputStream;
    :goto_6
    const/16 p2, 0x0

    .line 350
    .local p2, "dest":Ljava/io/FileInputStream;
    :goto_7
    return v17

    .line 343
    .restart local v2    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v3    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v4    # "buffSize":I
    .restart local v7    # "destSize":I
    .restart local v10    # "i1":I
    .restart local v12    # "iCnt":I
    .restart local v13    # "offset":I
    .restart local v14    # "position":I
    .restart local v15    # "readDestData":[B
    .restart local v16    # "readSrcData":[B
    .restart local v18    # "srcSize":I
    .restart local v19    # "tmp":I
    .local p1, "src":Ljava/io/FileInputStream;
    .local p2, "dest":Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    .line 344
    .restart local v9    # "e1":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 346
    .end local v2    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v3    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v4    # "buffSize":I
    .end local v7    # "destSize":I
    .end local v10    # "i1":I
    .end local v12    # "iCnt":I
    .end local v13    # "offset":I
    .end local v14    # "position":I
    .end local v15    # "readDestData":[B
    .end local v16    # "readSrcData":[B
    .end local v18    # "srcSize":I
    .end local v19    # "tmp":I
    :goto_8
    const/16 p1, 0x0

    .line 347
    .local p1, "src":Ljava/io/FileInputStream;
    const/16 p2, 0x0

    .local p2, "dest":Ljava/io/FileInputStream;
    goto :goto_7

    .line 345
    .end local v9    # "e1":Ljava/io/IOException;
    .restart local v2    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v3    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v4    # "buffSize":I
    .restart local v7    # "destSize":I
    .restart local v10    # "i1":I
    .restart local v12    # "iCnt":I
    .restart local v13    # "offset":I
    .restart local v14    # "position":I
    .restart local v15    # "readDestData":[B
    .restart local v16    # "readSrcData":[B
    .restart local v18    # "srcSize":I
    .restart local v19    # "tmp":I
    .local p1, "src":Ljava/io/FileInputStream;
    .local p2, "dest":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v20

    .line 346
    const/16 p1, 0x0

    .line 347
    .local p1, "src":Ljava/io/FileInputStream;
    const/16 p2, 0x0

    .line 345
    .local p2, "dest":Ljava/io/FileInputStream;
    throw v20

    .line 336
    .end local v2    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v3    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v4    # "buffSize":I
    .end local v7    # "destSize":I
    .end local v10    # "i1":I
    .end local v12    # "iCnt":I
    .end local v13    # "offset":I
    .end local v14    # "position":I
    .end local v15    # "readDestData":[B
    .end local v16    # "readSrcData":[B
    .end local v18    # "srcSize":I
    .end local v19    # "tmp":I
    .local p1, "src":Ljava/io/FileInputStream;
    .local p2, "dest":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    .line 337
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 338
    const/16 v17, 0x0

    .line 341
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 342
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 346
    const/16 p1, 0x0

    .local p1, "src":Ljava/io/FileInputStream;
    goto :goto_6

    .line 343
    .local p1, "src":Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    .line 344
    .restart local v9    # "e1":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    .line 345
    .end local v9    # "e1":Ljava/io/IOException;
    :catchall_2
    move-exception v20

    .line 346
    const/16 p1, 0x0

    .line 347
    .local p1, "src":Ljava/io/FileInputStream;
    const/16 p2, 0x0

    .line 345
    .local p2, "dest":Ljava/io/FileInputStream;
    throw v20

    .line 339
    .end local v8    # "e":Ljava/io/IOException;
    .local p1, "src":Ljava/io/FileInputStream;
    .local p2, "dest":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v20

    .line 341
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 342
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 346
    :goto_9
    const/16 p1, 0x0

    .line 347
    .local p1, "src":Ljava/io/FileInputStream;
    const/16 p2, 0x0

    .line 339
    .local p2, "dest":Ljava/io/FileInputStream;
    throw v20

    .line 343
    .local p1, "src":Ljava/io/FileInputStream;
    .local p2, "dest":Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    .line 344
    .restart local v9    # "e1":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_9

    .line 345
    .end local v9    # "e1":Ljava/io/IOException;
    :catchall_4
    move-exception v20

    .line 346
    const/16 p1, 0x0

    .line 347
    .local p1, "src":Ljava/io/FileInputStream;
    const/16 p2, 0x0

    .line 345
    .local p2, "dest":Ljava/io/FileInputStream;
    throw v20
.end method

.method private compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .locals 8
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 354
    const/4 v4, 0x0

    .line 355
    .local v4, "fisSrc":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 356
    .local v2, "fisDest":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 359
    .local v6, "isSameFile":Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .local v5, "fisSrc":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    .local v3, "fisDest":Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    move-result v6

    .line 366
    .local v6, "isSameFile":Z
    if-eqz v5, :cond_0

    .line 367
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 369
    :cond_0
    if-eqz v3, :cond_1

    .line 370
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v2, v3

    .end local v3    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 377
    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .end local v6    # "isSameFile":Z
    :cond_2
    :goto_1
    return v6

    .line 372
    .restart local v3    # "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v6    # "isSameFile":Z
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fisDest":Ljava/io/FileInputStream;
    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    .local v6, "isSameFile":Z
    :catch_1
    move-exception v0

    .line 363
    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 366
    if-eqz v4, :cond_3

    .line 367
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 369
    :cond_3
    if-eqz v2, :cond_2

    .line 370
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 372
    :catch_2
    move-exception v1

    .line 373
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 364
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 366
    :goto_3
    if-eqz v4, :cond_4

    .line 367
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 369
    :cond_4
    if-eqz v2, :cond_5

    .line 370
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 364
    :cond_5
    :goto_4
    throw v7

    .line 372
    :catch_3
    move-exception v1

    .line 373
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 364
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .local v4, "fisSrc":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_3

    .line 362
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private compareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v4, 0x0

    .line 382
    .local v4, "fisSrc":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 383
    .local v2, "fisDest":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 386
    .local v6, "isSameFile":Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .local v5, "fisSrc":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 388
    .local v3, "fisDest":Ljava/io/FileInputStream;
    :try_start_2
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    move-result v6

    .line 394
    .local v6, "isSameFile":Z
    if-eqz v5, :cond_0

    .line 395
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 397
    :cond_0
    if-eqz v3, :cond_1

    .line 398
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v2, v3

    .end local v3    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 405
    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return v6

    .line 400
    .restart local v3    # "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fisDest":Ljava/io/FileInputStream;
    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    .local v6, "isSameFile":Z
    :catch_1
    move-exception v0

    .line 390
    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 391
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    .line 394
    .local v6, "isSameFile":Z
    if-eqz v4, :cond_3

    .line 395
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 397
    :cond_3
    if-eqz v2, :cond_2

    .line 398
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 400
    :catch_2
    move-exception v1

    .line 401
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 392
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/lang/Exception;
    .local v6, "isSameFile":Z
    :catchall_0
    move-exception v7

    .line 394
    :goto_3
    if-eqz v4, :cond_4

    .line 395
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 397
    :cond_4
    if-eqz v2, :cond_5

    .line 398
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 392
    :cond_5
    :goto_4
    throw v7

    .line 400
    :catch_3
    move-exception v1

    .line 401
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .local v4, "fisSrc":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_3

    .line 389
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisDest":Ljava/io/FileInputStream;
    .restart local v5    # "fisSrc":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private setClipData()V
    .locals 5

    .prologue
    .line 86
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "text/uri-list"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 87
    .local v2, "mimeType":[Ljava/lang/String;
    new-instance v1, Landroid/content/ClipData$Item;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 88
    .local v1, "item":Landroid/content/ClipData$Item;
    new-instance v0, Landroid/content/ClipData;

    const-string/jumbo v3, "clipboarddragNdrop"

    invoke-direct {v0, v3, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 89
    .local v0, "data":Landroid/content/ClipData;
    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    .line 85
    return-void
.end method


# virtual methods
.method public HasExtraData()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 203
    const-string/jumbo v5, "SemImageClipData"

    const-string/jumbo v6, "bitmap equals"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "result":Z
    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    return v1

    .line 209
    :cond_0
    instance-of v5, p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-nez v5, :cond_1

    .line 210
    return v1

    :cond_1
    move-object v3, p1

    .line 213
    nop

    nop

    .line 214
    .local v3, "trgData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "trgBmp":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getInitBasePath()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "trgInitBasePath":Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 218
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 219
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_3

    .line 220
    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    const/4 v1, 0x1

    .line 222
    const-string/jumbo v5, "SemImageClipData"

    const-string/jumbo v6, "bitmap equals"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_0
    return v1

    .line 225
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    const/4 v1, 0x1

    .line 227
    const-string/jumbo v5, "SemImageClipData"

    const-string/jumbo v6, "bitmap equals"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData()V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v2

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    return-object v3

    .line 176
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "file":Ljava/io/File;
    const/high16 v2, 0x10000000

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    return-object v3
.end method

.method public getImageFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInitBasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 268
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 269
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 270
    return-object v1

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    return-object v4

    .line 277
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "file":Ljava/io/File;
    const/high16 v3, 0x10000000

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 284
    return-object v4
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 255
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 259
    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SemImageClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFromSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "altData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    .line 68
    .local v0, "Result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 69
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 72
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    .line 82
    .end local v0    # "Result":Z
    .end local p2    # "altData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :goto_0
    return v0

    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :pswitch_0
    move-object v1, p2

    .line 74
    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 75
    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .end local p2    # "altData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "FilePath"    # Ljava/lang/String;
    .param p2, "ExtraDataPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 420
    const-string/jumbo v2, "SemImageClipData"

    const-string/jumbo v3, "setBitmapPath"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 424
    :cond_0
    return v1

    .line 427
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_2

    .line 428
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 429
    iput-boolean v4, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 431
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 433
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 434
    const-string/jumbo v2, "SemImageClipData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ExtraDataPath ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 438
    :cond_3
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 439
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 440
    const/4 v1, 0x1

    .line 441
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 447
    .end local p2    # "ExtraDataPath":Ljava/lang/String;
    :cond_4
    :goto_0
    return v1

    .line 442
    .restart local p2    # "ExtraDataPath":Ljava/lang/String;
    :cond_5
    iput-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 443
    const/4 p2, 0x0

    .local p2, "ExtraDataPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public setExtraDataPath(Ljava/lang/String;)Z
    .locals 4
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "Result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 137
    :cond_0
    return v0

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    .line 141
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_2
    const-string/jumbo v2, "SemImageClipData"

    const-string/jumbo v3, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 159
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)Z
    .locals 4
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "Result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 111
    :cond_0
    return v0

    .line 114
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_2

    .line 115
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    .line 116
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    .line 119
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    .line 120
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    .line 124
    :cond_3
    const-string/jumbo v2, "SemImageClipData"

    const-string/jumbo v3, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SemImageClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 239
    const-string/jumbo v0, "SemImageClipData"

    const-string/jumbo v1, "Bitmap write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 238
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
