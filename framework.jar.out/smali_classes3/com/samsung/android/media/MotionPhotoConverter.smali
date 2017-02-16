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

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private createMatchedCodec()I
    .locals 15

    .prologue
    const v14, 0x7f420888

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 750
    iput v12, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    .line 753
    :try_start_0
    const-string/jumbo v9, "video/avc"

    invoke-static {v9}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    .line 754
    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 755
    .local v2, "decInfo":Landroid/media/MediaCodecInfo;
    const-string/jumbo v9, "video/avc"

    invoke-virtual {v2, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 757
    .local v0, "decCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const-string/jumbo v9, "video/avc"

    invoke-static {v9}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    .line 758
    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 759
    .local v6, "encInfo":Landroid/media/MediaCodecInfo;
    const-string/jumbo v9, "video/avc"

    invoke-virtual {v6, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    .line 765
    .local v4, "encCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v9, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v9, v9

    if-ge v7, v9, :cond_3

    iget v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    if-ne v9, v12, :cond_3

    .line 766
    iget-object v9, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v5, v9, v7

    .line 767
    .local v5, "encColorFormat":I
    if-eq v5, v14, :cond_1

    .line 768
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    iget-object v9, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v9, v9

    if-ge v8, v9, :cond_1

    iget v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    if-ne v9, v12, :cond_1

    .line 769
    iget-object v9, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v9, v8

    .line 770
    .local v1, "decColorFormat":I
    if-eq v1, v14, :cond_0

    .line 771
    if-ne v5, v1, :cond_0

    .line 772
    iput v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    .line 773
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

    .line 768
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 765
    .end local v1    # "decColorFormat":I
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 779
    .end local v0    # "decCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "decInfo":Landroid/media/MediaCodecInfo;
    .end local v4    # "encCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v5    # "encColorFormat":I
    .end local v6    # "encInfo":Landroid/media/MediaCodecInfo;
    .end local v7    # "i":I
    :catch_0
    move-exception v3

    .line 780
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 781
    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v9, :cond_2

    .line 782
    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    .line 783
    iput-object v13, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    .line 786
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v9, :cond_3

    .line 787
    iget-object v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    .line 788
    iput-object v13, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    .line 792
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    iget v9, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    if-ne v9, v12, :cond_4

    .line 793
    const-string/jumbo v9, "MotionPhotoConverter"

    const-string/jumbo v10, "we did not find matched color format"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return v12

    .line 796
    :cond_4
    const/4 v9, 0x0

    return v9
.end method

.method private decodeMp4()Z
    .locals 23

    .prologue
    .line 408
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v16, "sefFile":Ljava/io/File;
    const/16 v2, 0xa30

    :try_start_0
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getKeyNameArray(Ljava/io/File;I)[Ljava/lang/String;

    move-result-object v17

    .line 411
    .local v17, "sefKeyName":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v2, v0

    if-lez v2, :cond_1

    .line 413
    const/4 v2, 0x0

    aget-object v2, v17, v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    move-result-object v8

    .line 414
    .local v8, "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    if-nez v8, :cond_0

    .line 415
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

    .line 416
    const/4 v2, 0x0

    return v2

    .line 418
    :cond_0
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 420
    const/4 v14, 0x0

    .line 422
    .local v14, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v15, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-direct {v15, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 423
    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .local v15, "raf":Ljava/io/RandomAccessFile;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-wide v4, v8, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    iget-wide v6, v8, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 430
    new-instance v11, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    invoke-direct {v11, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 431
    .local v11, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I

    .line 432
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 454
    :goto_0
    if-eqz v15, :cond_1

    .line 455
    :try_start_3
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 467
    .end local v8    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    .end local v17    # "sefKeyName":[Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v19

    .line 468
    .local v19, "tracks":I
    const/4 v9, 0x0

    .line 469
    .local v9, "decVideoTrackIndex":I
    const/16 v20, 0x0

    .line 470
    .local v20, "videoExist":Z
    const/16 v21, 0x0

    .line 473
    .local v21, "videoFormat":Landroid/media/MediaFormat;
    const/16 v18, 0x0

    .local v18, "trackIndex":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    .line 477
    .local v12, "format":Landroid/media/MediaFormat;
    const-string/jumbo v2, "mime"

    invoke-virtual {v12, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 479
    .local v13, "mime":Ljava/lang/String;
    const-string/jumbo v2, "video/"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    move/from16 v9, v18

    .line 481
    move-object/from16 v21, v12

    .line 482
    .local v21, "videoFormat":Landroid/media/MediaFormat;
    const/16 v20, 0x1

    .line 487
    .end local v12    # "format":Landroid/media/MediaFormat;
    .end local v13    # "mime":Ljava/lang/String;
    .end local v21    # "videoFormat":Landroid/media/MediaFormat;
    :cond_2
    if-nez v20, :cond_5

    .line 488
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

    .line 489
    const/4 v2, 0x0

    return v2

    .line 435
    .end local v9    # "decVideoTrackIndex":I
    .end local v18    # "trackIndex":I
    .end local v19    # "tracks":I
    .end local v20    # "videoExist":Z
    .restart local v8    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .restart local v11    # "exif":Landroid/media/ExifInterface;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v17    # "sefKeyName":[Ljava/lang/String;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 450
    .end local v11    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    move-object v14, v15

    .line 451
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 454
    if-eqz v14, :cond_1

    .line 455
    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 458
    :catch_1
    move-exception v10

    .line 459
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 463
    .end local v8    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "sefKeyName":[Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 464
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 439
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v8    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .restart local v11    # "exif":Landroid/media/ExifInterface;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    .restart local v17    # "sefKeyName":[Ljava/lang/String;
    :pswitch_1
    const/16 v2, 0xb4

    :try_start_8
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 452
    .end local v11    # "exif":Landroid/media/ExifInterface;
    :catchall_0
    move-exception v2

    move-object v14, v15

    .line 454
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    :goto_4
    if-eqz v14, :cond_3

    .line 455
    :try_start_9
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 452
    :cond_3
    :goto_5
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 443
    .restart local v11    # "exif":Landroid/media/ExifInterface;
    .restart local v15    # "raf":Ljava/io/RandomAccessFile;
    :pswitch_2
    const/16 v2, 0x5a

    :try_start_b
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    goto/16 :goto_0

    .line 447
    :pswitch_3
    const/16 v2, 0x10e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 458
    :catch_3
    move-exception v10

    .line 459
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 458
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .end local v15    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v10

    .line 459
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    .line 473
    .end local v8    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "sefKeyName":[Ljava/lang/String;
    .restart local v9    # "decVideoTrackIndex":I
    .restart local v12    # "format":Landroid/media/MediaFormat;
    .restart local v13    # "mime":Ljava/lang/String;
    .restart local v18    # "trackIndex":I
    .restart local v19    # "tracks":I
    .restart local v20    # "videoExist":Z
    .local v21, "videoFormat":Landroid/media/MediaFormat;
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 492
    .end local v12    # "format":Landroid/media/MediaFormat;
    .end local v13    # "mime":Ljava/lang/String;
    .end local v21    # "videoFormat":Landroid/media/MediaFormat;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/MotionPhotoConverter;->createMatchedCodec()I

    move-result v2

    if-gez v2, :cond_6

    .line 493
    const/4 v2, 0x0

    return v2

    .line 496
    :cond_6
    const-string/jumbo v2, "mime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 497
    .local v22, "videoMime":Ljava/lang/String;
    const-string/jumbo v2, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    .line 498
    const-string/jumbo v2, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    .line 499
    const-string/jumbo v2, "frame-rate"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    .line 501
    const-string/jumbo v2, "color-format"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 503
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    if-gtz v2, :cond_8

    .line 504
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

    .line 505
    const/4 v2, 0x0

    return v2

    .line 503
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    if-lez v2, :cond_7

    .line 508
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

    .line 509
    const-string/jumbo v4, ", Bitrate: "

    .line 508
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 509
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    .line 508
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 509
    const-string/jumbo v4, ", rotation: "

    .line 508
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 509
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    .line 508
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 510
    const-string/jumbo v4, ", exif rotation: "

    .line 508
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 510
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I

    .line 508
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v9}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/samsung/android/media/MotionPhotoConverter$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/media/MotionPhotoConverter$1;-><init>(Lcom/samsung/android/media/MotionPhotoConverter;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    .line 520
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/media/MotionPhotoConverter;->encodeMp4()Z

    move-result v2

    if-nez v2, :cond_9

    .line 609
    const-string/jumbo v2, "MotionPhotoConverter"

    const-string/jumbo v3, "can not start encoder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v2, 0x0

    return v2

    .line 614
    :cond_9
    const/4 v2, 0x1

    return v2

    .line 452
    .end local v9    # "decVideoTrackIndex":I
    .end local v18    # "trackIndex":I
    .end local v19    # "tracks":I
    .end local v20    # "videoExist":Z
    .end local v22    # "videoMime":Ljava/lang/String;
    .restart local v8    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .restart local v17    # "sefKeyName":[Ljava/lang/String;
    :catchall_1
    move-exception v2

    goto/16 :goto_4

    .line 450
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 432
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

    .prologue
    const/4 v4, 0x0

    .line 821
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 822
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 823
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    .line 827
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 829
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    .line 836
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_2

    .line 838
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 843
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 844
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder:Landroid/media/MediaCodec;

    .line 847
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_3

    .line 848
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 849
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    .line 852
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 853
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 854
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    .line 857
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_5

    .line 858
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 860
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 864
    :goto_2
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    .line 867
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_6

    .line 869
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 874
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 875
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    .line 878
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_8

    .line 879
    iget-boolean v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    if-eqz v2, :cond_7

    .line 880
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    .line 882
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 883
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    .line 886
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v2, :cond_9

    .line 887
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 888
    iput-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    .line 820
    :cond_9
    return-void

    .line 830
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 839
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "MotionPhotoConverter"

    const-string/jumbo v3, "decoder: occur IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 861
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 862
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 870
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 871
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "MotionPhotoConverter"

    const-string/jumbo v3, "encoder: occur IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private encodeMp4()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 618
    const-string/jumbo v2, "video/avc"

    iget v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    iget v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 619
    .local v1, "encVideoFormat":Landroid/media/MediaFormat;
    const-string/jumbo v2, "bitrate"

    iget v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    iget v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/media/MotionPhotoConverter;->getTargetBitrate(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 620
    const-string/jumbo v2, "frame-rate"

    iget v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 621
    const-string/jumbo v2, "i-frame-interval"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 622
    const-string/jumbo v2, "color-format"

    iget v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 623
    const-string/jumbo v2, "profile"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 626
    :try_start_0
    new-instance v2, Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    .line 627
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    .line 628
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/samsung/android/media/MotionPhotoConverter$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/media/MotionPhotoConverter$2;-><init>(Lcom/samsung/android/media/MotionPhotoConverter;)V

    .line 729
    iget-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    .line 634
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 730
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v7, v7, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 731
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 733
    return v6

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 631
    return v5
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/media/MotionPhotoConverter;
    .locals 2

    .prologue
    const-class v1, Lcom/samsung/android/media/MotionPhotoConverter;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/samsung/android/media/MotionPhotoConverter;->mInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/samsung/android/media/MotionPhotoConverter;

    invoke-direct {v0}, Lcom/samsung/android/media/MotionPhotoConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/media/MotionPhotoConverter;->mInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    .line 88
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
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v2, 0x2160ec0

    .line 737
    mul-int v0, p1, p2

    const v1, 0xe1000

    if-gt v0, v1, :cond_0

    .line 738
    const v0, 0x7a1200

    return v0

    .line 739
    :cond_0
    mul-int v0, p1, p2

    const v1, 0x1fa400

    if-gt v0, v1, :cond_1

    .line 740
    const v0, 0xb71b00

    return v0

    .line 741
    :cond_1
    mul-int v0, p1, p2

    const v1, 0x384000

    if-gt v0, v1, :cond_2

    .line 742
    const v0, 0x112a880

    return v0

    .line 743
    :cond_2
    mul-int v0, p1, p2

    const v1, 0x7e9000

    if-gt v0, v1, :cond_3

    .line 744
    return v2

    .line 746
    :cond_3
    return v2
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 800
    iput v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    .line 801
    iput v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    .line 802
    iput v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    .line 803
    iput-boolean v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderStopped:Z

    .line 804
    iput-boolean v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    .line 805
    iput v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    .line 806
    iput v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSelectedColorFormat:I

    .line 807
    iput v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    .line 809
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MotionPhotoConverterDecoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    .line 810
    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 811
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoderHandler:Landroid/os/Handler;

    .line 813
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MotionPhotoConverterEncoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    .line 814
    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 815
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderHandler:Landroid/os/Handler;

    .line 817
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    .line 799
    return-void
.end method

.method private stopShare()V
    .locals 3

    .prologue
    .line 893
    const-string/jumbo v1, "MotionPhotoConverter"

    const-string/jumbo v2, "stopShare enter"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 899
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 901
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 902
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "file":Ljava/io/File;
    :cond_1
    monitor-exit v2

    .line 907
    const-string/jumbo v1, "MotionPhotoConverter"

    const-string/jumbo v2, "stopShare leave"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void

    .line 899
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public declared-synchronized convertToMP4_Sync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 54
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    .line 125
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    .line 126
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

    .line 137
    :try_start_1
    new-instance v46, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .local v46, "sefFile":Ljava/io/File;
    const/16 v6, 0xa30

    :try_start_2
    move-object/from16 v0, v46

    invoke-static {v0, v6}, Lcom/samsung/android/media/SemExtendedFormat;->getKeyNameArray(Ljava/io/File;I)[Ljava/lang/String;

    move-result-object v47

    .line 140
    .local v47, "sefKeyName":[Ljava/lang/String;
    move-object/from16 v0, v47

    array-length v6, v0

    if-lez v6, :cond_1

    .line 142
    const/4 v6, 0x0

    aget-object v6, v47, v6

    move-object/from16 v0, v46

    invoke-static {v0, v6}, Lcom/samsung/android/media/SemExtendedFormat;->getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    move-result-object v18

    .line 143
    .local v18, "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    if-nez v18, :cond_0

    .line 144
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

    .line 145
    return-void

    .line 147
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

    .line 149
    const/16 v42, 0x0

    .line 151
    .local v42, "raf":Ljava/io/RandomAccessFile;
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

    .line 152
    .end local v42    # "raf":Ljava/io/RandomAccessFile;
    .local v43, "raf":Ljava/io/RandomAccessFile;
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

    .line 159
    new-instance v27, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 160
    .local v27, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v6, "Orientation"

    const/4 v10, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I

    .line 161
    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mExifOrientation:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    packed-switch v6, :pswitch_data_0

    .line 183
    :goto_0
    if-eqz v43, :cond_1

    .line 184
    :try_start_6
    invoke-virtual/range {v43 .. v43}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    .end local v18    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .end local v27    # "exif":Landroid/media/ExifInterface;
    .end local v43    # "raf":Ljava/io/RandomAccessFile;
    .end local v47    # "sefKeyName":[Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v49

    .line 197
    .local v49, "tracks":I
    const/16 v20, 0x0

    .line 198
    .local v20, "decVideoTrackIndex":I
    const/16 v51, 0x0

    .line 199
    .local v51, "videoExist":Z
    const/16 v52, 0x0

    .line 200
    .local v52, "videoFormat":Landroid/media/MediaFormat;
    const/16 v53, 0x0

    .line 202
    .local v53, "videoMime":Ljava/lang/String;
    const/16 v48, 0x0

    .local v48, "trackIndex":I
    :goto_2
    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v28

    .line 206
    .local v28, "format":Landroid/media/MediaFormat;
    const-string/jumbo v6, "mime"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 208
    .local v31, "mime":Ljava/lang/String;
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

    .line 210
    const-string/jumbo v6, "video/"

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    move/from16 v20, v48

    .line 212
    move-object/from16 v52, v28

    .line 213
    .local v52, "videoFormat":Landroid/media/MediaFormat;
    move-object/from16 v53, v31

    .line 214
    .local v53, "videoMime":Ljava/lang/String;
    const/16 v51, 0x1

    .line 219
    .end local v28    # "format":Landroid/media/MediaFormat;
    .end local v31    # "mime":Ljava/lang/String;
    .end local v52    # "videoFormat":Landroid/media/MediaFormat;
    .end local v53    # "videoMime":Ljava/lang/String;
    :cond_2
    if-nez v51, :cond_5

    .line 220
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

    .line 221
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 402
    .end local v20    # "decVideoTrackIndex":I
    .end local v46    # "sefFile":Ljava/io/File;
    .end local v48    # "trackIndex":I
    .end local v49    # "tracks":I
    .end local v51    # "videoExist":Z
    :catch_0
    move-exception v22

    .line 403
    .local v22, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v22    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit p0

    .line 123
    return-void

    .line 164
    .restart local v18    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .restart local v27    # "exif":Landroid/media/ExifInterface;
    .restart local v43    # "raf":Ljava/io/RandomAccessFile;
    .restart local v46    # "sefFile":Ljava/io/File;
    .restart local v47    # "sefKeyName":[Ljava/lang/String;
    :pswitch_0
    const/4 v6, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 179
    .end local v27    # "exif":Landroid/media/ExifInterface;
    :catch_1
    move-exception v21

    .local v21, "e":Ljava/io/IOException;
    move-object/from16 v42, v43

    .line 180
    .end local v43    # "raf":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 183
    if-eqz v42, :cond_1

    .line 184
    :try_start_b
    invoke-virtual/range {v42 .. v42}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 187
    :catch_2
    move-exception v21

    .line 188
    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 192
    .end local v18    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .end local v21    # "e":Ljava/io/IOException;
    .end local v47    # "sefKeyName":[Ljava/lang/String;
    :catch_3
    move-exception v21

    .line 193
    .restart local v21    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .end local v21    # "e":Ljava/io/IOException;
    .end local v46    # "sefFile":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 168
    .restart local v18    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .restart local v27    # "exif":Landroid/media/ExifInterface;
    .restart local v43    # "raf":Ljava/io/RandomAccessFile;
    .restart local v46    # "sefFile":Ljava/io/File;
    .restart local v47    # "sefKeyName":[Ljava/lang/String;
    :pswitch_1
    const/16 v6, 0xb4

    :try_start_e
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_0

    .line 181
    .end local v27    # "exif":Landroid/media/ExifInterface;
    :catchall_1
    move-exception v6

    move-object/from16 v42, v43

    .line 183
    .end local v43    # "raf":Ljava/io/RandomAccessFile;
    :goto_5
    if-eqz v42, :cond_3

    .line 184
    :try_start_f
    invoke-virtual/range {v42 .. v42}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 181
    :cond_3
    :goto_6
    :try_start_10
    throw v6
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 172
    .restart local v27    # "exif":Landroid/media/ExifInterface;
    .restart local v43    # "raf":Ljava/io/RandomAccessFile;
    :pswitch_2
    const/16 v6, 0x5a

    :try_start_11
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    goto/16 :goto_0

    .line 176
    :pswitch_3
    const/16 v6, 0x10e

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    .line 187
    :catch_4
    move-exception v21

    .line 188
    .restart local v21    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 187
    .end local v21    # "e":Ljava/io/IOException;
    .end local v27    # "exif":Landroid/media/ExifInterface;
    .end local v43    # "raf":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v21

    .line 188
    .restart local v21    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_6

    .line 202
    .end local v18    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .end local v21    # "e":Ljava/io/IOException;
    .end local v47    # "sefKeyName":[Ljava/lang/String;
    .restart local v20    # "decVideoTrackIndex":I
    .restart local v28    # "format":Landroid/media/MediaFormat;
    .restart local v31    # "mime":Ljava/lang/String;
    .restart local v48    # "trackIndex":I
    .restart local v49    # "tracks":I
    .restart local v51    # "videoExist":Z
    .local v52, "videoFormat":Landroid/media/MediaFormat;
    .local v53, "videoMime":Ljava/lang/String;
    :cond_4
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_2

    .line 224
    .end local v28    # "format":Landroid/media/MediaFormat;
    .end local v31    # "mime":Ljava/lang/String;
    .end local v52    # "videoFormat":Landroid/media/MediaFormat;
    .end local v53    # "videoMime":Ljava/lang/String;
    :cond_5
    :try_start_13
    const-string/jumbo v6, "mime"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 227
    .local v53, "videoMime":Ljava/lang/String;
    const-string/jumbo v6, "width"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    .line 228
    const-string/jumbo v6, "height"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    .line 229
    const-string/jumbo v6, "frame-rate"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    .line 232
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 234
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

    .line 235
    const-string/jumbo v12, ", rotation: "

    .line 234
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 235
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    .line 234
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static/range {v53 .. v53}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 241
    .local v4, "videoDecoder":Landroid/media/MediaCodec;
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v6, v10, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 243
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v37

    .line 245
    .local v37, "outputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v6, "width"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v39

    .line 246
    .local v39, "outputWidth":I
    const-string/jumbo v6, "height"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v38

    .line 249
    .local v38, "outputHeight":I
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 256
    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mHeight:I

    move-object/from16 v0, v53

    invoke-static {v0, v6, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v26

    .line 257
    .local v26, "encVideoFormat":Landroid/media/MediaFormat;
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

    .line 258
    const-string/jumbo v6, "frame-rate"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mFrameRate:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 259
    const-string/jumbo v6, "i-frame-interval"

    const/4 v10, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 260
    const-string/jumbo v6, "color-format"

    const v10, 0x7f420888

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 262
    invoke-static/range {v53 .. v53}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v50

    .line 263
    .local v50, "videoEncoder":Landroid/media/MediaCodec;
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6, v10, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 264
    invoke-virtual/range {v50 .. v50}, Landroid/media/MediaCodec;->start()V

    .line 266
    new-instance v6, Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v6, v10, v12}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    .line 267
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    .line 268
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    .line 273
    const-wide/16 v32, 0x3e8

    .line 274
    .local v32, "inputTimeoutUs":J
    const-wide/16 v40, 0x3e8

    .line 275
    .local v40, "outputTimeoutUs":J
    const/16 v44, 0x0

    .line 276
    .local v44, "sawInputEOS":Z
    const/16 v45, 0x0

    .line 277
    .local v45, "sawOutputEOS":Z
    new-instance v19, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 278
    .local v19, "decBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    new-instance v23, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v23 .. v23}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 281
    .local v23, "encBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_6
    :goto_7
    if-eqz v44, :cond_7

    if-eqz v45, :cond_7

    .line 282
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "decoding completed!"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 389
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 390
    const/4 v4, 0x0

    .line 392
    .local v4, "videoDecoder":Landroid/media/MediaCodec;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 393
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    .line 395
    invoke-virtual/range {v50 .. v50}, Landroid/media/MediaCodec;->stop()V

    .line 396
    invoke-virtual/range {v50 .. v50}, Landroid/media/MediaCodec;->release()V

    .line 397
    const/16 v50, 0x0

    .line 399
    .local v50, "videoEncoder":Landroid/media/MediaCodec;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->stop()V

    .line 400
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->release()V

    .line 401
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    goto/16 :goto_3

    .line 292
    .local v4, "videoDecoder":Landroid/media/MediaCodec;
    .local v50, "videoEncoder":Landroid/media/MediaCodec;
    :cond_7
    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 294
    .local v5, "inputBufferId":I
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

    .line 295
    if-ltz v5, :cond_8

    .line 296
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v29

    .line 298
    .local v29, "inputBuffer":Ljava/nio/ByteBuffer;
    if-eqz v29, :cond_11

    .line 299
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    const/4 v10, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 300
    .local v7, "sampleSize":I
    const-wide/16 v8, 0x0

    .line 301
    .local v8, "presentationTimeUs":J
    if-gtz v7, :cond_f

    .line 302
    const/16 v44, 0x1

    .line 303
    const/4 v7, 0x0

    .line 304
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "saw input eos!!"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_8
    if-eqz v44, :cond_10

    const/4 v10, 0x4

    .line 310
    :goto_9
    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 313
    if-nez v44, :cond_8

    .line 314
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "advance next data"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    move-result v17

    .line 322
    .end local v7    # "sampleSize":I
    .end local v8    # "presentationTimeUs":J
    .end local v29    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_8
    :goto_a
    move-object/from16 v0, v19

    move-wide/from16 v1, v40

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v35

    .line 323
    .local v35, "outputBufferId":I
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

    .line 324
    if-ltz v35, :cond_16

    .line 325
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

    .line 326
    move-object/from16 v0, v19

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_9

    .line 327
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "saw output eos"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/16 v45, 0x1

    .line 331
    :cond_9
    move/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v34

    .line 335
    .local v34, "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_a
    :goto_b
    move-object/from16 v0, v50

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11

    .line 336
    .local v11, "inputEncBufferId":I
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

    .line 338
    if-ltz v11, :cond_d

    .line 339
    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v30

    .line 340
    .local v30, "inputEncBuffer":Ljava/nio/ByteBuffer;
    if-eqz v30, :cond_b

    .line 341
    invoke-virtual/range {v30 .. v30}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 343
    :cond_b
    if-eqz v30, :cond_c

    .line 344
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 346
    :cond_c
    move-object/from16 v0, v19

    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v19

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 347
    if-eqz v45, :cond_12

    const/16 v16, 0x4

    .line 346
    :goto_c
    const/4 v12, 0x0

    move-object/from16 v10, v50

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 350
    .end local v30    # "inputEncBuffer":Ljava/nio/ByteBuffer;
    :cond_d
    move-object/from16 v0, v50

    move-object/from16 v1, v23

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v36

    .line 351
    .local v36, "outputEncBufferId":I
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

    .line 352
    if-ltz v36, :cond_13

    .line 353
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

    .line 355
    move-object/from16 v0, v50

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    .line 357
    .local v24, "encOutputBuffer":Ljava/nio/ByteBuffer;
    if-eqz v24, :cond_e

    .line 358
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v6, v10, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 361
    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 381
    const/4 v6, 0x0

    move/from16 v0, v35

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_7

    .line 306
    .end local v11    # "inputEncBufferId":I
    .end local v24    # "encOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v34    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v35    # "outputBufferId":I
    .end local v36    # "outputEncBufferId":I
    .restart local v7    # "sampleSize":I
    .restart local v8    # "presentationTimeUs":J
    .restart local v29    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 307
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

    .line 311
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 318
    .end local v7    # "sampleSize":I
    .end local v8    # "presentationTimeUs":J
    :cond_11
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "input buffer is null!!"

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 347
    .end local v29    # "inputBuffer":Ljava/nio/ByteBuffer;
    .restart local v11    # "inputEncBufferId":I
    .restart local v30    # "inputEncBuffer":Ljava/nio/ByteBuffer;
    .restart local v34    # "outputBuffer":Ljava/nio/ByteBuffer;
    .restart local v35    # "outputBufferId":I
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_c

    .line 363
    .end local v30    # "inputEncBuffer":Ljava/nio/ByteBuffer;
    .restart local v36    # "outputEncBufferId":I
    :cond_13
    const/4 v6, -0x1

    move/from16 v0, v36

    if-ne v0, v6, :cond_14

    .line 364
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "encoder: INFO_TRY_AGAIN_LATER"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 365
    :cond_14
    const/4 v6, -0x2

    move/from16 v0, v36

    if-ne v0, v6, :cond_a

    .line 366
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "encoder: INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    if-eqz v6, :cond_15

    .line 369
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v10, "Format changed twice!"

    invoke-direct {v6, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 371
    :cond_15
    invoke-virtual/range {v50 .. v50}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v25

    .line 372
    .local v25, "encOutputFormat":Landroid/media/MediaFormat;
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

    .line 375
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    .line 376
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->start()V

    .line 377
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    goto/16 :goto_b

    .line 382
    .end local v11    # "inputEncBufferId":I
    .end local v25    # "encOutputFormat":Landroid/media/MediaFormat;
    .end local v34    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v36    # "outputEncBufferId":I
    :cond_16
    const/4 v6, -0x2

    move/from16 v0, v35

    if-ne v0, v6, :cond_17

    .line 383
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 384
    :cond_17
    const/4 v6, -0x1

    move/from16 v0, v35

    if-ne v0, v6, :cond_6

    .line 385
    const-string/jumbo v6, "MotionPhotoConverter"

    const-string/jumbo v10, "INFO_TRY_AGAIN_LATER"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_7

    .line 181
    .end local v4    # "videoDecoder":Landroid/media/MediaCodec;
    .end local v5    # "inputBufferId":I
    .end local v19    # "decBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v20    # "decVideoTrackIndex":I
    .end local v23    # "encBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v26    # "encVideoFormat":Landroid/media/MediaFormat;
    .end local v32    # "inputTimeoutUs":J
    .end local v35    # "outputBufferId":I
    .end local v37    # "outputFormat":Landroid/media/MediaFormat;
    .end local v38    # "outputHeight":I
    .end local v39    # "outputWidth":I
    .end local v40    # "outputTimeoutUs":J
    .end local v44    # "sawInputEOS":Z
    .end local v45    # "sawOutputEOS":Z
    .end local v48    # "trackIndex":I
    .end local v49    # "tracks":I
    .end local v50    # "videoEncoder":Landroid/media/MediaCodec;
    .end local v51    # "videoExist":Z
    .end local v53    # "videoMime":Ljava/lang/String;
    .restart local v18    # "dataPos":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .restart local v47    # "sefKeyName":[Ljava/lang/String;
    :catchall_2
    move-exception v6

    goto/16 :goto_5

    .line 179
    .restart local v42    # "raf":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v21

    .restart local v21    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .line 161
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
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 96
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcPath:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mOutSharePath:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/media/MotionPhotoConverter;->init()V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/media/MotionPhotoConverter;->decodeMp4()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderStopped:Z

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    monitor-exit v2

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/media/MotionPhotoConverter;->deinit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 95
    return-void

    .line 105
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
