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
        Lcom/samsung/android/transcode/core/Encode$Logo;,
        Lcom/samsung/android/transcode/core/Encode$RecordingMode;,
        Lcom/samsung/android/transcode/core/Encode$Region;,
        Lcom/samsung/android/transcode/core/Encode$Speed;
    }
.end annotation


# static fields
.field protected static final ENC_FULL_TRANSCODE:I = 0x0

.field protected static final ENC_REWRITE:I = 0x1

.field protected static final ENC_UNABLE_TO_COMPLY:I = -0x1

.field private static final ONE_BILLION:J = 0x3b9aca00L

.field protected static final ORIENTATION_0:I = 0x0

.field protected static final ORIENTATION_180:I = 0xb4

.field protected static final ORIENTATION_270:I = 0x10e

.field protected static final ORIENTATION_90:I = 0x5a

.field protected static final SUPER_SLOW_SPEED_CANCEL:I = 0x9

.field private static final VERSION:Ljava/lang/String; = "2.14"


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

.field protected mSourceFrameRate:I

.field protected mTransRewritable:I

.field protected volatile mUserStop:Z

.field protected mVideoTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x1e

    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    const-string/jumbo v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const v0, 0x1f400

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    const v0, 0xac44

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mSourceFrameRate:I

    return-void
.end method

.method public static getSpeed(I)Lcom/samsung/android/transcode/core/Encode$Speed;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->HALF:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/samsung/android/transcode/core/Encode$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/core/Encode$Speed;

    return-object v0

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
        :pswitch_8
    .end packed-switch
.end method

.method public static getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lcom/samsung/android/transcode/core/Encode$1;->$SwitchMap$com$samsung$android$transcode$core$Encode$Speed:[I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode$Speed;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_5
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x3e000000    # 0.125f

    goto :goto_0

    :pswitch_7
    const/high16 v0, 0x3d800000    # 0.0625f

    goto :goto_0

    :pswitch_8
    const/high16 v0, 0x3d000000    # 0.03125f

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
        :pswitch_8
    .end packed-switch
.end method

.method private printVersionInfo()V
    .locals 2

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Transcode Framework v.2.14"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setLogoData(Landroid/graphics/Bitmap;II)V
    .locals 2

    const/16 v1, 0x14

    new-instance v0, Lcom/samsung/android/transcode/core/Encode$Logo;

    invoke-direct {v0}, Lcom/samsung/android/transcode/core/Encode$Logo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput-object p1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput p2, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput p3, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput v1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iput v1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    return-void
.end method


# virtual methods
.method protected computePresentationTimeNsec(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public encode()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    :try_start_0
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "starting encoder prepartion"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "encoder preparation done."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v8, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v6, v7, v8}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "starting to encode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v6, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "encoding finished."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generated output file size after muxer close "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-eqz v6, :cond_2

    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v6, :cond_6

    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v6}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v0

    :cond_2
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    long-to-double v6, v4

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    iget-wide v8, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    long-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    instance-of v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file size exceeded the max size limit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    const v6, 0x3f333333    # 0.7f

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iput-boolean v13, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    if-lt v6, v11, :cond_4

    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    :goto_4
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v7, 0xb0

    if-eq v6, v7, :cond_5

    :goto_5
    :try_start_2
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "2nd time starting encoder preparation"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "2nd time encoder preparation done."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v8, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v6, v7, v8}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "2nd time starting to encode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "2nd time encoding finished."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "2nd time generated output file size after muxer close "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    goto/16 :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not clean up file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    iput v11, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto/16 :goto_4

    :cond_5
    const/16 v6, 0x80

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v6, 0x60

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v1

    :cond_6
    iget-boolean v6, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "user stopped. Not calling onCompleted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iput-object v12, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "calling onCompleted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v6}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onCompleted()V

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    int-to-float v3, v3

    const v4, 0x3d99999a    # 0.075f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    invoke-direct {p0, v1, v2, v2}, Lcom/samsung/android/transcode/core/Encode;->setLogoData(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/Bitmap;)V
    .locals 3

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    int-to-float v1, v1

    const v2, 0x3d99999a    # 0.075f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/transcode/core/Encode;->setLogoData(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    int-to-float v2, v2

    const v3, 0x3d99999a    # 0.075f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/transcode/core/Encode;->setLogoData(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public setProgressUpdateListener(Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

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

.method public transRewrite()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    :try_start_0
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "starting transRewrite prepartion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare_for_transrewrite()V

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "transRewrite preparation done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "starting transRewrite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startTransRewriting()V

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "transRewrite finished."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v1}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v0

    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Can\'t rewirte"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "user stopped. Not calling onCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "calling onCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v1}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_2
.end method
