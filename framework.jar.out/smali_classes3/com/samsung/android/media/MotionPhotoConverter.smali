.class public Lcom/samsung/android/media/MotionPhotoConverter;
.super Ljava/lang/Object;
.source "MotionPhotoConverter.java"


# static fields
.field private static final DEC_2_ENC_QUEUE_CAPACITY:I = 0x4

.field private static final EXTRA_DATA_SIZE:I = 0x10

.field private static final MOTION_PHOTO_DATA:I = 0xa30

.field private static final TAG:Ljava/lang/String; = "MotionPhotoConverter"

.field private static final TARGET_CODEC_AVC_VIDEO_MIME:Ljava/lang/String; = "video/avc"

.field private static final TARGET_FHD_BITRATE:I = 0xb71b00

.field private static final TARGET_HD_BITRATE:I = 0x7a1200

.field private static final TARGET_I_FRAME_INTERVAL:I = 0x1

.field private static final TARGET_QHD_BITRATE:I = 0x112a880

.field private static final TARGET_UHD_BITRATE:I = 0x2160ec0

.field private static final TARGET_UNDER_HD_BITRATE:I = 0x5b8d80

.field private static mInstance:Lcom/samsung/android/media/MotionPhotoConverter;


# instance fields
.field mDecoder:Landroid/media/MediaCodec;

.field mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field mDecoderHandler:Landroid/os/Handler;

.field mDecoderThread:Landroid/os/HandlerThread;

.field mEncVideoTrackIndex:I

.field mEncoder:Landroid/media/MediaCodec;

.field mEncoderHandler:Landroid/os/Handler;

.field mEncoderStopped:Z

.field mEncoderThread:Landroid/os/HandlerThread;

.field final mEncoderWorkerLock:Ljava/lang/Object;

.field mExifOrientation:I

.field mFrameRate:I

.field mHeight:I

.field final mLock:Ljava/lang/Object;

.field mOutMuxer:Landroid/media/MediaMuxer;

.field mOutMuxerStarted:Z

.field mOutSharePath:Ljava/lang/String;

.field mRotationDegrees:I

.field mSelectedColorFormat:I

.field mSrcExtractor:Landroid/media/MediaExtractor;

.field mSrcPath:Ljava/lang/String;

.field mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    return-void
.end method

.method private createMatchedCodec()I
    .locals 15

    const v14, 0x7f420888

    const/4 v13, 0x0

    const/4 v12, -0x1

    iput v12, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    :try_start_0
    const-string/jumbo v9, "video/avc"

    invoke-static {v9}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    const-string/jumbo v9, "video/avc"

    invoke-virtual {v2, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    const-string/jumbo v9, "video/avc"

    invoke-static {v9}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v6

    const-string/jumbo v9, "video/avc"

    invoke-virtual {v6, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    const/4 v7, 0x0

    :goto_0
    iget-object v9, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v9, v9

    if-ge v7, v9, :cond_3

    iget v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    if-ne v9, v12, :cond_3

    iget-object v9, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v5, v9, v7

    if-eq v5, v14, :cond_1

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v9, v9

    if-ge v8, v9, :cond_1

    iget v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    if-ne v9, v12, :cond_1

    iget-object v9, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v9, v8

    if-eq v1, v14, :cond_0

    if-ne v5, v1, :cond_0

    iput v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    const-string/jumbo v9, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "we found matched color format(0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") for en/decoder"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    iput-object v13, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    iput-object v13, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    :cond_3
    iget v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    if-ne v9, v12, :cond_4

    const-string/jumbo v9, "MotionPhotoConverter"

    const-string/jumbo v10, "we did not find matched color format"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_4
    const/4 v9, 0x0

    return v9
.end method

.method private decodeMp4()Z
    .locals 23

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa30

    :try_start_0
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getKeyNameArray(Ljava/io/File;I)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v2, v17, v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v2, "MotionPhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Do not exist sef data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v14, 0x0

    :try_start_1
    new-instance v15, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-direct {v15, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-wide v4, v8, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    iget-wide v6, v8, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    new-instance v11, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    invoke-direct {v11, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v15, :cond_1

    :try_start_3
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v19

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    const-string/jumbo v2, "mime"

    invoke-virtual {v12, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "video/"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v9, v18

    move-object/from16 v21, v12

    const/16 v20, 0x1

    :cond_2
    if-nez v20, :cond_5

    const-string/jumbo v2, "MotionPhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Do not exist video track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :pswitch_0
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v14, v15

    :goto_3
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v14, :cond_1

    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_1
    const/16 v2, 0xb4

    :try_start_8
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object v14, v15

    :goto_4
    if-eqz v14, :cond_3

    :try_start_9
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_3
    :goto_5
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :pswitch_2
    const/16 v2, 0x5a

    :try_start_b
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    goto/16 :goto_0

    :pswitch_3
    const/16 v2, 0x10e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v10

    :try_start_c
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/MotionPhotoConverter;->createMatchedCodec()I

    move-result v2

    if-gez v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_6
    const-string/jumbo v2, "mime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v2, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    const-string/jumbo v2, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    const-string/jumbo v2, "frame-rate"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    const-string/jumbo v2, "color-format"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    if-gtz v2, :cond_8

    :cond_7
    const-string/jumbo v2, "MotionPhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    if-lez v2, :cond_7

    const-string/jumbo v2, "MotionPhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Find video track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", rotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", exif rotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v9}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/samsung/android/media/MotionPhotoConverter$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/media/MotionPhotoConverter$1;-><init>(Lcom/samsung/android/media/MotionPhotoConverter;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/MotionPhotoConverter;->encodeMp4()Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "MotionPhotoConverter"

    const-string/jumbo v3, "can not start encoder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_9
    const/4 v2, 0x1

    return v2

    :catchall_1
    move-exception v2

    goto/16 :goto_4

    :catch_5
    move-exception v10

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private deinit()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_6

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    :cond_9
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "MotionPhotoConverter"

    const-string/jumbo v3, "decoder: occur IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string/jumbo v2, "MotionPhotoConverter"

    const-string/jumbo v3, "encoder: occur IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private encodeMp4()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "video/avc"

    iget v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    iget v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v2, "bitrate"

    iget v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    iget v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/media/MotionPhotoConverter;->getTargetBitrate(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "frame-rate"

    iget v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "i-frame-interval"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "color-format"

    iget v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "profile"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    new-instance v2, Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/samsung/android/media/MotionPhotoConverter$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/media/MotionPhotoConverter$2;-><init>(Lcom/samsung/android/media/MotionPhotoConverter;)V

    iget-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v7, v7, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    return v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v5
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/media/MotionPhotoConverter;
    .locals 2

    const-class v1, Lcom/samsung/android/media/MotionPhotoConverter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/media/MotionPhotoConverter;->mInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/MotionPhotoConverter;

    invoke-direct {v0}, Lcom/samsung/android/media/MotionPhotoConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/media/MotionPhotoConverter;->mInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    :cond_0
    sget-object v0, Lcom/samsung/android/media/MotionPhotoConverter;->mInstance:Lcom/samsung/android/media/MotionPhotoConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTargetBitrate(II)I
    .locals 3

    const v2, 0x2160ec0

    mul-int v0, p1, p2

    const v1, 0xe1000

    if-gt v0, v1, :cond_0

    const v0, 0x7a1200

    return v0

    :cond_0
    mul-int v0, p1, p2

    const v1, 0x1fa400

    if-gt v0, v1, :cond_1

    const v0, 0xb71b00

    return v0

    :cond_1
    mul-int v0, p1, p2

    const v1, 0x384000

    if-gt v0, v1, :cond_2

    const v0, 0x112a880

    return v0

    :cond_2
    mul-int v0, p1, p2

    const v1, 0x7e9000

    if-gt v0, v1, :cond_3

    return v2

    :cond_3
    return v2
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    iput v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    iput v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    iput-boolean v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderStopped:Z

    iput-boolean v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    iput v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    iput v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    iput v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MotionPhotoConverterDecoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MotionPhotoConverterEncoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private stopShare()V
    .locals 3

    const-string/jumbo v1, "MotionPhotoConverter"

    const-string/jumbo v2, "stopShare enter"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    const-string/jumbo v1, "MotionPhotoConverter"

    const-string/jumbo v2, "stopShare leave"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public declared-synchronized convertToMP4_Sync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 54

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "srcPath: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " outPath: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v46, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v6, 0xa30

    :try_start_2
    move-object/from16 v0, v46

    invoke-static {v0, v6}, Lcom/samsung/android/media/SemExtendedFormat;->getKeyNameArray(Ljava/io/File;I)[Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    array-length v6, v0

    if-lez v6, :cond_1

    const/4 v6, 0x0

    aget-object v6, v47, v6

    move-object/from16 v0, v46

    invoke-static {v0, v6}, Lcom/samsung/android/media/SemExtendedFormat;->getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    move-result-object v18

    if-nez v18, :cond_0

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Do not exist sef data: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v42, 0x0

    :try_start_4
    new-instance v43, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    const-string/jumbo v10, "r"

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual/range {v43 .. v43}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    new-instance v27, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "Orientation"

    const/4 v10, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    packed-switch v6, :pswitch_data_0

    :goto_0
    if-eqz v43, :cond_1

    :try_start_6
    invoke-virtual/range {v43 .. v43}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :goto_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v49

    const/16 v20, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v48, 0x0

    :goto_2
    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v28

    const-string/jumbo v6, "mime"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mime: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "video/"

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move/from16 v20, v48

    move-object/from16 v52, v28

    move-object/from16 v53, v31

    const/16 v51, 0x1

    :cond_2
    if-nez v51, :cond_5

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Do not exist video track "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_0
    move-exception v22

    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :pswitch_0
    const/4 v6, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v21

    move-object/from16 v42, v43

    :goto_4
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v42, :cond_1

    :try_start_b
    invoke-virtual/range {v42 .. v42}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v21

    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v21

    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :pswitch_1
    const/16 v6, 0xb4

    :try_start_e
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    move-object/from16 v42, v43

    :goto_5
    if-eqz v42, :cond_3

    :try_start_f
    invoke-virtual/range {v42 .. v42}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_3
    :goto_6
    :try_start_10
    throw v6
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :pswitch_2
    const/16 v6, 0x5a

    :try_start_11
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    goto/16 :goto_0

    :pswitch_3
    const/16 v6, 0x10e

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    :catch_4
    move-exception v21

    :try_start_12
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_5
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_6

    :cond_4
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_2

    :cond_5
    :try_start_13
    const-string/jumbo v6, "mime"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v6, "width"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    const-string/jumbo v6, "height"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    const-string/jumbo v6, "frame-rate"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Find video track "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", w: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", h: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", rotation: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v53 .. v53}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v6, v10, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v37

    const-string/jumbo v6, "width"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v39

    const-string/jumbo v6, "height"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v38

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    move-object/from16 v0, v53

    invoke-static {v0, v6, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v26

    const-string/jumbo v6, "bitrate"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/samsung/android/media/MotionPhotoConverter;->getTargetBitrate(II)I

    move-result v10

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "frame-rate"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "i-frame-interval"

    const/4 v10, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "color-format"

    const v10, 0x7f420888

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static/range {v53 .. v53}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v50

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6, v10, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual/range {v50 .. v50}, Landroid/media/MediaCodec;->start()V

    new-instance v6, Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v6, v10, v12}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    const-wide/16 v32, 0x3e8

    const-wide/16 v40, 0x3e8

    const/16 v44, 0x0

    const/16 v45, 0x0

    new-instance v19, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v23, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v23 .. v23}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_6
    :goto_7
    if-eqz v44, :cond_7

    if-eqz v45, :cond_7

    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "decoding completed!"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual/range {v50 .. v50}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual/range {v50 .. v50}, Landroid/media/MediaCodec;->release()V

    const/16 v50, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->stop()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->release()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    goto/16 :goto_3

    :cond_7
    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "input Buffer ID: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v5, :cond_8

    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v29

    if-eqz v29, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    const/4 v10, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    const-wide/16 v8, 0x0

    if-gtz v7, :cond_f

    const/16 v44, 0x1

    const/4 v7, 0x0

    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "saw input eos!!"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    if-eqz v44, :cond_10

    const/4 v10, 0x4

    :goto_9
    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v44, :cond_8

    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "advance next data"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    move-result v17

    :cond_8
    :goto_a
    move-object/from16 v0, v19

    move-wide/from16 v1, v40

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v35

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "output Buffer ID: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v35, :cond_16

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "output Buffer presentationTimeUs: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v19

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", size: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v19

    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_9

    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "saw output eos"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v45, 0x1

    :cond_9
    move/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v34

    :cond_a
    :goto_b
    move-object/from16 v0, v50

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "encoder input Buffer ID: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v11, :cond_d

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v30

    if-eqz v30, :cond_b

    invoke-virtual/range {v30 .. v30}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    :cond_b
    if-eqz v30, :cond_c

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_c
    move-object/from16 v0, v19

    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v19

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-eqz v45, :cond_12

    const/16 v16, 0x4

    :goto_c
    const/4 v12, 0x0

    move-object/from16 v10, v50

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_d
    move-object/from16 v0, v50

    move-object/from16 v1, v23

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v36

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "encoder output Buffer ID: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v36, :cond_13

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "encoder output Buffer presentationTimeUs: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v23

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", size: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v23

    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v50

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v6, v10, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v6, 0x0

    move/from16 v0, v35

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "input presentationTimeUs: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_11
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "input buffer is null!!"

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_13
    const/4 v6, -0x1

    move/from16 v0, v36

    if-ne v0, v6, :cond_14

    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "encoder: INFO_TRY_AGAIN_LATER"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_14
    const/4 v6, -0x2

    move/from16 v0, v36

    if-ne v0, v6, :cond_a

    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "encoder: INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    if-eqz v6, :cond_15

    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v10, "Format changed twice!"

    invoke-direct {v6, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_15
    invoke-virtual/range {v50 .. v50}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v25

    const-string/jumbo v6, "MotionPhotoConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "encoder output formate changed: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->start()V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    goto/16 :goto_b

    :cond_16
    const/4 v6, -0x2

    move/from16 v0, v35

    if-ne v0, v6, :cond_17

    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_17
    const/4 v6, -0x1

    move/from16 v0, v35

    if-ne v0, v6, :cond_6

    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "INFO_TRY_AGAIN_LATER"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_7

    :catchall_2
    move-exception v6

    goto/16 :goto_5

    :catch_6
    move-exception v21

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized convertToMp4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/media/MotionPhotoConverter;->init()V

    invoke-direct {p0}, Lcom/samsung/android/media/MotionPhotoConverter;->decodeMp4()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderStopped:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    monitor-exit v2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/media/MotionPhotoConverter;->deinit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method
