.class public Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;
.super Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;
.source "SEFImageProviderSRIB.java"

# interfaces
.implements Lcom/samsung/android/media/virtualtour/IVirtualTourImageProvider;


# instance fields
.field private TAG:Ljava/lang/String;

.field m_sFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;-><init>()V

    const-string/jumbo v0, "SEFImageProvider[SRIB]"

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;->m_sFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized getImage(II)Landroid/graphics/Bitmap;
    .locals 16

    monitor-enter p0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    add-int/lit8 v13, p1, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string/jumbo v13, "VirtualTour_%03d"

    invoke-static {v9, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;->m_sFile:Ljava/lang/String;

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "aKeyName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    move/from16 v0, p2

    if-ge v0, v9, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[TIME] Jpeg Decode : DwnSmpl "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Not Supported "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_3
    const/16 v9, 0x10

    move/from16 v0, p2

    if-gt v0, v9, :cond_2

    :try_start_3
    move/from16 v0, p2

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    array-length v9, v3

    const/4 v12, 0x0

    invoke-static {v3, v12, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[TIME] Jpeg Decode : DwnSmpl "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v6, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " msec"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
