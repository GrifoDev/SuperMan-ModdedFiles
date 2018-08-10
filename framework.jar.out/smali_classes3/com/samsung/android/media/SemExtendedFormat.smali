.class public Lcom/samsung/android/media/SemExtendedFormat;
.super Ljava/lang/Object;
.source "SemExtendedFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;,
        Lcom/samsung/android/media/SemExtendedFormat$DataPosition;,
        Lcom/samsung/android/media/SemExtendedFormat$DataType;,
        Lcom/samsung/android/media/SemExtendedFormat$KeyName;,
        Lcom/samsung/android/media/SemExtendedFormat$Options;,
        Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFViewerPackageName;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SEF_VERSION:Ljava/lang/String; = "1.11"

.field private static final TAG:Ljava/lang/String; = "SemExtendedFormat"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid key name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    :cond_4
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid SEF Data File name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_5
    const/16 v3, 0x800

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    const/4 v13, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v10, v3, [B

    const/4 v14, 0x0

    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v15, v10}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-static {v2, v10}, Lcom/samsung/android/media/SemExtendedFormat;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v3

    return v3

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v12

    :goto_1
    const/4 v13, 0x0

    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    return v13

    :catch_2
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v3

    :goto_3
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    if-nez v13, :cond_6

    return v13

    :catch_3
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_6
    throw v3

    :cond_7
    const/4 v3, 0x0

    return v3

    :cond_8
    const/16 v3, 0x100

    move/from16 v0, p4

    if-ne v0, v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move/from16 v8, p3

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v3

    return v3

    :cond_9
    const/16 v3, 0x1000

    move/from16 v0, p4

    if-ne v0, v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move/from16 v8, p3

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v3

    return v3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v3

    return v3

    :catchall_1
    move-exception v3

    move-object v14, v15

    goto :goto_3

    :catch_4
    move-exception v12

    move-object v14, v15

    goto :goto_1
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;[BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    if-eqz p2, :cond_4

    array-length v1, p2

    if-gtz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "SemExtendedFormat"

    const-string/jumbo v2, "Invalid data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    const/16 v1, 0x800

    if-ne p3, v1, :cond_6

    invoke-static {v0, p2}, Lcom/samsung/android/media/SemExtendedFormat;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v1

    return v1

    :cond_6
    const/16 v1, 0x100

    if-ne p4, v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, p2

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move v8, v4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_7
    const/16 v1, 0x1000

    if-ne p4, v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, p2

    const/4 v8, 0x1

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, p2

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "SemExtendedFormat"

    const-string/jumbo v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_0
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v0

    return v0

    :cond_6
    array-length v4, p3

    goto :goto_0
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v0

    return v0

    :cond_6
    array-length v4, p3

    goto :goto_0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid SEF Data File name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_5
    const/16 v1, 0x10

    if-ne p5, v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    move v4, v7

    :goto_0
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v1

    return v1

    :cond_6
    array-length v4, p3

    goto :goto_0

    :cond_7
    const/16 v1, 0x100

    if-ne p5, v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    move v4, v7

    :goto_1
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v1

    return v1

    :cond_8
    array-length v4, p3

    goto :goto_1

    :cond_9
    const/16 v1, 0x1000

    if-ne p5, v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_a

    move v4, v7

    :goto_2
    const/4 v7, 0x1

    move-object v1, p1

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v1

    return v1

    :cond_a
    array-length v4, p3

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_c

    move v4, v7

    :goto_3
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v1

    return v1

    :cond_c
    array-length v4, p3

    goto :goto_3
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    if-eqz p2, :cond_4

    array-length v1, p2

    if-gtz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "SemExtendedFormat"

    const-string/jumbo v2, "Invalid data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5
    const/16 v1, 0x10

    if-ne p5, v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    move v4, v8

    :goto_0
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_6
    array-length v4, p3

    goto :goto_0

    :cond_7
    const/16 v1, 0x100

    if-ne p5, v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    move v4, v8

    :goto_1
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_8
    array-length v4, p3

    goto :goto_1

    :cond_9
    const/16 v1, 0x1000

    if-ne p5, v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_a

    move v4, v8

    :goto_2
    array-length v6, p2

    const/4 v8, 0x1

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_a
    array-length v4, p3

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_c

    move v4, v8

    :goto_3
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v1

    return v1

    :cond_c
    array-length v4, p3

    goto :goto_3
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "SemExtendedFormat"

    const-string/jumbo v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    const/16 v0, 0x10

    if-ne p5, v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_0
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v0

    return v0

    :cond_6
    array-length v4, p3

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    :goto_1
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v0

    return v0

    :cond_8
    array-length v4, p3

    goto :goto_1
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v0

    return v0

    :cond_6
    array-length v4, p3

    goto :goto_0
.end method

.method public static addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II)I
    .locals 8

    const/4 v4, 0x0

    array-length v6, p1

    array-length v0, p2

    if-eq v6, v0, :cond_2

    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", dataFileNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    array-length v0, p3

    if-eq v6, v0, :cond_0

    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", dataTypes data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    array-length v0, p1

    new-array v2, v0, [I

    const/4 v7, 0x0

    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_4

    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[III)I

    move-result v0

    return v0
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;

    move-result-object v0

    return-object v0
.end method

.method public static clearAudioData(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static clearFastSEFData(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static clearQdioData(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static clearSEFData(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compact(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Invalid_Data"

    invoke-static {p0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static convertImageToMP4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->getMajorDataType(Ljava/lang/String;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "This type of file is not yet supported. type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/samsung/android/media/InteractivePanoramaConverter;->getInstance()Lcom/samsung/android/media/InteractivePanoramaConverter;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/samsung/android/media/InteractivePanoramaConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    const/16 v4, 0x8e1

    :try_start_1
    invoke-static {v1, v4}, Lcom/samsung/android/media/SemExtendedFormat;->hasSEFData(Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/samsung/android/media/MotionPanoramaConverter;->getInstance()Lcom/samsung/android/media/MotionPanoramaConverter;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/samsung/android/media/MotionPanoramaConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/samsung/android/media/MotionPhotoConverter;->getInstance()Lcom/samsung/android/media/MotionPhotoConverter;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/samsung/android/media/MotionPhotoConverter;->convertToMp4(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const/16 v4, 0x971

    invoke-static {v1, v4}, Lcom/samsung/android/media/SemExtendedFormat;->hasSEFData(Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->getInstance()Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->convertToMP4(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    new-instance v2, Lcom/samsung/android/transcode/EncodeSoundNShot;

    const/4 v4, 0x5

    invoke-direct {v2, p1, v4, p0}, Lcom/samsung/android/transcode/EncodeSoundNShot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/transcode/EncodeSoundNShot;->encode()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_4
        0x8d0 -> :sswitch_0
        0x8e0 -> :sswitch_1
        0x970 -> :sswitch_3
        0xa30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid src file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dst file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static copyAllData(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid src file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid dst file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    invoke-static {v1, v0}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static copyAllSEFData(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid src file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid dst file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    invoke-static {v1, v0}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid src file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dst file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static copyAudioData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid src file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dst file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static deleteAllData(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->DeleteQdioFromFile(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    return v2

    :cond_2
    return v4

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_4

    return v2

    :cond_4
    return v4
.end method

.method public static deleteAllSEFData(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteAllSEFData(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static deleteAllSEFData(Ljava/io/File;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->DeleteQdioFromFile(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    return v2

    :cond_2
    return v4

    :cond_3
    const/16 v1, 0x10

    if-ne p1, v1, :cond_5

    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_4

    return v2

    :cond_4
    return v4

    :cond_5
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6

    return v2

    :cond_6
    return v4
.end method

.method public static deleteAudioData(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string/jumbo v0, "SoundShot_000"

    const-string/jumbo v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/media/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static deleteData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    return v2

    :cond_4
    return v4
.end method

.method public static deleteFastSEFData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    return v1

    :cond_4
    return v3
.end method

.method public static deleteQdioData(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string/jumbo v0, "SoundShot_000"

    const-string/jumbo v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/media/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static deleteSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const/16 v1, 0x10

    if-ne p2, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    return v2

    :cond_4
    return v4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    return v2

    :cond_6
    return v4
.end method

.method public static getAudioDataInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->getAudioDataInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getData(Ljava/io/File;Ljava/lang/String;)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_1

    :cond_0
    const-string/jumbo v16, "SemExtendedFormat"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Invalid file name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_3

    :cond_2
    const-string/jumbo v16, "SemExtendedFormat"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Invalid key name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_3
    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-static {v6}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_4

    invoke-static {v6}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    invoke-static {v6}, Lcom/samsung/android/media/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;

    move-result-object v10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/samsung/android/media/QdioJNI;->getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B

    move-result-object v11

    return-object v11

    :cond_4
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v16, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_5
    return-object v16

    :cond_6
    :try_start_2
    iget-wide v14, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->offset:J

    iget-wide v0, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    iget-wide v0, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v11, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_8

    const/16 v16, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_7
    return-object v16

    :cond_8
    :try_start_3
    invoke-virtual {v8, v14, v15}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_a

    const/16 v16, 0x0

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_9
    return-object v16

    :cond_a
    :try_start_4
    invoke-virtual {v8, v11}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    if-nez v9, :cond_c

    const/16 v16, 0x0

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_b
    return-object v16

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_d
    move-object v7, v8

    :cond_e
    :goto_0
    return-object v11

    :catch_0
    move-exception v3

    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v16

    :goto_2
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_f
    throw v16

    :catchall_1
    move-exception v16

    move-object v7, v8

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v7, v8

    goto :goto_1
.end method

.method public static getDataCount(Ljava/io/File;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid key name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    move-object v1, v3

    check-cast v1, [J

    new-instance v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    invoke-direct {v2}, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_5

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->getAudioDataPositionArray(Ljava/lang/String;)[J

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v4, "SemExtendedFormat"

    const-string/jumbo v5, "No Sound data is found in file."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    aget-wide v4, v1, v5

    iput-wide v4, v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    aget-wide v4, v1, v6

    iput-wide v4, v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    return-object v2

    :cond_5
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v1

    if-nez v1, :cond_6

    const-string/jumbo v4, "SemExtendedFormat"

    const-string/jumbo v5, "No SEF data is found in file."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_6
    aget-wide v4, v1, v5

    iput-wide v4, v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    aget-wide v4, v1, v6

    iput-wide v4, v2, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    return-object v2
.end method

.method public static getDataPositionArray(Ljava/io/File;Ljava/lang/String;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid key name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    move-object v0, v2

    check-cast v0, [J

    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-static {v1}, Lcom/samsung/android/media/QdioJNI;->getAudioDataPositionArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2

    :cond_4
    invoke-static {v1, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v3, "SemExtendedFormat"

    const-string/jumbo v4, "No SEF data matching to given keyName is found in file."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    return-object v0
.end method

.method public static getDataType(Ljava/io/File;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getDataTypeArray(Ljava/io/File;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public static getKeyNameArray(Ljava/io/File;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKeyNameArray(Ljava/io/File;I)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Data Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMajorDataType(Ljava/lang/String;)I
    .locals 8

    const/4 v7, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    return v7

    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No data type has been found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-le v2, v7, :cond_5

    aget v4, v0, v2

    const/16 v5, 0x800

    if-lt v4, v5, :cond_4

    aget v4, v0, v2

    const/16 v5, 0x4000

    if-gt v4, v5, :cond_4

    aget v4, v0, v2

    and-int/lit8 v4, v4, 0xf

    if-nez v4, :cond_4

    aget v4, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No major data type has been found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public static getSEFData(Ljava/io/File;Ljava/lang/String;)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_1

    :cond_0
    const-string/jumbo v16, "SemExtendedFormat"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Invalid file name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_3

    :cond_2
    const-string/jumbo v16, "SemExtendedFormat"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Invalid key name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_3
    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-static {v6}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_4

    invoke-static {v6}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    invoke-static {v6}, Lcom/samsung/android/media/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;

    move-result-object v10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/samsung/android/media/QdioJNI;->getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B

    move-result-object v11

    return-object v11

    :cond_4
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v16, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_5
    return-object v16

    :cond_6
    :try_start_2
    iget-wide v14, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->offset:J

    iget-wide v0, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    iget-wide v0, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v11, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_8

    const/16 v16, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_7
    return-object v16

    :cond_8
    :try_start_3
    invoke-virtual {v8, v14, v15}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_a

    const/16 v16, 0x0

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_9
    return-object v16

    :cond_a
    :try_start_4
    invoke-virtual {v8, v11}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    if-nez v9, :cond_c

    const/16 v16, 0x0

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_b
    return-object v16

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_d
    move-object v7, v8

    :cond_e
    :goto_0
    return-object v11

    :catch_0
    move-exception v3

    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v16

    :goto_2
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_f
    throw v16

    :catchall_1
    move-exception v16

    move-object v7, v8

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v7, v8

    goto :goto_1
.end method

.method public static getSEFData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_1

    :cond_0
    const-string/jumbo v14, "SemExtendedFormat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid file name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return-object v14

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_3

    :cond_2
    const-string/jumbo v14, "SemExtendedFormat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid key name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return-object v14

    :cond_3
    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v14, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_4
    return-object v14

    :cond_5
    :try_start_2
    iget-wide v12, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->offset:J

    iget-wide v14, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    add-long v4, v12, v14

    iget-wide v14, v2, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    long-to-int v14, v14

    new-array v9, v14, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-gez v14, :cond_7

    const/4 v14, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_6
    return-object v14

    :cond_7
    :try_start_3
    invoke-virtual {v7, v12, v13}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_9

    const/4 v14, 0x0

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_8
    return-object v14

    :cond_9
    :try_start_4
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    if-nez v8, :cond_b

    const/4 v14, 0x0

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_a
    return-object v14

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_c
    move-object v6, v7

    :cond_d
    :goto_0
    return-object v9

    :catch_0
    move-exception v3

    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v14

    :goto_2
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_e
    throw v14

    :catchall_1
    move-exception v14

    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v6, v7

    goto :goto_1
.end method

.method public static getSEFDataCount(Ljava/io/File;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getSEFDataCount(Ljava/lang/String;)I
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v2, "SemExtendedFormat"

    const-string/jumbo v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_4
    new-instance v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;

    invoke-direct {v1}, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;-><init>()V

    aget v2, v0, v3

    iput v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->offset:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->length:I

    return-object v1
.end method

.method public static getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v2, "SemExtendedFormat"

    const-string/jumbo v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_4
    new-instance v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;

    invoke-direct {v1}, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;-><init>()V

    aget-wide v2, v0, v3

    iput-wide v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->offset:J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition64;->length:J

    return-object v1
.end method

.method public static getSEFDataPositionArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v1, "SemExtendedFormat"

    const-string/jumbo v2, "No SEF data is found in file."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    return-object v0
.end method

.method public static getSEFDataType(Ljava/io/File;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSEFSubDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFSubDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v2, "SemExtendedFormat"

    const-string/jumbo v3, "No SEF sub data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_4
    new-instance v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;

    invoke-direct {v1}, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;-><init>()V

    aget v2, v0, v3

    iput v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;->offset:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition;->length:I

    return-object v1
.end method

.method public static getSEFSubDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFSubDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v2, "SemExtendedFormat"

    const-string/jumbo v3, "No SEF sub data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_4
    new-instance v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;

    invoke-direct {v1}, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;-><init>()V

    aget-wide v2, v0, v3

    iput-wide v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;->offset:J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/samsung/android/media/SemExtendedFormat$SEFSubDataPosition64;->length:J

    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/media/SEFJNI;->getNativeVersion()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1.11_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasData(Ljava/io/File;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Data Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    if-eq p1, v4, :cond_0

    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    return v6

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-le v2, v4, :cond_5

    aget v3, v0, v2

    if-ne p1, v3, :cond_4

    const/4 v3, 0x1

    return v3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return v6
.end method

.method public static hasData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", keyName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    return v6

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listKeyNames(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    array-length v3, v0

    if-gtz v3, :cond_4

    if-eqz v0, :cond_4

    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    return v3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    return v6
.end method

.method public static hasDataType(Ljava/lang/String;I)Z
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Data Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    if-eq p1, v3, :cond_0

    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    return v5

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-le v1, v3, :cond_5

    aget v2, v0, v1

    if-ne p1, v2, :cond_4

    const/4 v2, 0x1

    return v2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method public static hasSEFData(Ljava/io/File;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Data Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    if-eq p1, v4, :cond_0

    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    return v6

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-le v2, v4, :cond_5

    aget v3, v0, v2

    if-ne p1, v3, :cond_4

    const/4 v3, 0x1

    return v3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return v6
.end method

.method public static hasSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", keyName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v1}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    return v6

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listKeyNames(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    array-length v3, v0

    if-gtz v3, :cond_4

    if-eqz v0, :cond_4

    const-string/jumbo v3, "SemExtendedFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    return v3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    return v6
.end method

.method public static isAudioJPEG(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isMp4ConversionSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/media/SemExtendedFormat;->getMajorDataType(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string/jumbo v4, "SemExtendedFormat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "This type of file is not yet supported. type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.app.interactivepanoramaviewer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/media/SemExtendedFormat;->isViewerInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    return v4

    :sswitch_1
    const/16 v4, 0x8e1

    invoke-static {v1, v4}, Lcom/samsung/android/media/SemExtendedFormat;->hasSEFData(Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "com.samsung.android.app.motionpanoramaviewer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/media/SemExtendedFormat;->isViewerInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    return v4

    :cond_0
    return v7

    :sswitch_2
    return v5

    :sswitch_3
    const/16 v4, 0x971

    invoke-static {v1, v4}, Lcom/samsung/android/media/SemExtendedFormat;->hasSEFData(Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "com.samsung.android.app.selfmotionpanoramaviewer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/media/SemExtendedFormat;->isViewerInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :cond_1
    return v7

    :sswitch_4
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_4
        0x8d0 -> :sswitch_0
        0x8e0 -> :sswitch_1
        0x970 -> :sswitch_3
        0xa30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static isSEFFile(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSEFFile(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidFile(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SemExtendedFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/samsung/android/media/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isViewerInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    return v2
.end method

.method public static listKeyNames(Ljava/io/File;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static listKeyNames(Ljava/io/File;I)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Data Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static listKeyNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Data Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static listSEFDataTypes(Ljava/io/File;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemExtendedFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public static listSEFDataTypes(Ljava/lang/String;)[I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveAudioJPEG input parameter is null :  audioStream.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_1
    array-length v0, p2

    if-lez v0, :cond_0

    array-length v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p2, v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->saveAudioJPEG(Ljava/lang/String;[BILjava/lang/String;I)I

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v0, "SemExtendedFormat"

    const-string/jumbo v1, "saveAudioJPEG input parameter is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveAudioJPEG(Ljava/lang/String;[B)I
    .locals 1

    const-string/jumbo v0, "SoundShot_000"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/media/SemExtendedFormat;->saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public static showSEFDataList(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemExtendedFormat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    return-void
.end method
