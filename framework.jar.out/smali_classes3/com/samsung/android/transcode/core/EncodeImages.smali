.class public Lcom/samsung/android/transcode/core/EncodeImages;
.super Lcom/samsung/android/transcode/core/Encode;
.source "EncodeImages.java"


# static fields
.field private static final TIMEOUT_USEC:J = 0x2710L


# instance fields
.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mCopyAudio:Z

.field private mEncodedOutputDurationMs:J

.field private volatile mEncoding:Z

.field private mFramesPerImage:I

.field private mFramesToWrite:I

.field private mInputFilePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputOrientationDegrees:I

.field private mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field private mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

.field private mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

.field private mStopLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    return-void
.end method

.method public initialize(Ljava/lang/String;IIJ[Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p7, p8, p9}, Lcom/samsung/android/transcode/core/EncodeImages;->setAudioData(Ljava/io/FileDescriptor;II)V

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/transcode/core/EncodeImages;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Ljava/lang/String;IIJ[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p7}, Lcom/samsung/android/transcode/core/EncodeImages;->setAudioData(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/transcode/core/EncodeImages;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    return-void
.end method

.method protected prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_0

    :goto_0
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeImages;->prepareVideoCodecs()V

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    new-instance v0, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Orientation"

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Total frames to be written "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Frames per image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeImages;->prepareAudioCodecs()V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    mul-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    goto :goto_1

    :cond_2
    const/16 v2, 0x5a

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_3
    const/16 v2, 0xb4

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_4
    const/16 v2, 0x10e

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_2
.end method

.method protected prepareAudioCodecs()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Audio input format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "sample-rate"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioSampleRateHZ:I

    const-string/jumbo v6, "channel-count"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioChannelCount:I

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v6, "max-input-size"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioMimeType:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioSampleRateHZ:I

    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioChannelCount:I

    invoke-static {v6, v7, v8}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    if-nez v4, :cond_1

    :goto_1
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioBitRate:I

    const-string/jumbo v7, "bitrate"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioAACProfile:I

    const-string/jumbo v7, "aac-profile"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Audio output format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    if-nez v6, :cond_2

    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Codec initialization error, unable to create Codecs!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v2

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Audio max input size not defined"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "max-input-size"

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    const-string/jumbo v6, "durationUs"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    :cond_3
    return-void
.end method

.method protected prepareVideoCodecs()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputMaxSizeKB:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mSizeFraction:F

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputMaxSizeKB:J

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioBitRate:I

    div-int/lit16 v6, v6, 0x3e8

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoBitRate:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoMimeType:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoBitRate:I

    const-string/jumbo v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    const-string/jumbo v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoIFrameInterval:I

    const-string/jumbo v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v9, v9, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v1, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    new-instance v1, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoPresent:Z

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoBitRate:I

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    goto :goto_1
.end method

.method protected prepare_for_transrewrite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected release()V
    .locals 8

    :try_start_0
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "releasing encoder objects"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    if-nez v6, :cond_1

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    if-nez v6, :cond_2

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    if-nez v6, :cond_3

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    if-nez v6, :cond_4

    :cond_0
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-nez v6, :cond_5

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    if-nez v6, :cond_6

    :goto_5
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v6, :cond_7

    :goto_6
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-nez v6, :cond_8

    :goto_7
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    if-nez v6, :cond_9

    :goto_8
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_a

    :goto_9
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_3
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing output video encoder."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    :cond_2
    :try_start_5
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v6}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_6
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing renderer."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_7
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v6}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v5

    :try_start_8
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing logo renderer."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoPresent:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :cond_5
    :try_start_9
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v6}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    :catch_3
    move-exception v5

    :try_start_a
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing input surface."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    :cond_6
    :try_start_b
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_5

    :catch_4
    move-exception v5

    :try_start_c
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing output audio encoder."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    :cond_7
    :try_start_d
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6

    :catch_5
    move-exception v5

    :try_start_e
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing input audio decoder."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    :cond_8
    :try_start_f
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    :catch_6
    move-exception v5

    :try_start_10
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing audio extractor."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_8

    :cond_a
    :try_start_11
    iget-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-nez v6, :cond_b

    :goto_a
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_9

    :catch_7
    move-exception v5

    :try_start_12
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing muxer."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_9

    :cond_b
    :try_start_13
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->stop()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_a

    :catchall_1
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    throw v1

    :catchall_2
    move-exception v4

    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v4
.end method

.method public setAudioData(Ljava/io/FileDescriptor;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    int-to-long v2, p3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    return-void
.end method

.method public setAudioData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    return-void
.end method

.method public setMaxOutputSize(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputMaxSizeKB:J

    return-void
.end method

.method public setOutputDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    return-void
.end method

.method protected startEncoding()V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v42

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_8

    const/16 v27, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_9

    const/16 v23, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_a

    const/16 v21, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_b

    const/16 v17, 0x0

    :goto_3
    new-instance v41, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v41 .. v41}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v20, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v20 .. v20}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v26, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v26 .. v26}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v28, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_c

    const/16 v29, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_d

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_e

    const/16 v22, 0x1

    :goto_6
    const/16 v40, 0x0

    const/16 v37, -0x1

    const/16 v44, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v34

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    shl-int/lit8 v38, v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoPresent:Z

    if-nez v2, :cond_f

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-virtual {v4, v2, v8, v10}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Ljava/lang/String;II)I

    :cond_0
    if-nez v40, :cond_10

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v2, :cond_11

    :cond_2
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v2, :cond_1e

    :cond_3
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v2, :cond_23

    :cond_4
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_24

    :cond_5
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v2, :cond_45

    :cond_6
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Encoding abruptly stopped."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_7
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v27

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v21

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v17

    goto/16 :goto_3

    :cond_c
    const/16 v29, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v8, v8, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    invoke-virtual {v2, v4, v8, v10}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v2, v2, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v8, v8, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    neg-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v35, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v8, v8, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v36, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    sparse-switch v2, :sswitch_data_0

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    int-to-float v8, v8

    div-float/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v8, v8, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    int-to-float v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v8, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    invoke-virtual {v2, v4, v8}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixScale(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    int-to-float v4, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v8, v10, v11}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixRotate(FFFF)V

    goto/16 :goto_7

    :sswitch_0
    const/high16 v2, -0x40800000    # -1.0f

    mul-float v36, v36, v2

    goto :goto_e

    :sswitch_1
    const/high16 v2, -0x40800000    # -1.0f

    mul-float v35, v35, v2

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v36, v36, v2

    goto :goto_e

    :sswitch_2
    const/high16 v2, -0x40800000    # -1.0f

    mul-float v35, v35, v2

    goto :goto_e

    :cond_10
    if-eqz v22, :cond_1

    goto/16 :goto_d

    :cond_11
    if-nez v40, :cond_2

    if-nez v43, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v41

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v32

    const/4 v2, -0x1

    move/from16 v0, v32

    if-eq v0, v2, :cond_14

    const/4 v2, -0x3

    move/from16 v0, v32

    if-eq v0, v2, :cond_15

    const/4 v2, -0x2

    move/from16 v0, v32

    if-eq v0, v2, :cond_16

    if-ltz v32, :cond_18

    aget-object v39, v42, v32

    if-eqz v39, :cond_19

    move-object/from16 v0, v41

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1a

    :goto_f
    move-object/from16 v0, v41

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_1b

    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v32

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v0, v41

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    move/from16 v0, v44

    if-gt v0, v2, :cond_1d

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "reached video encoder end of stream unexpectedly"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const/16 v40, 0x1

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-nez v2, :cond_12

    goto/16 :goto_8

    :cond_14
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Video encoder output try again later "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_15
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Video encoder output buffer changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v42

    goto/16 :goto_8

    :cond_16
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Video encoder output buffer changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mVideoTrackIndex:I

    if-gez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v43

    goto/16 :goto_8

    :cond_17
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Video encoder output format changed after muxer has started"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Unexpected result from video encoder dequeue output format."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_19
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video encoder OutputBuffer "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " is null"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, v41

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_f

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, v41

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v41

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v41

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mVideoTrackIndex:I

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " bytes to muxer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "TranscodeLib"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_1c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "muxer hasn\'t started. We cannot write video encoder output."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "video endcoder end of stream reached"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    move/from16 v0, v44

    if-ge v0, v2, :cond_3

    if-nez v43, :cond_21

    :cond_1f
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoPresent:Z

    if-nez v2, :cond_22

    :cond_20
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/core/EncodeImages;->computePresentationTimeNsec(I)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending frame "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " to video encoder"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "TranscodeLib"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    add-int/lit8 v44, v44, 0x1

    add-int/lit8 v33, v33, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    move/from16 v0, v33

    if-ne v0, v2, :cond_4

    const/16 v33, 0x0

    add-int/lit8 v2, v30, 0x1

    move/from16 v0, v34

    if-eq v2, v0, :cond_4

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputHeight:I

    invoke-virtual {v4, v2, v8, v10}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Ljava/lang/String;II)I

    goto/16 :goto_a

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-nez v2, :cond_1f

    goto/16 :goto_9

    :cond_22
    rem-int v2, v44, v38

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoFrameRate:I

    if-ge v2, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    goto/16 :goto_12

    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    move/from16 v0, v44

    if-ne v0, v2, :cond_4

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "sending EOS to video encoder"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_a

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v2, :cond_29

    :cond_25
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v2, :cond_31

    :cond_26
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v2, :cond_39

    :cond_27
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v2, :cond_5

    if-nez v22, :cond_5

    if-nez v28, :cond_3c

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v25

    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_3d

    const/4 v2, -0x3

    move/from16 v0, v25

    if-eq v0, v2, :cond_3e

    const/4 v2, -0x2

    move/from16 v0, v25

    if-eq v0, v2, :cond_3f

    if-ltz v25, :cond_41

    aget-object v24, v27, v25

    move-object/from16 v0, v26

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_42

    move-object/from16 v0, v26

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_43

    :goto_16
    move-object/from16 v0, v26

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_44

    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v25

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_b

    :cond_29
    if-nez v29, :cond_25

    if-nez v28, :cond_2b

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v2, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_2c

    aget-object v16, v17, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v46, 0x3e8

    mul-long v10, v10, v46

    cmp-long v2, v6, v10

    if-lez v2, :cond_2d

    const/4 v2, 0x1

    :goto_18
    if-nez v2, :cond_30

    if-gtz v5, :cond_2e

    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v29, 0x0

    :goto_1a
    if-eqz v29, :cond_25

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder sending EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    move v9, v3

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_13

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-nez v2, :cond_2a

    goto/16 :goto_13

    :cond_2c
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder input try again later"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_2d
    const/4 v2, 0x0

    goto :goto_18

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_19

    :cond_2f
    const/16 v29, 0x1

    goto :goto_1a

    :cond_30
    const/16 v29, 0x1

    goto :goto_1a

    :cond_31
    if-nez v15, :cond_26

    const/4 v2, -0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_26

    if-nez v28, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v19

    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_34

    const/4 v2, -0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_35

    const/4 v2, -0x2

    move/from16 v0, v19

    if-eq v0, v2, :cond_36

    if-ltz v19, :cond_37

    move-object/from16 v0, v20

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_38

    move/from16 v37, v19

    goto/16 :goto_14

    :cond_33
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-nez v2, :cond_32

    goto/16 :goto_14

    :cond_34
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder output buffer try again later"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_35
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder: output buffers changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v21

    goto/16 :goto_14

    :cond_36
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder: output format changed: "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_37
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_38
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder: codec config buffer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_14

    :cond_39
    const/4 v2, -0x1

    move/from16 v0, v37

    if-eq v0, v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v2, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    const/4 v2, -0x1

    if-eq v9, v2, :cond_3a

    aget-object v31, v23, v9

    move-object/from16 v0, v20

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v20

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-gez v5, :cond_3b

    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v37

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v37, -0x1

    move-object/from16 v0, v20

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_27

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder: EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    goto/16 :goto_15

    :cond_3a
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder input buffer try again later"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_3b
    aget-object v2, v21, v37

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, v20

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v20

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, v20

    iget v14, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v10, 0x0

    move v11, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1b

    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-nez v2, :cond_28

    goto/16 :goto_b

    :cond_3d
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder output buffer try again later"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_3e
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder: output buffers changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v27

    goto/16 :goto_b

    :cond_3f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioTrackIndex:I

    if-gez v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "audio encoder: output format changed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "TranscodeLib"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_40
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Audio encoder output format changed after muxer is started."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_41
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_42
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v25

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_b

    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioTrackIndex:I

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_16

    :cond_44
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder: EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    goto/16 :goto_17

    :cond_45
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    if-nez v2, :cond_6

    if-eqz v43, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_47

    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mVideoTrackIndex:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v2, :cond_48

    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    invoke-virtual {v2, v4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxerStarted:Z

    goto/16 :goto_c

    :cond_47
    if-nez v28, :cond_46

    goto/16 :goto_c

    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioTrackIndex:I

    goto :goto_1c

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public startTransRewriting()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 5

    const-string/jumbo v3, "TranscodeLib"

    const-string/jumbo v4, "Stop method called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v3, "TranscodeLib"

    const-string/jumbo v4, "Calling wait on stop lock."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "TranscodeLib"

    const-string/jumbo v4, "Stop lock interrupted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
