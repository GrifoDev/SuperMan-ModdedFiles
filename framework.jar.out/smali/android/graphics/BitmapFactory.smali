.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "BitmapFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v4, 0x2

    .line 605
    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 606
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 611
    :cond_1
    const-string/jumbo v1, "decodeBitmap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 613
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 615
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 616
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    .line 620
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 619
    throw v1

    .line 618
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 623
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 419
    const/4 v2, 0x0

    .line 420
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 424
    .local v14, "stream":Ljava/io/InputStream;
    if-eqz p0, :cond_1

    .line 425
    :try_start_0
    const-string/jumbo v16, ".dcf"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 426
    const/4 v14, 0x0

    .line 427
    new-instance v3, Landroid/drm/DrmManagerClient;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 428
    .local v3, "drmClient":Landroid/drm/DrmManagerClient;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 429
    .local v5, "drmMimetype":Ljava/lang/String;
    const-string/jumbo v16, "BitmapFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "decodeFile drmMimetype = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz v5, :cond_0

    .line 432
    const-string/jumbo v16, "image/"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 433
    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v12

    .line 435
    .local v12, "rightStatus":I
    if-nez v12, :cond_7

    .line 436
    const-string/jumbo v10, "application/vnd.oma.drm.content"

    .line 437
    .local v10, "mimeType":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 438
    .local v8, "fileLength":J
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-direct {v4, v0, v10}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 439
    .local v4, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v16, "drm_path"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    const-string/jumbo v16, "LENGTH"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    invoke-virtual {v3, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v11

    .line 443
    .local v11, "resultInfo":Landroid/drm/DrmInfo;
    const-string/jumbo v16, "status"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 444
    .local v13, "status":Ljava/lang/String;
    const-string/jumbo v16, "BitmapFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "decodeFile acquireDrmInfo status is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string/jumbo v16, "success"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 447
    invoke-virtual {v11}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v16

    if-eqz v16, :cond_4

    .line 448
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v11}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v15, "stream":Ljava/io/InputStream;
    move-object v14, v15

    .line 462
    .end local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v8    # "fileLength":J
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v12    # "rightStatus":I
    .end local v13    # "status":Ljava/lang/String;
    .end local v14    # "stream":Ljava/io/InputStream;
    .end local v15    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 463
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    .line 464
    const/4 v3, 0x0

    .line 473
    .end local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v5    # "drmMimetype":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v14, :cond_2

    .line 474
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v14, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 475
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v14, :cond_3

    .line 491
    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 497
    :cond_3
    :goto_2
    return-object v2

    .line 450
    .local v2, "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v5    # "drmMimetype":Ljava/lang/String;
    .restart local v8    # "fileLength":J
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v11    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v12    # "rightStatus":I
    .restart local v13    # "status":Ljava/lang/String;
    .restart local v14    # "stream":Ljava/io/InputStream;
    :cond_4
    :try_start_2
    const-string/jumbo v16, "BitmapFactory"

    const-string/jumbo v17, "decodeFile acquireDrmInfo resultInfo is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 483
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v5    # "drmMimetype":Ljava/lang/String;
    .end local v8    # "fileLength":J
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v12    # "rightStatus":I
    .end local v13    # "status":Ljava/lang/String;
    .end local v14    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 487
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v16, "BitmapFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unable to decode stream: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    if-eqz v14, :cond_3

    .line 491
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 492
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    goto :goto_2

    .line 453
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v5    # "drmMimetype":Ljava/lang/String;
    .restart local v8    # "fileLength":J
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v11    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v12    # "rightStatus":I
    .restart local v13    # "status":Ljava/lang/String;
    .restart local v14    # "stream":Ljava/io/InputStream;
    :cond_5
    :try_start_5
    const-string/jumbo v16, "BitmapFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "decodeFile FAIL status = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "INFO"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 488
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v4    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v5    # "drmMimetype":Ljava/lang/String;
    .end local v8    # "fileLength":J
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v12    # "rightStatus":I
    .end local v13    # "status":Ljava/lang/String;
    .end local v14    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v16

    .line 489
    if-eqz v14, :cond_6

    .line 491
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 488
    :cond_6
    :goto_3
    throw v16

    .line 457
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v5    # "drmMimetype":Ljava/lang/String;
    .restart local v12    # "rightStatus":I
    .restart local v14    # "stream":Ljava/io/InputStream;
    :cond_7
    :try_start_7
    const-string/jumbo v16, "BitmapFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "decodeFile Rights not present. rightStatus = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 469
    .end local v3    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v5    # "drmMimetype":Ljava/lang/String;
    .end local v12    # "rightStatus":I
    :cond_8
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .restart local v15    # "stream":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/InputStream;
    .local v14, "stream":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 492
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v14    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v0, 0x0

    .line 795
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v6, 0x2

    .line 760
    const-string/jumbo v3, "decodeFileDescriptor"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 762
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 763
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 775
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 776
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 781
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 780
    throw v3

    .line 765
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 770
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 771
    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 768
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    .line 770
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 768
    :goto_1
    :try_start_5
    throw v3

    .line 771
    :catch_1
    move-exception v2

    .restart local v2    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 779
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 781
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 783
    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 555
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 556
    .local v4, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v4}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    .line 558
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 566
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 572
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "value":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v5, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 573
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Problem decoding into existing bitmap"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 567
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 559
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "value":Landroid/util/TypedValue;
    .local v0, "bm":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 566
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 567
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 564
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 566
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 564
    :cond_1
    :goto_1
    throw v5

    .line 567
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 576
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 518
    if-nez p4, :cond_0

    .line 519
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 522
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 523
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 524
    .local v0, "density":I
    if-nez v0, :cond_3

    .line 525
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 531
    .end local v0    # "density":I
    :cond_1
    :goto_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_2

    if-eqz p0, :cond_2

    .line 532
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 535
    :cond_2
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 526
    .restart local v0    # "density":I
    :cond_3
    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 527
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 740
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v6, 0x2

    const/4 v3, 0x0

    .line 690
    if-nez p0, :cond_0

    .line 691
    return-object v3

    .line 694
    :cond_0
    const/4 v2, 0x0

    .line 696
    .local v2, "bm":Landroid/graphics/Bitmap;
    const-string/jumbo v3, "decodeBitmap"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 698
    :try_start_0
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_1

    .line 699
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 700
    .local v0, "asset":J
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 705
    .end local v0    # "asset":J
    .local v2, "bm":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 706
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 711
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 710
    throw v3

    .line 702
    .local v2, "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 709
    .end local p0    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 714
    return-object v2
.end method

.method private static decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 725
    .end local v0    # "tempStorage":[B
    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0x4000

    new-array v0, v1, [B

    .line 726
    :cond_1
    invoke-static {p0, v0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static native nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 5
    .param p0, "outputBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 643
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    .line 645
    :cond_1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 646
    .local v0, "density":I
    if-eqz v0, :cond_7

    .line 647
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 648
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 649
    .local v3, "targetDensity":I
    if-eqz v3, :cond_2

    if-ne v0, v3, :cond_3

    .line 650
    :cond_2
    return-void

    .line 649
    :cond_3
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v4, :cond_2

    .line 653
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 654
    .local v2, "np":[B
    if-eqz v2, :cond_6

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    .line 655
    :goto_0
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v4, :cond_4

    if-eqz v1, :cond_5

    .line 656
    :cond_4
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 642
    .end local v2    # "np":[B
    .end local v3    # "targetDensity":I
    :cond_5
    :goto_1
    return-void

    .line 654
    .restart local v2    # "np":[B
    .restart local v3    # "targetDensity":I
    :cond_6
    const/4 v1, 0x0

    .local v1, "isNinePatch":Z
    goto :goto_0

    .line 658
    .end local v1    # "isNinePatch":Z
    .end local v2    # "np":[B
    .end local v3    # "targetDensity":I
    :cond_7
    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 660
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_1
.end method
