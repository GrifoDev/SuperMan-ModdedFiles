.class public Lcom/samsung/android/media/QdioJNI;
.super Ljava/lang/Object;
.source "QdioJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QdioJNI"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "SEF"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
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
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 72
    const/4 v2, 0x0

    .local v2, "qjData":Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    move-object v0, v3

    .line 73
    nop

    nop

    .line 74
    .local v0, "getParsedData":[I
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
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

    .line 76
    return-object v3

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    return-object v3

    .line 82
    :cond_1
    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 83
    const-string/jumbo v4, "QdioJNI"

    const-string/jumbo v5, "Some Sound Data is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-object v3

    .line 87
    :cond_2
    new-instance v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;

    .end local v2    # "qjData":Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    invoke-direct {v2}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;-><init>()V

    .line 88
    .local v2, "qjData":Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_5

    .line 89
    aget v4, v0, v1

    if-lez v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    if-gtz v4, :cond_4

    .line 90
    :cond_3
    const-string/jumbo v4, "QdioJNI"

    const-string/jumbo v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v3

    .line 93
    :cond_4
    iget-object v4, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v4, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget v4, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    .line 96
    iput-object p0, v2, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->filename:Ljava/lang/String;

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_5
    return-object v2
.end method

.method public static checkFileString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 21
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
    .param p0, "srcFilename"    # Ljava/lang/String;
    .param p1, "dstFilename"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p0, p1}, Lcom/samsung/android/media/QdioJNI;->copyAdioData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAudioDataInJPEG(Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 43
    const/4 v0, 0x0

    .local v0, "ajData":Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    move-object v1, v3

    .line 44
    nop

    nop

    .line 45
    .local v1, "getParsedData":[I
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
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

    .line 47
    return-object v3

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    return-object v3

    .line 54
    :cond_1
    array-length v4, v1

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 55
    const-string/jumbo v4, "QdioJNI"

    const-string/jumbo v5, "Some Sound Data is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object v3

    .line 58
    :cond_2
    new-instance v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;

    .end local v0    # "ajData":Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    invoke-direct {v0}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;-><init>()V

    .line 59
    .local v0, "ajData":Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_5

    .line 60
    aget v4, v1, v2

    if-lez v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget v4, v1, v4

    if-gtz v4, :cond_4

    .line 61
    :cond_3
    const-string/jumbo v4, "QdioJNI"

    const-string/jumbo v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object v3

    .line 64
    :cond_4
    iget-object v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    .line 67
    iput-object p0, v0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->filename:Ljava/lang/String;

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_5
    return-object v0
.end method

.method public static getAudioDataPositionArray(Ljava/lang/String;)[J
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, v2

    .line 24
    nop

    nop

    .line 25
    .local v0, "getParsedData":[I
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 26
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

    .line 27
    return-object v2

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    return-object v2

    .line 33
    :cond_1
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 34
    const-string/jumbo v3, "QdioJNI"

    const-string/jumbo v4, "Some Sound Data is broken"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-object v2

    .line 37
    :cond_2
    const/4 v2, 0x2

    new-array v1, v2, [J

    .line 38
    .local v1, "ret":[J
    aget v2, v0, v4

    int-to-long v2, v2

    aput-wide v2, v1, v4

    .line 39
    aget v2, v0, v6

    int-to-long v2, v2

    aget-wide v4, v1, v4

    sub-long/2addr v2, v4

    aput-wide v2, v1, v6

    .line 40
    return-object v1
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;I)[B
    .locals 12
    .param p0, "audioJpegData"    # Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    move-object v4, v8

    .line 102
    nop

    nop

    .line 103
    .local v4, "ret":[B
    if-nez p0, :cond_0

    .line 104
    const-string/jumbo v9, "QdioJNI"

    const-string/jumbo v10, "qdioJpegData is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v8

    .line 107
    :cond_0
    iget v9, p0, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->audio_count:I

    if-gt v9, p1, :cond_1

    .line 108
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

    .line 109
    return-object v8

    .line 114
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getStartOffset(I)I

    move-result v5

    .line 116
    .local v5, "startOffset":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$AudioJPEGData;->getLength(I)I

    move-result v9

    add-int v1, v5, v9

    .line 117
    .local v1, "endOffset":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v9

    if-ge v9, v1, :cond_2

    .line 118
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

    .line 119
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 120
    return-object v8

    .line 123
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

    .line 124
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

    .line 125
    sub-int v9, v1, v5

    new-array v4, v9, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-gez v5, :cond_3

    .line 142
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 127
    return-object v8

    .line 129
    :cond_3
    int-to-long v10, v5

    :try_start_1
    invoke-virtual {v2, v10, v11}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 130
    .local v6, "skipCheck":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_4

    .line 142
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 131
    return-object v8

    .line 135
    :cond_4
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 136
    .local v3, "length":I
    if-nez v3, :cond_5

    .line 142
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 137
    return-object v8

    .line 142
    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 144
    .end local v3    # "length":I
    .end local v6    # "skipCheck":J
    :goto_0
    return-object v4

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 142
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 141
    throw v8
.end method

.method public static getAudioStreamBuffer(Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;I)[B
    .locals 12
    .param p0, "qdioJpegData"    # Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    move-object v4, v8

    .line 148
    nop

    nop

    .line 149
    .local v4, "ret":[B
    if-nez p0, :cond_0

    .line 150
    const-string/jumbo v9, "QdioJNI"

    const-string/jumbo v10, "qdioJpegData is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-object v8

    .line 153
    :cond_0
    iget v9, p0, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->audio_count:I

    if-gt v9, p1, :cond_1

    .line 154
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

    .line 155
    return-object v8

    .line 160
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getStartOffset(I)I

    move-result v5

    .line 162
    .local v5, "startOffset":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat$QdioJPEGData;->getLength(I)I

    move-result v9

    add-int v1, v5, v9

    .line 163
    .local v1, "endOffset":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v9

    if-ge v9, v1, :cond_2

    .line 164
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

    .line 165
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 166
    return-object v8

    .line 169
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

    .line 170
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

    .line 171
    sub-int v9, v1, v5

    new-array v4, v9, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    if-gez v5, :cond_3

    .line 188
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 173
    return-object v8

    .line 175
    :cond_3
    int-to-long v10, v5

    :try_start_1
    invoke-virtual {v2, v10, v11}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 176
    .local v6, "skipCheck":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_4

    .line 188
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 177
    return-object v8

    .line 180
    :cond_4
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 181
    .local v3, "length":I
    if-nez v3, :cond_5

    .line 188
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 182
    return-object v8

    .line 188
    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 190
    .end local v3    # "length":I
    .end local v6    # "skipCheck":J
    :goto_0
    return-object v4

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 188
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 187
    throw v8
.end method

.method private static native getNativeVersion()I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    invoke-static {}, Lcom/samsung/android/media/QdioJNI;->getNativeVersion()I

    move-result v0

    .line 210
    .local v0, "native_version":I
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
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 193
    invoke-static {p0}, Lcom/samsung/android/media/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
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

    .line 195
    return v0

    .line 197
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
