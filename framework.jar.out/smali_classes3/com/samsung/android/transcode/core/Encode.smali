.class public abstract Lcom/samsung/android/transcode/core/Encode;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/Encode$BitRate;,
        Lcom/samsung/android/transcode/core/Encode$CodecType;,
        Lcom/samsung/android/transcode/core/Encode$CodecsMime;,
        Lcom/samsung/android/transcode/core/Encode$ContentType;,
        Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;,
        Lcom/samsung/android/transcode/core/Encode$EncodeResolution;,
        Lcom/samsung/android/transcode/core/Encode$Logo;
    }
.end annotation


# static fields
.field protected static final ENC_FULL_TRANSCODE:I = 0x0

.field protected static final ENC_REWRITE:I = 0x1

.field protected static final ENC_TRANS_REWRITE:I = 0x2

.field protected static final ENC_UNABLE_TO_COMPLY:I = -0x1

.field private static final ONE_BILLION:J = 0x3b9aca00L

.field protected static final ORIENTATION_0:I = 0x0

.field protected static final ORIENTATION_180:I = 0xb4

.field protected static final ORIENTATION_270:I = 0x10e

.field protected static final ORIENTATION_90:I = 0x5a

.field private static final VERSION:Ljava/lang/String; = "1.41"


# instance fields
.field protected m2ndTimeEncoding:Z

.field protected mAudioTrackIndex:I

.field protected mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

.field protected mFramesSkipInterval:I

.field protected mInputAudioDecoder:Landroid/media/MediaCodec;

.field protected mInputVideoDecoder:Landroid/media/MediaCodec;

.field protected mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

.field protected mLogoPresent:Z

.field protected mMMSMode:Z

.field protected mMuxer:Landroid/media/MediaMuxer;

.field protected mMuxerStarted:Z

.field protected mOriginalAudioChannelCount:I

.field protected mOutputAudioAACProfile:I

.field protected mOutputAudioBitRate:I

.field protected mOutputAudioChannelCount:I

.field protected mOutputAudioEncoder:Landroid/media/MediaCodec;

.field protected mOutputAudioMimeType:Ljava/lang/String;

.field protected mOutputAudioSampleRateHZ:I

.field protected mOutputFilePath:Ljava/lang/String;

.field protected mOutputFormat:I

.field protected mOutputHeight:I

.field protected mOutputMaxSizeKB:J

.field protected mOutputVideoBitRate:I

.field protected mOutputVideoEncoder:Landroid/media/MediaCodec;

.field protected mOutputVideoFrameRate:I

.field protected mOutputVideoIFrameInterval:I

.field protected mOutputVideoMimeType:Ljava/lang/String;

.field protected mOutputVideoProfile:I

.field protected mOutputWidth:I

.field protected mSizeFraction:F

.field protected mSkipFrames:Z

.field protected mTransRewritable:I

.field protected volatile mUserStop:Z

.field protected mVideoTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    const-string/jumbo v0, "video/avc"

    .line 46
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 48
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    .line 50
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    const-string/jumbo v0, "audio/mp4a-latm"

    .line 53
    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    .line 54
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const v0, 0x1f400

    .line 55
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    .line 56
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    const v0, 0xac44

    .line 57
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    .line 70
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 71
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 78
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    const v0, 0x3f4ccccd    # 0.8f

    .line 80
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    const-wide/16 v0, -0x1

    .line 81
    iput-wide v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    .line 84
    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    .line 86
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    .line 87
    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    .line 88
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    return-void
.end method

.method private printVersionInfo()V
    .locals 2

    .prologue
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Transcode Framework v.1.41"

    .line 488
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method

.method private setLogoData(Landroid/graphics/Bitmap;II)V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 380
    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Logo;

    invoke-direct {v0}, Lcom/samsung/android/transcode/core/Encode$Logo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    .line 381
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput-object p1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    .line 382
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput p2, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    .line 383
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput p3, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    .line 384
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput v1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    .line 385
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput v1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    .line 388
    return-void
.end method


# virtual methods
.method protected computePresentationTimeNsec(I)J
    .locals 4

    .prologue
    .line 265
    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public encode()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    :try_start_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "starting encoder prepartion"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "encoder preparation done."

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "starting to encode"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v0, :cond_1

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "encoding finished."

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 132
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-string/jumbo v1, "TranscodeLib"

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "generated output file size after muxer close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-eqz v1, :cond_2

    .line 192
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v0, :cond_6

    .line 205
    :goto_2
    return-void

    .line 120
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v0

    .line 137
    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    long-to-double v4, v4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    instance-of v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TranscodeLib"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file size exceeded the max size limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 141
    if-eqz v1, :cond_3

    :goto_3
    const v0, 0x3f333333    # 0.7f

    .line 144
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    .line 145
    iput-boolean v11, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    .line 146
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    if-lt v0, v9, :cond_4

    .line 150
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    .line 152
    :goto_4
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_5

    :goto_5
    :try_start_2
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "2nd time starting encoder preparation"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepare()V

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "2nd time encoder preparation done."

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    const/4 v0, -0x1

    .line 169
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    const/4 v0, -0x1

    .line 170
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "2nd time starting to encode"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startEncoding()V

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "2nd time encoding finished."

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V

    .line 186
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-string/jumbo v2, "TranscodeLib"

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "2nd time generated output file size after muxer close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-boolean v8, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v1, "TranscodeLib"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not clean up file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 147
    :cond_4
    iput v9, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto/16 :goto_4

    :cond_5
    const/16 v0, 0x80

    .line 153
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v0, 0x60

    .line 154
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    goto/16 :goto_5

    .line 184
    :catchall_1
    move-exception v0

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V

    throw v0

    .line 193
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "user stopped. Not calling onCompleted"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_6
    iput-object v10, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "calling onCompleted"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_6
.end method

.method protected abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract prepare_for_transrewrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract release()V
.end method

.method public setLogo(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 349
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 350
    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 351
    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    int-to-float v0, v0

    const v2, 0x3d99999a    # 0.075f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 352
    invoke-direct {p0, v1, v0, v0}, Lcom/samsung/android/transcode/core/Encode;->setLogoData(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 374
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    int-to-float v0, v0

    const v1, 0x3d99999a    # 0.075f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 375
    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/transcode/core/Encode;->setLogoData(Landroid/graphics/Bitmap;II)V

    .line 376
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 361
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_0
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    int-to-float v1, v1

    const v2, 0x3d99999a    # 0.075f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 364
    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/transcode/core/Encode;->setLogoData(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public setProgressUpdateListener(Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 259
    return-void
.end method

.method protected abstract startEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startTransRewriting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

.method public suggestBitRate(II)I
    .locals 2

    .prologue
    const/16 v1, 0x1388

    const/16 v0, 0x780

    .line 472
    if-ge p1, v0, :cond_0

    const/16 v0, 0x500

    .line 474
    if-ge p1, v0, :cond_1

    const/16 v0, 0x2d0

    .line 476
    if-ge p1, v0, :cond_2

    const/16 v0, 0x280

    .line 478
    if-ge p1, v0, :cond_3

    const/16 v0, 0x140

    .line 480
    if-ge p1, v0, :cond_4

    const/16 v0, 0x118

    .line 483
    return v0

    :cond_0
    const/16 v0, 0x2710

    .line 473
    return v0

    :cond_1
    const/16 v0, 0x1f40

    .line 475
    return v0

    .line 477
    :cond_2
    return v1

    .line 479
    :cond_3
    return v1

    :cond_4
    const/16 v0, 0x200

    .line 481
    return v0
.end method

.method public transRewrite()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    :try_start_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "starting transRewrite prepartion"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare_for_transrewrite()V

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "transRewrite preparation done."

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    const/4 v0, -0x1

    .line 225
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    const/4 v0, -0x1

    .line 226
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "starting transRewrite"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startTransRewriting()V

    :goto_1
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "transRewrite finished."

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v0, :cond_2

    .line 255
    :goto_2
    return-void

    .line 230
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v0

    .line 233
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 245
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "user stopped. Not calling onCompleted"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_3
    iput-object v3, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "calling onCompleted"

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_3
.end method
