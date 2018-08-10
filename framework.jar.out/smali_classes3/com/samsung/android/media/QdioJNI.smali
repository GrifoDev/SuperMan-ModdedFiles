.class public Lcom/samsung/android/media/QdioJNI;
.super Ljava/lang/Object;
.source "QdioJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QdioJNI"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SEF"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native AddSoundInQdioFile(Ljava/lang/String;[BILjava/lang/String;I)I
.end method

.method public static native DeleteQdioFromFile(Ljava/lang/String;)I
.end method

.method private static native ParseQdioFile(Ljava/lang/String;)[I
.end method

.method private static native ParseQdioFile64(Ljava/lang/String;)[J
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, v3

    check-cast v0, [I

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "QdioJNI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkAudioInJPEG input parameter is null : filename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const-string/jumbo v4, "QdioJNI"

    const-string/jumbo v5, "Some Sound Data is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    new-instance v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;

    invoke-direct {v2}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_5

    aget v4, v0, v1

    if-lez v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    if-gtz v4, :cond_4

    :cond_3
    const-string/jumbo v4, "QdioJNI"

    const-string/jumbo v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    iget-object v4, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    iput-object p0, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->filename:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public static checkFileString(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static native copyAdioData(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->copyAdioData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAudioDataInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    move-object v1, v3

    check-cast v1, [I

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "QdioJNI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAudioDataInJPEG input parameter is null : filename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    array-length v4, v1

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const-string/jumbo v4, "QdioJNI"

    const-string/jumbo v5, "Some Sound Data is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    new-instance v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;

    invoke-direct {v0}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_5

    aget v4, v1, v2

    if-lez v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget v4, v1, v4

    if-gtz v4, :cond_4

    :cond_3
    const-string/jumbo v4, "QdioJNI"

    const-string/jumbo v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    iget-object v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    iput-object p0, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->filename:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getAudioDataPositionArray(Ljava/lang/String;)[J
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, [I

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "QdioJNI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAudioPositionArray input parameter is null : filename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const-string/jumbo v3, "QdioJNI"

    const-string/jumbo v4, "Some Sound Data is broken"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const/4 v2, 0x2

    new-array v1, v2, [J

    aget v2, v0, v4

    int-to-long v2, v2

    aput-wide v2, v1, v4

    aget v2, v0, v6

    int-to-long v2, v2

    aget-wide v4, v1, v4

    sub-long/2addr v2, v4

    aput-wide v2, v1, v6

    return-object v1
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;I)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    move-object v4, v8

    check-cast v4, [B

    if-nez p0, :cond_0

    const-string/jumbo v9, "QdioJNI"

    const-string/jumbo v10, "qdioJpegData is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_0
    iget v9, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    if-gt v9, p1, :cond_1

    const-string/jumbo v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid index. file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " audio streams but index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getStartOffset(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getLength(I)I

    move-result v9

    add-int v1, v5, v9

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v9

    if-ge v9, v1, :cond_2

    const-string/jumbo v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fis.available is smaller then audio stream end : fileLen = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", audio strema end on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v8

    :cond_2
    :try_start_0
    const-string/jumbo v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fis.avaliable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "s = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v9, v1, v5

    new-array v4, v9, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v8

    :cond_3
    int-to-long v10, v5

    :try_start_1
    invoke-virtual {v2, v10, v11}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v8

    :cond_4
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v8

    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v8
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    move-object v4, v8

    check-cast v4, [B

    if-nez p0, :cond_0

    const-string/jumbo v9, "QdioJNI"

    const-string/jumbo v10, "qdioJpegData is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_0
    iget v9, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    if-gt v9, p1, :cond_1

    const-string/jumbo v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid index. file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " audio streams but index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getStartOffset(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getLength(I)I

    move-result v9

    add-int v1, v5, v9

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v9

    if-ge v9, v1, :cond_2

    const-string/jumbo v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fis.available is smaller then audio stream end : fileLen = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", audio strema end on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v8

    :cond_2
    :try_start_0
    const-string/jumbo v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fis.avaliable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "QdioJNI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "s = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v9, v1, v5

    new-array v4, v9, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v8

    :cond_3
    int-to-long v10, v5

    :try_start_1
    invoke-virtual {v2, v10, v11}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v8

    :cond_4
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v8

    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v8
.end method

.method private static native getNativeVersion()I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/media/QdioJNI;->getNativeVersion()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1.02_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "QdioJNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isJPEG input parameter is null : filename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->isQdioFile(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static native isQdioFile(Ljava/lang/String;)I
.end method
