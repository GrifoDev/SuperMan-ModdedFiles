.class public Lcom/samsung/android/transcode/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCodecResource(II)I
    .locals 9

    const/4 v8, 0x1

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "GetCodecResource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    :try_start_0
    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string/jumbo v6, "video/avc"

    invoke-static {v6, p0, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const-string/jumbo v6, "bitrate"

    const v7, 0x1d4c0

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "frame-rate"

    const/16 v7, 0x1e

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "i-frame-interval"

    invoke-virtual {v3, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "color-format"

    const/16 v7, 0x15

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-nez v2, :cond_0

    :goto_0
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v6, -0x1

    return v6

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    const-string/jumbo v7, "max_capacity"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    const-string/jumbo v7, "remained_resource"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "max_capacity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", remained_resource = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can\'t get resource - remained_resource = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-object v0
.end method

.method public static createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-object v0
.end method

.method public static createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-object v0
.end method

.method public static createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v0
.end method

.method public static createExtractor(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/media/MediaExtractor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-object v0
.end method

.method public static createExtractor(Ljava/io/FileDescriptor;)Landroid/media/MediaExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public static createExtractor(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaExtractor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-object v0
.end method

.method public static createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static createMediaMetadataRetriever(Ljava/io/FileDescriptor;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public static createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "createVideoDecoder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p0, p1, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "createVideoDecoder - start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "createVideoDecode configure error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_0
.end method

.method public static fillResolutionRect(ILandroid/graphics/Rect;)V
    .locals 5

    const/16 v4, 0x870

    const/16 v3, 0x2d0

    const/16 v1, 0x1e0

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0xb0

    const/16 v1, 0x90

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x140

    const/16 v1, 0xf0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x280

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v2, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x500

    invoke-virtual {p1, v2, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x5a0

    invoke-virtual {p1, v2, v2, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xf00

    invoke-virtual {p1, v2, v2, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return v0
.end method

.method public static getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return v0
.end method

.method public static getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    :goto_1
    array-length v6, v5

    if-lt v3, v6, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-object v6, v5, v3

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    :goto_1
    array-length v6, v5

    if-lt v3, v6, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-object v6, v5, v3

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private static getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoEncodingBitRate(FJJIII)I
    .locals 9

    const/16 v7, 0x3e8

    const/16 v6, 0x64

    long-to-float v4, p1

    mul-float/2addr v4, p0

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    long-to-float v5, p3

    div-float/2addr v4, v5

    float-to-int v0, v4

    add-int/lit8 v4, p5, 0x2

    sub-int/2addr v0, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    mul-int v4, p6, p7

    div-int/lit16 v3, v4, 0x100

    if-lt v3, v6, :cond_1

    if-gt v3, v6, :cond_2

    :cond_0
    if-gt v3, v7, :cond_3

    :goto_0
    invoke-static/range {p6 .. p7}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v1

    if-lt v0, v2, :cond_4

    if-gt v0, v1, :cond_5

    :goto_1
    return v0

    :cond_1
    const/16 v2, 0x63

    goto :goto_0

    :cond_2
    if-ge v3, v7, :cond_0

    const/16 v2, 0x96

    goto :goto_0

    :cond_3
    const/16 v2, 0x15e

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static isAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v6, "audio/mp4a-latm"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-object v1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_4

    :cond_2
    if-eqz p1, :cond_8

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "OMX.SEC.naac.enc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    :goto_2
    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget-object v6, v5, v4

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const-string/jumbo v6, "OMX.SEC.aac.enc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "OMX.SEC.aac.dec"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    :goto_4
    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget-object v6, v5, v4

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    move-object v1, v0

    goto :goto_5
.end method

.method public static isSupportedCodec(Landroid/media/MediaFormat;)Z
    .locals 2

    const-string/jumbo v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v3, ""

    if-nez p0, :cond_1

    :cond_0
    return v6

    :cond_1
    if-eqz p1, :cond_0

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v4, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "video/mp4"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    :goto_0
    if-nez v4, :cond_4

    :cond_2
    :goto_1
    const/4 v4, 0x0

    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    if-nez v4, :cond_5

    :goto_4
    const/4 v4, 0x0

    :goto_5
    throw v1

    :cond_5
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v6

    goto :goto_5
.end method

.method public static isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z
    .locals 2

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string/jumbo v5, ""

    if-eqz p0, :cond_0

    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "video/mp4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-nez v8, :cond_1

    :goto_0
    if-nez v4, :cond_2

    :goto_1
    if-nez v6, :cond_3

    :goto_2
    const/4 v6, 0x0

    move-object v3, v4

    :goto_3
    return v7

    :cond_0
    return v8

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_4

    :goto_5
    if-nez v6, :cond_5

    :goto_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catchall_0
    move-exception v1

    :goto_7
    if-nez v3, :cond_6

    :goto_8
    if-nez v6, :cond_7

    :goto_9
    const/4 v6, 0x0

    :goto_a
    throw v1

    :cond_6
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_8

    :catch_3
    move-exception v8

    goto :goto_a

    :cond_7
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v3, v4

    goto :goto_7

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_4
.end method

.method private static isVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static scheduleAfter(ILjava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, p0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static suggestBitRate(II)I
    .locals 3

    const/16 v2, 0x1388

    mul-int v0, p0, p1

    const v1, 0x7e9000

    if-ge v0, v1, :cond_0

    const v1, 0x384000

    if-ge v0, v1, :cond_1

    const v1, 0x1fa400

    if-ge v0, v1, :cond_2

    const v1, 0xe1000

    if-ge v0, v1, :cond_3

    const v1, 0x54600

    if-ge v0, v1, :cond_4

    const v1, 0x4b000

    if-ge v0, v1, :cond_5

    const v1, 0x12c00

    if-ge v0, v1, :cond_6

    const/16 v1, 0x118

    return v1

    :cond_0
    const v1, 0x88b8

    return v1

    :cond_1
    const/16 v1, 0x4650

    return v1

    :cond_2
    const/16 v1, 0x32c8

    return v1

    :cond_3
    const/16 v1, 0x1f40

    return v1

    :cond_4
    return v2

    :cond_5
    return v2

    :cond_6
    const/16 v1, 0x200

    return v1
.end method
