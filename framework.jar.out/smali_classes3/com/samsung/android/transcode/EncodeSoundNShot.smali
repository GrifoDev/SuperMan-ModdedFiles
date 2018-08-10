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

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeImages;-><init>()V

    if-lez p2, :cond_0

    if-lez p3, :cond_1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_3

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/EncodeSoundNShot;->isSoundNShot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p4, p0, Lcom/samsung/android/transcode/EncodeSoundNShot;->mSoundNShotFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object p4, v6, v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/transcode/EncodeSoundNShot;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "File path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "soundNshot path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "File is not Sound and Shot."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeImages;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/transcode/core/Encode$EncodeResolution;->isSupportedResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_2

    invoke-direct {p0, p3}, Lcom/samsung/android/transcode/EncodeSoundNShot;->isSoundNShot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2, v7}, Lcom/samsung/android/transcode/util/CodecsHelper;->fillResolutionRect(ILandroid/graphics/Rect;)V

    iput-object p3, p0, Lcom/samsung/android/transcode/EncodeSoundNShot;->mSoundNShotFilePath:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object p3, v6, v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/transcode/EncodeSoundNShot;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid resolution value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "File path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "soundNshot path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "File is not Sound and Shot."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertSDRDH(I)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static getSEFDataPosition(Ljava/io/File;)Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v24, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;

    invoke-direct/range {v24 .. v24}, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;-><init>()V

    const/4 v8, 0x4

    const/16 v20, 0x100

    const/16 v10, 0x1e

    const/16 v9, 0x15

    const-string/jumbo v16, "SEFT"

    const-string/jumbo v17, "IOBS"

    const/16 v25, 0x0

    const/16 v28, 0x4

    :try_start_0
    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v22, v0

    new-instance v26, Ljava/io/RandomAccessFile;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "rw"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v28

    const-wide/16 v30, 0x4

    sub-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v27

    if-lez v27, :cond_0

    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v28

    if-nez v28, :cond_3

    const/4 v5, 0x0

    if-nez v26, :cond_4

    :goto_0
    return-object v5

    :cond_0
    const/4 v4, 0x0

    if-nez v26, :cond_1

    :goto_1
    return-object v4

    :cond_1
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v28

    const-wide/16 v30, 0x8

    sub-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v28

    add-int/lit8 v18, v28, 0x8

    :goto_2
    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v28

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v19

    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v11

    new-array v12, v11, [I

    new-array v14, v11, [I

    new-array v13, v11, [I

    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    if-lt v0, v11, :cond_5

    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    if-lt v0, v11, :cond_6

    if-nez v26, :cond_9

    :goto_5
    const/16 v28, 0x0

    return-object v28

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v28

    const-wide/16 v30, 0x8

    sub-long v28, v28, v30

    const-wide/16 v30, 0x1e

    sub-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v28

    add-int/lit8 v18, v28, 0x8

    add-int/lit8 v18, v18, 0x1e

    goto :goto_2

    :cond_4
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/transcode/EncodeSoundNShot;->convertSDRDH(I)I

    move-result v28

    aput v28, v12, v23

    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v28

    add-int/lit8 v28, v28, -0x15

    aput v28, v14, v23

    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/transcode/EncodeSoundNShot;->little2big(I)I

    move-result v28

    add-int/lit8 v28, v28, -0x15

    aput v28, v13, v23

    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    :cond_6
    aget v28, v12, v23

    const/16 v29, 0x100

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v28

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    aget v30, v14, v23

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput v0, v1, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->offset:I

    aget v28, v13, v23

    move/from16 v0, v28

    move-object/from16 v1, v24

    iput v0, v1, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->length:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v6, v24

    if-nez v26, :cond_8

    :goto_6
    return-object v24

    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_6

    :cond_9
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_5

    :catchall_0
    move-exception v7

    :goto_7
    if-nez v25, :cond_a

    :goto_8
    throw v7

    :cond_a
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_8

    :catchall_1
    move-exception v7

    move-object/from16 v25, v26

    goto :goto_7
.end method

.method private isSoundNShot(Ljava/lang/String;)Z
    .locals 4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v3, 0x800

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static little2big(I)I
    .locals 2

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x400

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/samsung/android/transcode/EncodeSoundNShot;->mSoundNShotFilePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v2}, Lcom/samsung/android/transcode/EncodeSoundNShot;->getSEFDataPosition(Ljava/io/File;)Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    iget v7, v5, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->offset:I

    iget v8, v5, Lcom/samsung/android/transcode/EncodeSoundNShot$SEFDataPosition;->length:I

    invoke-virtual {p0, v6, v7, v8}, Lcom/samsung/android/transcode/EncodeSoundNShot;->setAudioData(Ljava/io/FileDescriptor;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v4, :cond_0

    move-object v3, v4

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    div-long/2addr v6, v10

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/transcode/EncodeSoundNShot;->setMaxOutputSize(I)V

    invoke-super {p0}, Lcom/samsung/android/transcode/core/EncodeImages;->prepare()V

    return-void

    :cond_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-nez v3, :cond_1

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    div-long/2addr v6, v10

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/transcode/EncodeSoundNShot;->setMaxOutputSize(I)V

    throw v0

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    const/4 v3, 0x0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v4

    move-object v1, v2

    goto :goto_1
.end method
