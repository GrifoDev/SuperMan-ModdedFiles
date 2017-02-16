.class public final Lcom/samsung/android/transcode/EncodeSoundNShot;
.super Lcom/samsung/android/transcode/core/EncodeImages;
.source "EncodeSoundNShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;
    }
.end annotation


# static fields
.field private static final SOUND_PCM_WAV:I = 0x100

.field private static final SOUND_SHOT_INFO:I = 0x800


# instance fields
.field private mSoundNShotFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeImages;-><init>()V

    .line 111
    if-lez p2, :cond_0

    .line 113
    if-lez p3, :cond_1

    .line 116
    if-eqz p1, :cond_2

    .line 119
    if-eqz p4, :cond_3

    .line 122
    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/EncodeSoundNShot;->isSoundNShot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iput-object p4, p0, Lcom/samsung/android/transcode/EncodeSoundNShot;->mSoundNShotFilePath:Ljava/lang/String;

    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    .line 126
    new-array v6, v0, [Ljava/lang/String;

    aput-object p4, v6, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeImages;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    .line 127
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "File path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "soundNshot path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "File is not Sound and Shot."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeImages;-><init>()V

    .line 76
    invoke-static {p2}, Lcom/samsung/android/transcode/core/Encode$EncodeResolution;->isSupportedResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    if-eqz p1, :cond_1

    .line 82
    if-eqz p3, :cond_2

    .line 85
    invoke-direct {p0, p3}, Lcom/samsung/android/transcode/EncodeSoundNShot;->isSoundNShot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 90
    invoke-static {p2, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->fillResolutionRect(ILandroid/graphics/Rect;)V

    .line 91
    iput-object p3, p0, Lcom/samsung/android/transcode/EncodeSoundNShot;->mSoundNShotFilePath:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object p3, v6, v1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeImages;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    .line 93
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid resolution value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "File path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "soundNshot path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "File is not Sound and Shot."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertSDRDH(I)I
    .locals 2

    .prologue
    .line 251
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static getSEFDataPosition(Ljava/io/File;)Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 175
    new-instance v5, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;

    invoke-direct {v5}, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;-><init>()V

    const-string/jumbo v0, "SEFT"

    const-string/jumbo v4, "IOBS"

    const/4 v1, 0x4

    .line 187
    :try_start_0
    new-array v6, v1, [B

    .line 188
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "rw"

    invoke-direct {v1, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 191
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v7

    .line 192
    if-lez v7, :cond_0

    .line 196
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 199
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 238
    if-nez v1, :cond_4

    .line 207
    :goto_0
    return-object v2

    .line 238
    :cond_0
    if-nez v1, :cond_1

    .line 193
    :goto_1
    return-object v2

    .line 239
    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .line 200
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v8, v12

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 201
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    :goto_2
    const/4 v4, 0x4

    .line 210
    new-array v4, v4, [B

    .line 211
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    const-wide/16 v6, 0x0

    .line 212
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 213
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v8, v0

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 214
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 216
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    .line 217
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v6

    .line 219
    new-array v7, v6, [I

    .line 220
    new-array v8, v6, [I

    .line 221
    new-array v9, v6, [I

    move v4, v3

    .line 223
    :goto_3
    if-lt v4, v6, :cond_5

    .line 229
    :goto_4
    if-lt v3, v6, :cond_6

    .line 238
    if-nez v1, :cond_9

    .line 243
    :goto_5
    return-object v2

    .line 203
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v8, v12

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1e

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 204
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 205
    add-int/lit8 v0, v0, 0x1e

    goto :goto_2

    .line 239
    :cond_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 224
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/transcode/EncodeSoundNShot;->convertSDRDH(I)I

    move-result v10

    aput v10, v7, v4

    .line 225
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x15

    aput v10, v8, v4

    .line 226
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x15

    aput v10, v9, v4

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 230
    :cond_6
    aget v4, v7, v3

    const/16 v10, 0x100

    if-eq v4, v10, :cond_7

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 231
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v10, v0

    sub-long/2addr v6, v10

    aget v0, v8, v3

    int-to-long v10, v0

    sub-long/2addr v6, v10

    long-to-int v0, v6

    iput v0, v5, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->offset:I

    .line 232
    aget v0, v9, v3

    iput v0, v5, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->length:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 238
    if-nez v1, :cond_8

    .line 234
    :goto_6
    return-object v5

    .line 239
    :cond_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 238
    :goto_7
    if-nez v1, :cond_a

    .line 239
    :goto_8
    throw v0

    :cond_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7
.end method

.method private isSoundNShot(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 130
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x800

    .line 135
    invoke-static {v1, v2}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static little2big(I)I
    .locals 2

    .prologue
    .line 247
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x400

    const/4 v2, 0x0

    .line 152
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/transcode/EncodeSoundNShot;->mSoundNShotFilePath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    :try_start_2
    invoke-static {v3}, Lcom/samsung/android/transcode/EncodeSoundNShot;->getSEFDataPosition(Ljava/io/File;)Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;

    move-result-object v0

    .line 156
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iget v4, v0, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->offset:I

    iget v0, v0, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->length:I

    invoke-virtual {p0, v2, v4, v0}, Lcom/samsung/android/transcode/core/EncodeImages;->setAudioData(Ljava/io/FileDescriptor;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 159
    if-nez v1, :cond_0

    .line 163
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    div-long/2addr v0, v6

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/transcode/core/EncodeImages;->setMaxOutputSize(I)V

    .line 166
    invoke-super {p0}, Lcom/samsung/android/transcode/core/EncodeImages;->prepare()V

    .line 167
    return-void

    .line 160
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 159
    :goto_1
    if-nez v1, :cond_1

    .line 163
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    div-long/2addr v2, v6

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/core/EncodeImages;->setMaxOutputSize(I)V

    throw v0

    .line 160
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    .line 164
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method
