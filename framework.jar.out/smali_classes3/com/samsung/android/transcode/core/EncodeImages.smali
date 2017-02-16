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

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    .line 55
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    .line 58
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    .line 61
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    .line 112
    iput p2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    .line 113
    iput p3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    .line 117
    iput-wide p4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    .line 119
    return-void
.end method

.method public initialize(Ljava/lang/String;IIJ[Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p7, p8, p9}, Lcom/samsung/android/transcode/core/EncodeImages;->setAudioData(Ljava/io/FileDescriptor;II)V

    .line 96
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/transcode/core/EncodeImages;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public initialize(Ljava/lang/String;IIJ[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0, p7}, Lcom/samsung/android/transcode/core/EncodeImages;->setAudioData(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/transcode/core/EncodeImages;->initialize(Ljava/lang/String;IIJ[Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    .line 154
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v0, :cond_0

    .line 157
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    .line 161
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    .line 168
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeImages;->prepareVideoCodecs()V

    .line 170
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    .line 172
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "Orientation"

    .line 173
    invoke-virtual {v1, v0, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    .line 174
    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    .line 177
    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    .line 180
    if-eq v0, v1, :cond_4

    :goto_2
    const-string/jumbo v0, "TranscodeLib"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Total frames to be written "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Frames per image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeImages;->prepareAudioCodecs()V

    goto :goto_0

    .line 165
    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    mul-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x5a

    .line 175
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_3
    const/16 v0, 0xb4

    .line 178
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_2

    :cond_4
    const/16 v0, 0x10e

    .line 181
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_2
.end method

.method protected prepareAudioCodecs()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    .line 235
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v2, "TranscodeLib"

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio input format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sample-rate"

    .line 238
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    const-string/jumbo v2, "channel-count"

    .line 239
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    :try_start_0
    const-string/jumbo v2, "max-input-size"

    .line 243
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    iget v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 249
    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v0, "bitrate"

    .line 251
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "aac-profile"

    .line 252
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "TranscodeLib"

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio output format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 256
    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    .line 257
    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 258
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_2

    .line 259
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Codec initialization error, unable to create Codecs!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :catch_0
    move-exception v2

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "Audio max input size not defined"

    .line 246
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "max-input-size"

    .line 250
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 261
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const-string/jumbo v0, "durationUs"

    .line 262
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    .line 264
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

    .prologue
    const/4 v9, 0x0

    .line 196
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 197
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    div-int/lit16 v6, v0, 0x3e8

    iget v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v8, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "color-format"

    const v2, 0x7f000789

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "bitrate"

    .line 210
    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "frame-rate"

    .line 211
    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "i-frame-interval"

    .line 212
    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 214
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 215
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v9, v9, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 217
    new-instance v0, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    .line 220
    new-instance v0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    .line 223
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    if-nez v0, :cond_1

    .line 228
    :goto_1
    return-void

    .line 205
    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/Encode;->suggestBitRate(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    goto :goto_0

    .line 224
    :cond_1
    new-instance v0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    goto :goto_1
.end method

.method protected prepare_for_transrewrite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method protected release()V
    .locals 3

    .prologue
    :try_start_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "releasing encoder objects"

    .line 675
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 688
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    if-nez v0, :cond_2

    .line 698
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    if-nez v0, :cond_3

    .line 708
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    if-nez v0, :cond_4

    .line 716
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-nez v0, :cond_5

    .line 727
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_6

    .line 739
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_7

    .line 750
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_8

    .line 760
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 764
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_a

    .line 779
    :goto_9
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    .line 782
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 785
    return-void

    .line 678
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 679
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 680
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing output video encoder."

    .line 683
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v0

    .line 779
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 781
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    .line 782
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 690
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    const/4 v0, 0x0

    .line 691
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 696
    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing renderer."

    .line 694
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 700
    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    const/4 v0, 0x0

    .line 701
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 706
    :catch_2
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing logo renderer."

    .line 704
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 708
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 711
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 719
    :cond_5
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    const/4 v0, 0x0

    .line 720
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 725
    :catch_3
    move-exception v0

    :try_start_a
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input surface."

    .line 723
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 729
    :cond_6
    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 730
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 731
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_5

    .line 736
    :catch_4
    move-exception v0

    :try_start_c
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing output audio encoder."

    .line 734
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    .line 741
    :cond_7
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 742
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 743
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6

    .line 748
    :catch_5
    move-exception v0

    :try_start_e
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input audio decoder."

    .line 746
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    .line 752
    :cond_8
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 753
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    .line 758
    :catch_6
    move-exception v0

    :try_start_10
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing audio extractor."

    .line 756
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 761
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_8

    .line 766
    :cond_a
    :try_start_11
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v0, :cond_b

    .line 768
    :goto_a
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_9

    .line 775
    :catch_7
    move-exception v0

    :try_start_12
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing muxer."

    .line 773
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_9

    .line 767
    :cond_b
    :try_start_13
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_a

    .line 782
    :catchall_1
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v0
.end method

.method public setAudioData(Ljava/io/FileDescriptor;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    int-to-long v0, p2

    int-to-long v2, p3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    .line 142
    return-void
.end method

.method public setAudioData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    .line 130
    return-void
.end method

.method public setMaxOutputSize(I)V
    .locals 2

    .prologue
    .line 816
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    .line 817
    return-void
.end method

.method public setOutputDuration(J)V
    .locals 1

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    .line 150
    return-void
.end method

.method protected startEncoding()V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v4, :cond_5

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 276
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v4, :cond_6

    const/4 v4, 0x0

    move-object v5, v4

    .line 277
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v4, :cond_7

    const/4 v4, 0x0

    move-object v11, v4

    .line 279
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v4, :cond_8

    const/4 v4, 0x0

    move-object v6, v4

    .line 280
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v4, :cond_9

    const/4 v4, 0x0

    move-object v12, v4

    .line 282
    :goto_3
    new-instance v26, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v26 .. v26}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 283
    new-instance v27, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v27 .. v27}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 284
    new-instance v28, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v28 .. v28}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v24, 0x0

    const/4 v14, 0x0

    .line 291
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v4, :cond_a

    const/4 v4, 0x1

    move v7, v4

    .line 292
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v4, :cond_b

    const/4 v4, 0x1

    move v8, v4

    .line 293
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v4, :cond_c

    const/4 v4, 0x1

    move v9, v4

    .line 296
    :goto_6
    const/4 v13, 0x0

    const/16 v20, -0x1

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 304
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    shl-int/lit8 v30, v4, 0x1

    .line 305
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    if-nez v4, :cond_d

    .line 330
    :goto_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v10, v4, v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Ljava/lang/String;II)I

    move v4, v13

    move/from16 v23, v9

    move/from16 v22, v8

    move v10, v7

    move-object/from16 v21, v6

    move-object/from16 v25, v5

    move/from16 v7, v16

    move-object v5, v14

    move/from16 v8, v17

    move/from16 v9, v18

    move-object v6, v15

    .line 331
    :goto_8
    if-nez v4, :cond_e

    .line 340
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v13, :cond_f

    :cond_1
    :goto_9
    move v13, v4

    move-object v14, v5

    move-object v15, v6

    .line 419
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v4, :cond_1c

    .line 449
    :cond_2
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v4, :cond_23

    :cond_3
    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 456
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v4, :cond_24

    move/from16 v4, v22

    move/from16 v19, v10

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    .line 645
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v7, :cond_49

    .line 654
    :cond_4
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-nez v7, :cond_4d

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v22, v4

    move/from16 v10, v19

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    goto :goto_8

    :cond_5
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Not starting encoding because it is stopped by user."

    .line 271
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 276
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_0

    .line 277
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v11, v4

    goto/16 :goto_1

    .line 279
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v6, v4

    goto/16 :goto_2

    .line 280
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v12, v4

    goto/16 :goto_3

    :cond_a
    const/4 v4, 0x0

    move v7, v4

    .line 291
    goto/16 :goto_4

    :cond_b
    const/4 v4, 0x0

    move v8, v4

    .line 292
    goto/16 :goto_5

    :cond_c
    const/4 v4, 0x0

    move v9, v4

    .line 293
    goto/16 :goto_6

    .line 306
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v4, v10, v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v10, 0x0

    iput-object v10, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    .line 310
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move/from16 v19, v0

    shr-int/lit8 v19, v19, 0x1

    add-int v10, v10, v19

    int-to-float v10, v10

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v10, v10, v19

    sub-float/2addr v4, v10

    neg-float v4, v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    shr-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    div-float v10, v4, v10

    .line 311
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x1

    add-int v19, v19, v21

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v19, v19, v21

    sub-float v4, v4, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    move/from16 v19, v0

    shr-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v4, v4, v19

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 325
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v4}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixTranslate(FF)V

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    int-to-float v10, v10

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v10, v10, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v10, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v19, v19, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v19, v19, v21

    move/from16 v0, v19

    invoke-virtual {v4, v10, v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixScale(FF)V

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    int-to-float v10, v10

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v4, v10, v0, v1, v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixRotate(FFFF)V

    goto/16 :goto_7

    :sswitch_0
    const/high16 v19, -0x40800000    # -1.0f

    .line 315
    mul-float v4, v4, v19

    goto :goto_f

    :sswitch_1
    const/high16 v19, -0x40800000    # -1.0f

    .line 318
    mul-float v10, v10, v19

    const/high16 v19, -0x40800000    # -1.0f

    .line 319
    mul-float v4, v4, v19

    goto :goto_f

    :sswitch_2
    const/high16 v19, -0x40800000    # -1.0f

    .line 322
    mul-float v10, v10, v19

    goto :goto_f

    .line 331
    :cond_e
    if-eqz v23, :cond_0

    .line 662
    :goto_10
    return-void

    .line 340
    :cond_f
    if-nez v4, :cond_1

    if-nez v5, :cond_11

    .line 341
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v14, 0x2710

    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v14, v15}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v13

    const/4 v14, -0x1

    .line 342
    if-eq v13, v14, :cond_12

    const/4 v14, -0x3

    .line 347
    if-eq v13, v14, :cond_13

    const/4 v14, -0x2

    .line 353
    if-eq v13, v14, :cond_14

    .line 365
    if-ltz v13, :cond_16

    .line 371
    aget-object v14, v6, v13

    .line 372
    if-eqz v14, :cond_17

    .line 376
    move-object/from16 v0, v26

    iget v15, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_18

    .line 382
    :goto_11
    move-object/from16 v0, v26

    iget v15, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v15, :cond_19

    .line 396
    :goto_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v15, 0x0

    invoke-virtual {v14, v13, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 398
    move-object/from16 v0, v26

    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    if-gt v9, v4, :cond_1b

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v13, "reached video encoder end of stream unexpectedly"

    .line 404
    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_13
    const/4 v4, 0x1

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    .line 407
    goto/16 :goto_a

    .line 340
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v13, :cond_10

    goto/16 :goto_9

    :cond_12
    const-string/jumbo v13, "TranscodeLib"

    const-string/jumbo v14, "Video encoder output try again later "

    .line 344
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    .line 345
    goto/16 :goto_a

    :cond_13
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v13, "Video encoder output buffer changed"

    .line 349
    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    .line 351
    goto/16 :goto_a

    :cond_14
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v13, "Video encoder output buffer changed"

    .line 355
    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    if-gez v5, :cond_15

    .line 362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    .line 363
    goto/16 :goto_a

    .line 360
    :cond_15
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Video encoder output format changed after muxer has started"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_16
    const-string/jumbo v13, "TranscodeLib"

    const-string/jumbo v14, "Unexpected result from video encoder dequeue output format."

    .line 367
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    .line 368
    goto/16 :goto_a

    .line 373
    :cond_17
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video encoder OutputBuffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_18
    const-string/jumbo v15, "TranscodeLib"

    const-string/jumbo v16, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 378
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    .line 379
    move-object/from16 v0, v26

    iput v15, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_11

    .line 383
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-eqz v15, :cond_1a

    .line 388
    move-object/from16 v0, v26

    iget v15, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v14, v15}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 389
    move-object/from16 v0, v26

    iget v15, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 391
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v14, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string/jumbo v14, "TranscodeLib"

    .line 393
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sent "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " bytes to muxer"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 384
    :cond_1a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "muxer hasn\'t started. We cannot write video encoder output."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1b
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v13, "video endcoder end of stream reached"

    .line 401
    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 419
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    if-ge v9, v4, :cond_2

    if-nez v14, :cond_1f

    :cond_1d
    const/16 v4, 0x4000

    .line 420
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    .line 422
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    if-nez v4, :cond_20

    .line 426
    :cond_1e
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/transcode/core/Encode;->computePresentationTimeNsec(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string/jumbo v4, "TranscodeLib"

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sending frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to video encoder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    .line 436
    add-int/lit8 v9, v9, 0x1

    .line 437
    add-int/lit8 v4, v7, 0x1

    .line 438
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesPerImage:I

    if-eq v4, v5, :cond_21

    move/from16 v16, v4

    move/from16 v17, v8

    move/from16 v18, v9

    goto/16 :goto_c

    .line 419
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_1d

    goto/16 :goto_b

    .line 423
    :cond_20
    rem-int v4, v9, v30

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    if-ge v4, v5, :cond_1e

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    goto :goto_14

    :cond_21
    const/4 v5, 0x0

    .line 440
    add-int/lit8 v4, v8, 0x1

    move/from16 v0, v29

    if-ne v4, v0, :cond_22

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    goto/16 :goto_c

    .line 441
    :cond_22
    add-int/lit8 v6, v8, 0x1

    .line 442
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v4, v8, v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Ljava/lang/String;II)I

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v9

    goto/16 :goto_c

    .line 449
    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mFramesToWrite:I

    if-ne v9, v4, :cond_3

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "sending EOS to video encoder"

    .line 451
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 453
    add-int/lit8 v4, v9, 0x1

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v4

    goto/16 :goto_c

    .line 463
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v4, :cond_2a

    :cond_25
    :goto_15
    move/from16 v19, v10

    .line 501
    :cond_26
    :goto_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v4, :cond_32

    .line 545
    :cond_27
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v4, :cond_3a

    :cond_28
    move/from16 v4, v22

    .line 585
    :goto_18
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z

    if-eqz v5, :cond_3e

    :cond_29
    :goto_19
    move-object/from16 v5, v24

    move-object/from16 v6, v25

    goto/16 :goto_d

    .line 463
    :cond_2a
    if-nez v10, :cond_25

    if-nez v24, :cond_2c

    .line 464
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v4, -0x1

    .line 465
    if-eq v5, v4, :cond_2d

    .line 471
    aget-object v4, v12, v5

    .line 472
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 474
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncodedOutputDurationMs:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    mul-long v32, v32, v34

    cmp-long v4, v8, v32

    if-lez v4, :cond_2e

    const/4 v4, 0x1

    :goto_1a
    if-nez v4, :cond_31

    .line 475
    if-gtz v7, :cond_2f

    .line 479
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v4, 0x0

    :goto_1c
    move/from16 v19, v4

    .line 484
    :goto_1d
    if-eqz v19, :cond_26

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder sending EOS"

    .line 486
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_16

    .line 463
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_2b

    goto :goto_15

    :cond_2d
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder input try again later"

    .line 467
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v10

    .line 468
    goto/16 :goto_16

    .line 474
    :cond_2e
    const/4 v4, 0x0

    goto :goto_1a

    .line 476
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1b

    :cond_30
    const/4 v4, 0x1

    .line 479
    goto :goto_1c

    .line 482
    :cond_31
    const/16 v19, 0x1

    goto :goto_1d

    .line 501
    :cond_32
    if-nez v22, :cond_27

    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_27

    if-nez v24, :cond_34

    .line 502
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    .line 503
    if-eq v4, v5, :cond_35

    const/4 v5, -0x3

    .line 508
    if-eq v4, v5, :cond_36

    const/4 v5, -0x2

    .line 514
    if-eq v4, v5, :cond_37

    .line 520
    if-ltz v4, :cond_38

    .line 527
    move-object/from16 v0, v27

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_39

    move/from16 v20, v4

    .line 534
    goto/16 :goto_17

    .line 501
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_33

    goto/16 :goto_17

    :cond_35
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder output buffer try again later"

    .line 505
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_36
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder: output buffers changed"

    .line 510
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v21, v4

    .line 512
    goto/16 :goto_17

    :cond_37
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder: output format changed: "

    .line 517
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_38
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Unexpected result from audio decoder dequeue output format."

    .line 522
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_39
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio decoder: codec config buffer"

    .line 529
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_17

    :cond_3a
    const/4 v4, -0x1

    .line 545
    move/from16 v0, v20

    if-eq v0, v4, :cond_28

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v4, -0x1

    .line 548
    if-eq v5, v4, :cond_3b

    .line 554
    aget-object v4, v11, v5

    .line 555
    move-object/from16 v0, v27

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 556
    move-object/from16 v0, v27

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 558
    if-gez v7, :cond_3c

    .line 567
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v20, -0x1

    .line 569
    move-object/from16 v0, v27

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3d

    move/from16 v4, v22

    goto/16 :goto_18

    :cond_3b
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio encoder input buffer try again later"

    .line 550
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v22

    .line 551
    goto/16 :goto_18

    .line 559
    :cond_3c
    aget-object v6, v21, v20

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 560
    move-object/from16 v0, v27

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 561
    move-object/from16 v0, v27

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v10, v7

    invoke-virtual {v6, v10}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 v10, 0x0

    .line 563
    invoke-virtual {v4, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 564
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, v27

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1e

    :cond_3d
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder: EOS"

    .line 571
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v4, 0x1

    goto/16 :goto_18

    .line 585
    :cond_3e
    if-nez v23, :cond_29

    if-nez v24, :cond_40

    .line 586
    :cond_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v28

    invoke-virtual {v5, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    const/4 v5, -0x1

    .line 587
    if-eq v6, v5, :cond_41

    const/4 v5, -0x3

    .line 592
    if-eq v6, v5, :cond_42

    const/4 v5, -0x2

    .line 598
    if-eq v6, v5, :cond_43

    .line 608
    if-ltz v6, :cond_45

    .line 614
    aget-object v5, v25, v6

    .line 616
    move-object/from16 v0, v28

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_46

    .line 624
    move-object/from16 v0, v28

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v7, :cond_47

    .line 628
    :goto_1f
    move-object/from16 v0, v28

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_48

    move/from16 v5, v23

    .line 633
    :goto_20
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v23, v5

    move-object/from16 v6, v25

    move-object/from16 v5, v24

    .line 635
    goto/16 :goto_d

    .line 585
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v5, :cond_3f

    goto/16 :goto_19

    :cond_41
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio encoder output buffer try again later"

    .line 589
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    .line 590
    goto/16 :goto_d

    :cond_42
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio encoder: output buffers changed"

    .line 594
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, v24

    .line 596
    goto/16 :goto_d

    .line 599
    :cond_43
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    if-gez v5, :cond_44

    .line 602
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string/jumbo v6, "TranscodeLib"

    .line 604
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "audio encoder: output format changed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, v25

    .line 606
    goto/16 :goto_d

    .line 600
    :cond_44
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Audio encoder output format changed after muxer is started."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_45
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "Unexpected result from audio encoder dequeue output format."

    .line 610
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    .line 611
    goto/16 :goto_d

    :cond_46
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v7, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 618
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    .line 621
    goto/16 :goto_d

    .line 625
    :cond_47
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    move-object/from16 v0, v28

    invoke-virtual {v7, v8, v5, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_1f

    :cond_48
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v7, "audio encoder: EOS"

    .line 630
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v5, 0x1

    goto/16 :goto_20

    .line 645
    :cond_49
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v7, :cond_4

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v7, :cond_4b

    .line 646
    :cond_4a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v14}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 647
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mCopyAudio:Z

    if-nez v7, :cond_4c

    .line 649
    :goto_21
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeImages;->mInputOrientationDegrees:I

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 650
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/media/MediaMuxer;->start()V

    .line 651
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    goto/16 :goto_e

    .line 645
    :cond_4b
    if-nez v5, :cond_4a

    goto/16 :goto_e

    .line 648
    :cond_4c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    goto :goto_21

    :cond_4d
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Encoding abruptly stopped."

    .line 656
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 313
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

    .prologue
    .line 666
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Stop method called"

    .line 791
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mEncoding:Z

    if-eqz v0, :cond_0

    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mUserStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v2, "Calling wait on stop lock."

    .line 800
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 809
    return-void

    .line 796
    :cond_0
    monitor-exit v1

    return-void

    .line 806
    :catch_0
    move-exception v0

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "Stop lock interrupted."

    .line 804
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
